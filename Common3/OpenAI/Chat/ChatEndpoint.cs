using OpenAI.Extensions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

namespace OpenAI.Chat
{
    /// <summary>
    /// Given a chat conversation, the model will return a chat completion response.<br/>
    /// <see href="https://platform.openai.com/docs/api-reference/chat"/>
    /// </summary>
    public sealed class ChatEndpoint : BaseEndPoint
    {
        /// <inheritdoc />
        public ChatEndpoint(OpenAIClient client) : base(client) { }

        /// <inheritdoc />
        protected override string Root { get { return "chat"; } }

        /// <summary>
        /// Creates a completion for the chat message
        /// </summary>
        /// <param name="chatRequest">The chat request which contains the message content.</param>
        /// <param name="cancellationToken">Optional, <see cref="CancellationToken"/>.</param>
        /// <returns><see cref="ChatResponse"/>.</returns>
        public async Task<ChatResponse> GetCompletionAsync(ChatRequest chatRequest, CancellationToken cancellationToken = default(CancellationToken))
        {
            var jsonContent = Newtonsoft.Json.JsonConvert.SerializeObject(chatRequest, OpenAIClient.jsonSerializationOptions).ToJsonStringContent(EnableDebug);
            var response = await client.client.PostAsync(GetUrl("/completions"), jsonContent, cancellationToken).ConfigureAwait(false);
            var responseAsString = await response.ReadAsStringAsync(EnableDebug, cancellationToken).ConfigureAwait(false);
            return response.Deserialize<ChatResponse>(responseAsString, client);
        }

        /// <summary>
        /// Created a completion for the chat message and stream the results to the <paramref name="resultHandler"/> as they come in.
        /// </summary>
        /// <param name="chatRequest">The chat request which contains the message content.</param>
        /// <param name="resultHandler">An action to be called as each new result arrives.</param>
        /// <param name="cancellationToken">Optional, <see cref="CancellationToken"/>.</param>
        /// <returns><see cref="ChatResponse"/>.</returns>
        public Task<ChatResponse> StreamCompletionAsync(ChatRequest chatRequest, Action<ChatResponse> resultHandler, CancellationToken cancellationToken = default(CancellationToken))
        {
            chatRequest.Stream = true;
            var jsonContent = Newtonsoft.Json.JsonConvert.SerializeObject(chatRequest, OpenAIClient.jsonSerializationOptions).ToJsonStringContent(EnableDebug);
            using (var request = new HttpRequestMessage(HttpMethod.Post, GetUrl("/completions")))
            {
                request.Content = jsonContent;

                return client.client.SendAsync(request, HttpCompletionOption.ResponseHeadersRead, cancellationToken)
                    .ContinueWith(responseTask =>
                    {
                        var response = responseTask.Result;
                        response.CheckResponseAsync(cancellationToken).ConfigureAwait(false).GetAwaiter().GetResult();
                        using (var stream = response.Content.ReadAsStreamAsync().ConfigureAwait(false).GetAwaiter().GetResult())
                        using (var reader = new StreamReader(stream))
                        {
                            ChatResponse chatResponse = null;
                            string streamData;

                            while ((streamData = reader.ReadLineAsync().ConfigureAwait(false).GetAwaiter().GetResult()) != null)
                            {
                                cancellationToken.ThrowIfCancellationRequested();

                                string eventData;
                                if (!streamData.TryGetEventStreamData(out eventData))
                                    continue;

                                if (string.IsNullOrWhiteSpace(eventData))
                                    continue;

                                if (EnableDebug)
                                {
                                    Console.WriteLine(eventData);
                                }

                                var partialResponse = response.Deserialize<ChatResponse>(eventData, client);

                                if (chatResponse == null)
                                {
                                    chatResponse = new ChatResponse(partialResponse);
                                }
                                else
                                {
                                    chatResponse.CopyFrom(partialResponse);
                                }

                                if (resultHandler != null)
                                {
                                    resultHandler(partialResponse);
                                }
                            }

                            response.EnsureSuccessStatusCode();

                            if (chatResponse == null)
                                return null;

                            chatResponse.SetResponseData(response.Headers, client);
                            if (resultHandler != null)
                            {
                                resultHandler(chatResponse);
                            }
                            return chatResponse;
                        }
                    });
            }
        }
        /// <summary>
        /// Created a completion for the chat message and stream the results as they come in.<br/>
        /// If you are not using C# 8 supporting IAsyncEnumerable{T} or if you are using the .NET Framework,
        /// you may need to use <see cref="StreamCompletionAsync(ChatRequest, Action{ChatResponse}, CancellationToken)"/> instead.
        /// </summary>
        /// <param name="chatRequest">The chat request which contains the message content.</param>
        /// <param name="cancellationToken">Optional, <see cref="CancellationToken"/>.</param>
        /// <returns><see cref="ChatResponse"/>.</returns>
        //public async IAsyncEnumerable<ChatResponse> StreamCompletionEnumerableAsync(ChatRequest chatRequest, [EnumeratorCancellation] CancellationToken cancellationToken = default(CancellationToken))
        //{
        //    chatRequest.Stream = true;
        //    var jsonContent = Newtonsoft.Json.JsonConvert.SerializeObject(chatRequest, OpenAIClient.jsonSerializationOptions).ToJsonStringContent(EnableDebug);
        //    using var request = new HttpRequestMessage(HttpMethod.Post, GetUrl("/completions"));
        //    request.Content = jsonContent;
        //    var response = await client.client.SendAsync(request, HttpCompletionOption.ResponseHeadersRead, cancellationToken).ConfigureAwait(false);
        //    await response.CheckResponseAsync(cancellationToken).ConfigureAwait(false);
        //    await using var stream = await response.Content.ReadAsStreamAsync(cancellationToken).ConfigureAwait(false);
        //    using var reader = new StreamReader(stream);
        //    ChatResponse chatResponse = null;

        //    while (await reader.ReadLineAsync() is { } streamData)
        //    {
        //        cancellationToken.ThrowIfCancellationRequested();

        //        if (!streamData.TryGetEventStreamData(out var eventData)) { continue; }
        //        if (string.IsNullOrWhiteSpace(eventData)) { continue; }

        //        if (EnableDebug)
        //        {
        //            Console.WriteLine(eventData);
        //        }

        //        var partialResponse = response.Deserialize<ChatResponse>(eventData, client);

        //        if (chatResponse == null)
        //        {
        //            chatResponse = new ChatResponse(partialResponse);
        //        }
        //        else
        //        {
        //            chatResponse.CopyFrom(partialResponse);
        //        }

        //        yield return partialResponse;
        //    }

        //    response.EnsureSuccessStatusCode();

        //    if (chatResponse == null) { yield break; }

        //    chatResponse.SetResponseData(response.Headers, client);
        //    yield return chatResponse;
        //}
    }
}

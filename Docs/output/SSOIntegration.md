
#
 SSO INTEGRATION GUIDE Microsoft Azure(Office 365 i.e. work/school account and private hotmail/live/outlook id) In order to integrate Microsoft's Identity System with your application, you need to be an Microsoft Azure Active Directory Tenant. Office 365 subscriber is already a tenant by default. The detail for becoming a tenant can be found here Azure Active Directory Tenant To utilize Azure AD SSO, you need a client ID/secret that is configured in the Azure AD portal the detail can be found here Configure Azure AD authentication for your website(SSO) Replace the clientID/secret in web.config key AzureAPIClientId and AzureAPISecret. The REDIRECT URI when configuring Azure AD (and AzureAPIRedirectUrl in web.config) must be http://localhost/ro/myaccount.aspx, just replace localhost with the actual domain where the application is reachable Windows Authentication In order to enable Windows Authentication, there needs to be changed to the IIS authentication setup for your application. You have to enable 'Windows Authentication' in addition to the 'Forms Authentication'. Then set the web.config key TrustedLoginFederationUrl to 'integrated'. The app pool also needs to be 'integrated' rather than 'classic' Google In order to enable google SSO, you have to acquire a proper client Id to utilize Google API serice(in this case OAuth 2.0). go to here for detail after you have created the client ID, place the value in the web.config key GoogleClientId The source domain uri must be properly configured in the google API portal in order for it to work SSO INTEGRATION GUIDE When configuring the source domain uri, it needs to be in full domain form(i.e. something like abc.domain and not simple abc or localhost) as the service is intended to be for external facing website Facebook In order to use Facebook Sign In, you need to create a Facebook App Id via Facebook's Developer portal, the detail is here go to here for detail after creating the App ID, place the value in the web.config key FacebookAppId. you also need to enable OAuth (i.e. facebook login) the source domain must be properly configured in the Facebook Developer API portal in order for it to work when configuring the source domain uri, it needs to be in full domain form (i.e. something like abc.domain and not simple abc or localhost) as the service is intended to be for external facing website Linking third party identity(above) to Rintagi Login After enabling the above SSO sign in option, you still need to associate the identity to local Rintagi login user, it can be done manually populating the UsrProvider or use the 'link to ...' buttons in my account profile screen 
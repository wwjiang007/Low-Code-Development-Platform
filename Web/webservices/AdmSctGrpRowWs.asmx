<%@ WebService Language="C#" Class="RO.Web.AdmSctGrpRowWs" %>
namespace RO.Web
{
    using System;
    using System.Data;
    using System.Web;
    using System.Web.Services;
    using RO.Facade3;
    using RO.Common3;
    using RO.Common3.Data;
    using RO.Rule3;
    using RO.Web;
    using System.Xml;
    using System.Collections;
    using System.IO;
    using System.Text;
    using System.Web.Script.Services;
    using System.Text.RegularExpressions;
    using System.Collections.Generic;
    using System.Web.SessionState;
    using System.Linq;
    using System.Numerics;

            
    public class AdmSctGrpRow1004 : DataSet
    {
        public AdmSctGrpRow1004()
        {

            this.Tables.Add(MakeColumns(new DataTable("AdmSctGrpRow")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmSctGrpRowDef")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmSctGrpRowAdd")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmSctGrpRowUpd")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmSctGrpRowDel")));
            this.DataSetName = "AdmSctGrpRow1004";
            this.Namespace = "http://Rintagi.com/DataSet/AdmSctGrpRow1004";
        }

        private DataTable MakeColumns(DataTable dt)
        {
            DataColumnCollection columns = dt.Columns;
            columns.Add("SctGrpRowId1283", typeof(string));
            columns.Add("SectionCd1283", typeof(string));
            columns.Add("GroupRowId1283", typeof(string));
            columns.Add("SctGrpRowCss1283", typeof(string));
            return dt;
        }

        private DataTable MakeDtlColumns(DataTable dt)
        {
            DataColumnCollection columns = dt.Columns;
            columns.Add("SctGrpRowId1283", typeof(string));

            return dt;
        }
    }
            
    [ScriptService()]
    [WebService(Namespace = "http://Rintagi.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public partial class AdmSctGrpRowWs : RO.Web.AsmxBase
    {
        const int screenId = 1004;
        const byte systemId = 3;
        const string programName = "AdmSctGrpRow1004";

        protected override byte GetSystemId() { return systemId; }
        protected override int GetScreenId() { return screenId; }
        protected override string GetProgramName() { return programName; }
        protected override string GetValidateMstIdSPName() { return "GetLisAdmSctGrpRow1004"; }
        protected override string GetMstTableName(bool underlying = true) { return "SctGrpRow"; }
        protected override string GetDtlTableName(bool underlying = true) { return ""; }
        protected override string GetMstKeyColumnName(bool underlying = false) { return underlying ? "SctGrpRowId" : "SctGrpRowId1283"; }
        protected override string GetDtlKeyColumnName(bool underlying = false) { return underlying ? "" : ""; }
            
        Dictionary<string, SerializableDictionary<string, string>> ddlContext = new Dictionary<string, SerializableDictionary<string, string>>() {
            {"SectionCd1283", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlSectionCd3S3146"},{"mKey","SectionCd1283"},{"mVal","SectionCd1283Text"}, }},
            {"GroupRowId1283", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlGroupRowId3S3147"},{"mKey","GroupRowId1283"},{"mVal","GroupRowId1283Text"}, }},
        };

        private DataRow MakeTypRow(DataRow dr)
        {
            dr["SctGrpRowId1283"] = System.Data.OleDb.OleDbType.Numeric.ToString();


            return dr;
        }

        private DataRow MakeDisRow(DataRow dr)
        {
            dr["SctGrpRowId1283"] = "TextBox";


            return dr;
        }

        private DataRow MakeColRow(DataRow dr, SerializableDictionary<string, string> drv, string keyId, bool bAdd)
        {
            dr["SctGrpRowId1283"] = keyId;

            DataTable dtAuth = _GetAuthCol(screenId);
            if (dtAuth != null)
            {


            }
            return dr;
        }

        private AdmSctGrpRow1004 PrepAdmSctGrpRowData(SerializableDictionary<string, string> mst, List<SerializableDictionary<string, string>> dtl, bool bAdd)
        {
            AdmSctGrpRow1004 ds = new AdmSctGrpRow1004();
            DataRow dr = ds.Tables["AdmSctGrpRow"].NewRow();
            DataRow drType = ds.Tables["AdmSctGrpRow"].NewRow();
            DataRow drDisp = ds.Tables["AdmSctGrpRow"].NewRow();

            if (bAdd) { dr["SctGrpRowId1283"] = string.Empty; } else { dr["SctGrpRowId1283"] = mst["SctGrpRowId1283"]; }
            drType["SctGrpRowId1283"] = "Numeric"; drDisp["SctGrpRowId1283"] = "TextBox";
            try { dr["SectionCd1283"] = mst["SectionCd1283"]; } catch { }
            drType["SectionCd1283"] = "Char"; drDisp["SectionCd1283"] = "DropDownList";
            try { dr["GroupRowId1283"] = mst["GroupRowId1283"]; } catch { }
            drType["GroupRowId1283"] = "Numeric"; drDisp["GroupRowId1283"] = "DropDownList";
            try { dr["SctGrpRowCss1283"] = mst["SctGrpRowCss1283"]; } catch { }
            drType["SctGrpRowCss1283"] = "VarChar"; drDisp["SctGrpRowCss1283"] = "MultiLine";

            if (dtl != null)
            {
                ds.Tables["AdmSctGrpRowDef"].Rows.Add(MakeTypRow(ds.Tables["AdmSctGrpRowDef"].NewRow()));
                ds.Tables["AdmSctGrpRowDef"].Rows.Add(MakeDisRow(ds.Tables["AdmSctGrpRowDef"].NewRow()));
                if (bAdd)
                {
                    foreach (var drv in dtl)
                    {
                        ds.Tables["AdmSctGrpRowAdd"].Rows.Add(MakeColRow(ds.Tables["AdmSctGrpRowAdd"].NewRow(), drv, mst["SctGrpRowId1283"], true));
                    }
                }
                else
                {
                    var dtlUpd = from r in dtl where !string.IsNullOrEmpty((r[""] ?? "").ToString()) && (r.ContainsKey("_mode") ? r["_mode"] : "") != "delete" select r;
                    foreach (var drv in dtlUpd)
                    {
                        ds.Tables["AdmSctGrpRowUpd"].Rows.Add(MakeColRow(ds.Tables["AdmSctGrpRowUpd"].NewRow(), drv, mst["SctGrpRowId1283"], false));
                    }
                    var dtlAdd = from r in dtl.AsEnumerable() where string.IsNullOrEmpty(r[""]) select r;
                    foreach (var drv in dtlAdd)
                    {
                        ds.Tables["AdmSctGrpRowAdd"].Rows.Add(MakeColRow(ds.Tables["AdmSctGrpRowAdd"].NewRow(), drv, mst["SctGrpRowId1283"], true));
                    }
                    var dtlDel = from r in dtl.AsEnumerable() where !string.IsNullOrEmpty((r[""] ?? "").ToString()) && (r.ContainsKey("_mode") ? r["_mode"] : "") == "delete" select r;
                    foreach (var drv in dtlDel)
                    {
                        ds.Tables["AdmSctGrpRowDel"].Rows.Add(MakeColRow(ds.Tables["AdmSctGrpRowDel"].NewRow(), drv, mst["SctGrpRowId1283"], false));
                    }
                }
            }
            ds.Tables["AdmSctGrpRow"].Rows.Add(dr); ds.Tables["AdmSctGrpRow"].Rows.Add(drType); ds.Tables["AdmSctGrpRow"].Rows.Add(drDisp);

            return ds;
        }

        protected override SerializableDictionary<string, string> InitMaster()
        {
            var mst = new SerializableDictionary<string, string>()
            {
                {"SctGrpRowId1283",""},
                {"SectionCd1283",""},
                {"GroupRowId1283",""},
                {"SctGrpRowCss1283",""},

            };
            /* AsmxRule: Init Master Table */
                

            /* AsmxRule End: Init Master Table */

            return mst;
        }

        protected override SerializableDictionary<string, string> InitDtl()
        {
            var mst = new SerializableDictionary<string, string>()
            {


            };
            /* AsmxRule: Init Detail Table */
            

            /* AsmxRule End: Init Detail Table */
            return mst;
        }
            

        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetAdmSctGrpRow1004List(string searchStr, int topN, string filterId)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                var effectiveFilterId = GetEffectiveScreenFilterId(filterId, true);                
                System.Web.Script.Serialization.JavaScriptSerializer jss = new System.Web.Script.Serialization.JavaScriptSerializer();
                Dictionary<string, string> context = new Dictionary<string, string>();
                context["method"] = "GetLisAdmSctGrpRow1004";
                context["mKey"] = "SctGrpRowId1283";
                context["mVal"] = "SctGrpRowId1283Text";
                context["mTip"] = "SctGrpRowId1283Text";
                context["mImg"] = "SctGrpRowId1283Text";
                context["ssd"] = "";
                context["scr"] = screenId.ToString();
                context["csy"] = systemId.ToString();
                context["filter"] = effectiveFilterId.ToString();
                context["isSys"] = "N";
                context["conn"] = string.Empty;
                AutoCompleteResponse r = LisSuggests(searchStr, jss.Serialize(context), topN, _CurrentScreenCriteria);
                ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>();
                mr.errorMsg = "";
                mr.data = r;
                mr.status = "success";
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", null));
            return ret;
        }
        [WebMethod(EnableSession = false)]
        public override ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetSearchList(string searchStr, int topN, string filterId, SerializableDictionary<string, string> desiredScreenCriteria)
        {
            if (desiredScreenCriteria != null)
            {
                _SetEffectiveScrCriteria(desiredScreenCriteria);
            }
            return GetAdmSctGrpRow1004List(searchStr, topN, filterId);
        }

        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetAdmSctGrpRow1004ById(string keyId, SerializableDictionary<string, string> options)
        {
            bool refreshUsrImpr = options.ContainsKey("ReAuth") && options["ReAuth"] == "Y" ;


            Func<ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId, true, true, refreshUsrImpr);
                string mstBlobIconOption = !options.ContainsKey("MstBlob") ? "I" : options["MstBlob"];
                string dtlBlobIconOption = !options.ContainsKey("DtlBlob") ? "I" : options["DtlBlob"];
                var mstBlob = GetBlobOption(mstBlobIconOption);
                var dtlBlob = GetBlobOption(dtlBlobIconOption);
                string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;
                bool includeDtl = !IsGridOnlyScreen() && (!options.ContainsKey("IncludeDtl") || options["IncludeDtl"] == "Y") && !String.IsNullOrEmpty(GetDtlTableName());
                ValidatedMstId("GetLisAdmSctGrpRow1004", systemId, screenId, "**" + keyId, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
                DataTable dt = _GetMstById(keyId);
                DataTable dtColAuth = _GetAuthCol(GetScreenId());
                DataTable dtColLabel = _GetScreenLabel(GetScreenId());
                Dictionary<string, DataRow> colAuth = _GetAuthColDict(dtColAuth, GetScreenId());
                var utcColumnList = dtColLabel.AsEnumerable().Where(dr => dr["DisplayMode"].ToString().Contains("UTC")).Select(dr => dr["ColumnName"].ToString() + dr["TableId"].ToString()).ToArray();
                HashSet<string> utcColumns = new HashSet<string>(utcColumnList);
                ApiResponse <List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>();
                SerializableDictionary<string, AutoCompleteResponse> supportingData = new SerializableDictionary<string,AutoCompleteResponse>();
                /* Get Master By Id After start here */


                /* Get Master By Id After end here */
                mr.data = DataTableToListOfObject(dt, mstBlob, colAuth, utcColumns);
                mr.supportingData = includeDtl ? new SerializableDictionary<string, AutoCompleteResponse>() { { "dtl", new AutoCompleteResponse() { data = DataTableToListOfObject(_GetDtlById(keyId, 0), dtlBlob, colAuth, utcColumns) } } } : supportingData;
                mr.status = "success";
                mr.errorMsg = "";
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", null));
            return ret;
        }
        [WebMethod(EnableSession = false)]
        public override ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetMstById(string keyId, SerializableDictionary<string, string> options)
        {
            return GetAdmSctGrpRow1004ById(keyId, options);
        }
        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetAdmSctGrpRow1004DtlById(string keyId, SerializableDictionary<string, string> options, int filterId)
        {
            bool refreshUsrImpr = options.ContainsKey("ReAuth") && options["ReAuth"] == "Y" ;
            string filterName = options.ContainsKey("FilterName") ? options["FilterName"] : "";

            Func<ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId, true, true, refreshUsrImpr);
                string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;            
                
                ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>();
                mr.data = new List<SerializableDictionary<string,string>>();
                mr.status = "success";
                mr.errorMsg = "";
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", null));
            return ret;
        }
        [WebMethod(EnableSession = false)]
        public override ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetDtlById(string keyId, SerializableDictionary<string, string> options, int filterId)
        {
            return GetAdmSctGrpRow1004DtlById(keyId, options, filterId);
        }
        [WebMethod(EnableSession = false)]
        public override ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetNewMst()
        {
            Func<ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                var mst = InitMaster();
                ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>();
                mr.data = new List<SerializableDictionary<string, string>>() { mst };
                mr.status = "success";
                mr.errorMsg = "";
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", null));
            return ret;
        }
        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetNewDtl()
        {
            Func<ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                var dtl = InitDtl();
                ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>();
                mr.data = new List<SerializableDictionary<string, string>>() { dtl };
                mr.status = "success";
                mr.errorMsg = "";
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", null));
            return ret;
        }

        protected override DataTable _GetMstById(string mstId)
        {
            return (new RO.Facade3.AdminSystem()).GetMstById("GetAdmSctGrpRow1004ById", string.IsNullOrEmpty(mstId) ? "-1" : mstId, LcAppConnString, LcAppPw);
        }

        protected override DataTable _GetDtlById(string mstId, int screenFilterId)
        {
            return (new RO.Facade3.AdminSystem()).GetDtlById(screenId, "GetAdmSctGrpRow1004DtlById", string.IsNullOrEmpty(mstId) ? "-1" : mstId, LcAppConnString, LcAppPw, GetEffectiveScreenFilterId(screenFilterId.ToString(), false), LImpr, LCurr);
        }
        protected override Dictionary<string, SerializableDictionary<string, string>> GetDdlContext()
        {
            return ddlContext;
        }

        [WebMethod(EnableSession = false)]
        public override ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>> DelMst(SerializableDictionary<string, string> mst, SerializableDictionary<string, string> options)
        {
            bool refreshUsrImpr = options.ContainsKey("ReAuth") && options["ReAuth"] == "Y" ;
            bool noTrans = Config.NoTrans;
            int commandTimeOut = Config.CommandTimeOut;

            Func<ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId, true, true, refreshUsrImpr);
                var pid = mst["SctGrpRowId1283"];
                var dtl = new List<SerializableDictionary<string, string>>();
                if (IsGridOnlyScreen())
                {
                    mst["_mode"] = "delete";
                    dtl.Add(mst.Clone());                    
                }
                var ds = PrepAdmSctGrpRowData(mst, dtl, IsGridOnlyScreen() ? false : string.IsNullOrEmpty(mst["SctGrpRowId1283"]));

                if (IsGridOnlyScreen())
                    (new RO.Facade3.AdminSystem()).UpdData(screenId, false, base.LUser, base.LImpr, base.LCurr, ds, LcAppConnString, LcAppPw, base.CPrj, base.CSrc, noTrans, commandTimeOut);                    
                else    
                    (new RO.Facade3.AdminSystem()).DelData(screenId, false, base.LUser, base.LImpr, base.LCurr, ds, LcAppConnString, LcAppPw, base.CPrj, base.CSrc, noTrans, commandTimeOut);

                ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>>();
                SaveDataResponse result = new SaveDataResponse();
                string msg = _GetScreenHlp(screenId).Rows[0]["DelMsg"].ToString();
                result.message = msg;
                mr.status = "success";
                mr.errorMsg = "";
                mr.data = result;
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "D", null));
            return ret;

        }

        [WebMethod(EnableSession = false)]
        public override ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>> SaveData(SerializableDictionary<string, string> mst, List<SerializableDictionary<string, string>> dtl, SerializableDictionary<string, string> options)
        {
            bool isAdd = false;
            bool refreshUsrImpr = options.ContainsKey("ReAuth") && options["ReAuth"] == "Y" ;
            string screenButton = options.ContainsKey("ScreenButton") ? options["ScreenButton"] : "";
            string actionButton = options.ContainsKey("OnClickColumeName") ? options["OnClickColumeName"] : "";
            bool noTrans = Config.NoTrans;
            int commandTimeOut = Config.CommandTimeOut;

            Func<ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId, true, true, refreshUsrImpr);
                System.Collections.Generic.Dictionary<string, string> context = new System.Collections.Generic.Dictionary<string, string>();
                SerializableDictionary<string, string> skipValidation = new SerializableDictionary<string, string>() { { "SkipAllMst", "SilentColReadOnly" }, { "SkipAllDtl", "SilentColReadOnly" } };
                if (IsGridOnlyScreen() && dtl.Count == 0)
                {
                    dtl.Add(mst.Clone());
                }
                /* AsmxRule: Save Data Before Validation */


                /* AsmxRule End: Save Data Before Validation */

                var pid = mst["SctGrpRowId1283"];
                isAdd = string.IsNullOrEmpty(pid);
                if (!isAdd)
                {
                    string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;
                    ValidatedMstId("GetLisAdmSctGrpRow1004", systemId, screenId, "**" + pid, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
                }
                else
                {
                    ValidateAction(screenId, "A");
                }

                /* current data */
                DataTable dtMst = _GetMstById(pid);
                DataTable dtDtl = null; 
                int maxDtlId = dtDtl == null ? -1 : dtDtl.AsEnumerable().Select(dr => dr[""].ToString()).Where((s) => !string.IsNullOrEmpty(s)).Select(id => int.Parse(id)).DefaultIfEmpty(-1).Max();
                var validationResult = ValidateInput(ref mst, ref dtl, dtMst, dtDtl, "SctGrpRowId1283", "", skipValidation);
                if (validationResult.Item1.Count > 0 || validationResult.Item2.Count > 0)
                {
                    return new ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>>()
                    {
                        status = "failed",
                        errorMsg = "content invalid " + string.Join(" ", (validationResult.Item1.Count > 0 ? validationResult.Item1 : validationResult.Item2[0]).ToArray()),
                        validationErrors = validationResult.Item1.Count > 0 ? validationResult.Item1 : validationResult.Item2[0],
                    };
                }
                /* AsmxRule: Save Data Before */


                /* AsmxRule End: Save Data Before */

                var ds = PrepAdmSctGrpRowData(mst, dtl, string.IsNullOrEmpty(mst["SctGrpRowId1283"]));
                string msg = string.Empty;

                if (isAdd && !IsGridOnlyScreen())
                {
                    pid = (new RO.Facade3.AdminSystem()).AddData(screenId, false, base.LUser, base.LImpr, base.LCurr, ds, LcAppConnString, LcAppPw, base.CPrj, base.CSrc, noTrans, commandTimeOut);

                    if (!string.IsNullOrEmpty(pid))
                    {
                        msg = _GetScreenHlp(screenId).Rows[0]["AddMsg"].ToString();
                    }
                }
                else
                {
                    bool ok = (new RO.Facade3.AdminSystem()).UpdData(screenId, false, base.LUser, base.LImpr, base.LCurr, ds, LcAppConnString, LcAppPw, base.CPrj, base.CSrc, noTrans, commandTimeOut);

                    if (ok)
                    {
                        msg = _GetScreenHlp(screenId).Rows[0]["UpdMsg"].ToString();
                    }
                }

                /* read updated records */
                dtMst = _GetMstById(pid);

                /* AsmxRule: Save Data After */


                /* AsmxRule End: Save Data After */

                ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>>();
                SaveDataResponse result = new SaveDataResponse();
                DataTable dtColAuth = _GetAuthCol(GetScreenId());
                DataTable dtColLabel = _GetScreenLabel(GetScreenId());
                Dictionary<string, DataRow> colAuth = _GetAuthColDict(dtColAuth, GetScreenId());
                var utcColumnList = dtColLabel.AsEnumerable().Where(dr => dr["DisplayMode"].ToString().Contains("UTC")).Select(dr => dr["ColumnName"].ToString() + dr["TableId"].ToString()).ToArray();
                HashSet<string> utcColumns = new HashSet<string>(utcColumnList);

                result.mst = DataTableToListOfObject(dtMst, IncludeBLOB.None, colAuth, utcColumns)[0];

                    
                result.message = msg;
                mr.status = "success";
                mr.errorMsg = "";
                mr.data = result;
                return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "S", null));
            return ret;
        }
            
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetSectionCd1283List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlSectionCd3S3146", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "SectionCd1283", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetGroupRowId1283List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlGroupRowId3S3147", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "GroupRowId1283", emptyAutoCompleteResponse));
            return ret;
        }

        /* AsmxRule: Custom Function */


        /* AsmxRule End: Custom Function */
           
    }
}
            
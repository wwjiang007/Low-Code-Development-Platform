<%@ WebService Language="C#" Class="RO.Web.AdmReportWs" %>
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

            
    public class AdmReport67 : DataSet
    {
        public AdmReport67()
        {

            this.Tables.Add(MakeColumns(new DataTable("AdmReport")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmReportDef")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmReportAdd")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmReportUpd")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmReportDel")));
            this.DataSetName = "AdmReport67";
            this.Namespace = "http://Rintagi.com/DataSet/AdmReport67";
        }

        private DataTable MakeColumns(DataTable dt)
        {
            DataColumnCollection columns = dt.Columns;
            columns.Add("ReportId22", typeof(string));
            columns.Add("ProgramName22", typeof(string));
            columns.Add("ReportTypeCd22", typeof(string));
            columns.Add("OrientationCd22", typeof(string));
            columns.Add("CopyReportId22", typeof(string));
            columns.Add("ModifiedBy22", typeof(string));
            columns.Add("TemplateName22", typeof(string));
            columns.Add("RptTemplate22", typeof(string));
            columns.Add("CommandTimeOut22", typeof(string));
            columns.Add("UnitCd22", typeof(string));
            columns.Add("TopMargin22", typeof(string));
            columns.Add("BottomMargin22", typeof(string));
            columns.Add("LeftMargin22", typeof(string));
            columns.Add("RightMargin22", typeof(string));
            columns.Add("PageWidth22", typeof(string));
            columns.Add("PageHeight22", typeof(string));
            columns.Add("AllowSelect22", typeof(string));
            columns.Add("GenerateRp22", typeof(string));
            columns.Add("LastGenDt22", typeof(string));
            columns.Add("AuthRequired22", typeof(string));
            columns.Add("WhereClause22", typeof(string));
            columns.Add("RegClause22", typeof(string));
            columns.Add("RegCode22", typeof(string));
            columns.Add("ValClause22", typeof(string));
            columns.Add("ValCode22", typeof(string));
            columns.Add("UpdClause22", typeof(string));
            columns.Add("UpdCode22", typeof(string));
            columns.Add("XlsClause22", typeof(string));
            columns.Add("XlsCode22", typeof(string));
            return dt;
        }

        private DataTable MakeDtlColumns(DataTable dt)
        {
            DataColumnCollection columns = dt.Columns;
            columns.Add("ReportId22", typeof(string));
            columns.Add("ReportHlpId96", typeof(string));
            columns.Add("CultureId96", typeof(string));
            columns.Add("DefaultHlpMsg96", typeof(string));
            columns.Add("ReportTitle96", typeof(string));
            return dt;
        }
    }
            
    [ScriptService()]
    [WebService(Namespace = "http://Rintagi.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public partial class AdmReportWs : RO.Web.AsmxBase
    {
        const int screenId = 67;
        const byte systemId = 3;
        const string programName = "AdmReport67";

        protected override byte GetSystemId() { return systemId; }
        protected override int GetScreenId() { return screenId; }
        protected override string GetProgramName() { return programName; }
        protected override string GetValidateMstIdSPName() { return "GetLisAdmReport67"; }
        protected override string GetMstTableName(bool underlying = true) { return "Report"; }
        protected override string GetDtlTableName(bool underlying = true) { return "ReportHlp"; }
        protected override string GetMstKeyColumnName(bool underlying = false) { return underlying ? "ReportId" : "ReportId22"; }
        protected override string GetDtlKeyColumnName(bool underlying = false) { return underlying ? "ReportHlpId" : "ReportHlpId96"; }
            
        Dictionary<string, SerializableDictionary<string, string>> ddlContext = new Dictionary<string, SerializableDictionary<string, string>>() {
            {"ReportTypeCd22", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlReportTypeCd3S1729"},{"mKey","ReportTypeCd22"},{"mVal","ReportTypeCd22Text"}, }},
            {"OrientationCd22", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlOrientationCd3S1010"},{"mKey","OrientationCd22"},{"mVal","OrientationCd22Text"}, }},
            {"CopyReportId22", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlCopyReportId3S1012"},{"mKey","CopyReportId22"},{"mVal","CopyReportId22Text"}, }},
            {"ModifiedBy22", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlModifiedBy3S1470"},{"mKey","ModifiedBy22"},{"mVal","ModifiedBy22Text"}, }},
            {"RptTemplate22", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlRptTemplate3S1728"},{"mKey","DocId"},{"mVal","FileName"}, { "tableName", "RptTemplate" }}},
            {"UnitCd22", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlUnitCd3S1525"},{"mKey","UnitCd22"},{"mVal","UnitCd22Text"}, }},
            {"CultureId96", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlCultureId3S1022"},{"mKey","CultureId96"},{"mVal","CultureId96Text"}, }},
        };

        private DataRow MakeTypRow(DataRow dr)
        {
            dr["ReportId22"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["ReportHlpId96"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["CultureId96"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["DefaultHlpMsg96"] = System.Data.OleDb.OleDbType.VarWChar.ToString();
            dr["ReportTitle96"] = System.Data.OleDb.OleDbType.VarWChar.ToString();

            return dr;
        }

        private DataRow MakeDisRow(DataRow dr)
        {
            dr["ReportId22"] = "TextBox";
            dr["ReportHlpId96"] = "TextBox";
            dr["CultureId96"] = "AutoComplete";
            dr["DefaultHlpMsg96"] = "TextBox";
            dr["ReportTitle96"] = "TextBox";

            return dr;
        }

        private DataRow MakeColRow(DataRow dr, SerializableDictionary<string, string> drv, string keyId, bool bAdd)
        {
            dr["ReportId22"] = keyId;

            DataTable dtAuth = _GetAuthCol(screenId);
            if (dtAuth != null)
            {
                dr["ReportHlpId96"] = (drv["ReportHlpId96"] ?? "").ToString().Trim().Left(9999999);
                dr["CultureId96"] = drv["CultureId96"];
                dr["DefaultHlpMsg96"] = (drv["DefaultHlpMsg96"] ?? "").ToString().Trim().Left(0);
                dr["ReportTitle96"] = (drv["ReportTitle96"] ?? "").ToString().Trim().Left(50);

            }
            return dr;
        }

        private AdmReport67 PrepAdmReportData(SerializableDictionary<string, string> mst, List<SerializableDictionary<string, string>> dtl, bool bAdd)
        {
            AdmReport67 ds = new AdmReport67();
            DataRow dr = ds.Tables["AdmReport"].NewRow();
            DataRow drType = ds.Tables["AdmReport"].NewRow();
            DataRow drDisp = ds.Tables["AdmReport"].NewRow();

            if (bAdd) { dr["ReportId22"] = string.Empty; } else { dr["ReportId22"] = mst["ReportId22"]; }
            drType["ReportId22"] = "Numeric"; drDisp["ReportId22"] = "TextBox";
            try { dr["ProgramName22"] = (mst["ProgramName22"] ?? "").Trim().Left(20); } catch { }
            drType["ProgramName22"] = "VarChar"; drDisp["ProgramName22"] = "TextBox";
            try { dr["ReportTypeCd22"] = mst["ReportTypeCd22"]; } catch { }
            drType["ReportTypeCd22"] = "Char"; drDisp["ReportTypeCd22"] = "DropDownList";
            try { dr["OrientationCd22"] = mst["OrientationCd22"]; } catch { }
            drType["OrientationCd22"] = "Char"; drDisp["OrientationCd22"] = "RadioButtonList";
            try { dr["CopyReportId22"] = mst["CopyReportId22"]; } catch { }
            drType["CopyReportId22"] = "Numeric"; drDisp["CopyReportId22"] = "AutoComplete";
            try { dr["ModifiedBy22"] = mst["ModifiedBy22"]; } catch { }
            drType["ModifiedBy22"] = "Numeric"; drDisp["ModifiedBy22"] = "DropDownList";
            try { dr["TemplateName22"] = (mst["TemplateName22"] ?? "").Trim().Left(50); } catch { }
            drType["TemplateName22"] = "VarChar"; drDisp["TemplateName22"] = "TextBox";
            try { dr["RptTemplate22"] = mst["RptTemplate22"]; } catch { }
            drType["RptTemplate22"] = "Numeric"; drDisp["RptTemplate22"] = "Document";
            try { dr["CommandTimeOut22"] = (mst["CommandTimeOut22"] ?? "").Trim().Left(9999999); } catch { }
            drType["CommandTimeOut22"] = "Numeric"; drDisp["CommandTimeOut22"] = "TextBox";
            try { dr["UnitCd22"] = mst["UnitCd22"]; } catch { }
            drType["UnitCd22"] = "Char"; drDisp["UnitCd22"] = "DropDownList";
            try { dr["TopMargin22"] = (mst["TopMargin22"] ?? "").Trim().Left(9999999); } catch { }
            drType["TopMargin22"] = "Decimal"; drDisp["TopMargin22"] = "TextBox";
            try { dr["BottomMargin22"] = (mst["BottomMargin22"] ?? "").Trim().Left(9999999); } catch { }
            drType["BottomMargin22"] = "Decimal"; drDisp["BottomMargin22"] = "TextBox";
            try { dr["LeftMargin22"] = (mst["LeftMargin22"] ?? "").Trim().Left(9999999); } catch { }
            drType["LeftMargin22"] = "Decimal"; drDisp["LeftMargin22"] = "TextBox";
            try { dr["RightMargin22"] = (mst["RightMargin22"] ?? "").Trim().Left(9999999); } catch { }
            drType["RightMargin22"] = "Decimal"; drDisp["RightMargin22"] = "TextBox";
            try { dr["PageWidth22"] = (mst["PageWidth22"] ?? "").Trim().Left(9999999); } catch { }
            drType["PageWidth22"] = "Decimal"; drDisp["PageWidth22"] = "TextBox";
            try { dr["PageHeight22"] = (mst["PageHeight22"] ?? "").Trim().Left(9999999); } catch { }
            drType["PageHeight22"] = "Decimal"; drDisp["PageHeight22"] = "TextBox";
            try { dr["AllowSelect22"] = (mst["AllowSelect22"] ?? "").Trim().Left(1); } catch { }
            drType["AllowSelect22"] = "Char"; drDisp["AllowSelect22"] = "CheckBox";
            try { dr["GenerateRp22"] = (mst["GenerateRp22"] ?? "").Trim().Left(1); } catch { }
            drType["GenerateRp22"] = "Char"; drDisp["GenerateRp22"] = "CheckBox";
            try { dr["LastGenDt22"] = mst["LastGenDt22"]; } catch { }
            drType["LastGenDt22"] = "DBTimeStamp"; drDisp["LastGenDt22"] = "ShortDateTimeUTC";
            try { dr["AuthRequired22"] = (mst["AuthRequired22"] ?? "").Trim().Left(1); } catch { }
            drType["AuthRequired22"] = "Char"; drDisp["AuthRequired22"] = "CheckBox";
            try { dr["WhereClause22"] = mst["WhereClause22"]; } catch { }
            drType["WhereClause22"] = "VarChar"; drDisp["WhereClause22"] = "MultiLine";
            try { dr["RegClause22"] = mst["RegClause22"]; } catch { }
            drType["RegClause22"] = "VarChar"; drDisp["RegClause22"] = "MultiLine";
            try { dr["RegCode22"] = mst["RegCode22"]; } catch { }
            drType["RegCode22"] = "VarWChar"; drDisp["RegCode22"] = "MultiLine";
            try { dr["ValClause22"] = mst["ValClause22"]; } catch { }
            drType["ValClause22"] = "VarChar"; drDisp["ValClause22"] = "MultiLine";
            try { dr["ValCode22"] = mst["ValCode22"]; } catch { }
            drType["ValCode22"] = "VarWChar"; drDisp["ValCode22"] = "MultiLine";
            try { dr["UpdClause22"] = mst["UpdClause22"]; } catch { }
            drType["UpdClause22"] = "VarChar"; drDisp["UpdClause22"] = "MultiLine";
            try { dr["UpdCode22"] = mst["UpdCode22"]; } catch { }
            drType["UpdCode22"] = "VarWChar"; drDisp["UpdCode22"] = "MultiLine";
            try { dr["XlsClause22"] = mst["XlsClause22"]; } catch { }
            drType["XlsClause22"] = "VarChar"; drDisp["XlsClause22"] = "MultiLine";
            try { dr["XlsCode22"] = mst["XlsCode22"]; } catch { }
            drType["XlsCode22"] = "VarWChar"; drDisp["XlsCode22"] = "MultiLine";

            if (dtl != null)
            {
                ds.Tables["AdmReportDef"].Rows.Add(MakeTypRow(ds.Tables["AdmReportDef"].NewRow()));
                ds.Tables["AdmReportDef"].Rows.Add(MakeDisRow(ds.Tables["AdmReportDef"].NewRow()));
                if (bAdd)
                {
                    foreach (var drv in dtl)
                    {
                        ds.Tables["AdmReportAdd"].Rows.Add(MakeColRow(ds.Tables["AdmReportAdd"].NewRow(), drv, mst["ReportId22"], true));
                    }
                }
                else
                {
                    var dtlUpd = from r in dtl where !string.IsNullOrEmpty((r["ReportHlpId96"] ?? "").ToString()) && (r.ContainsKey("_mode") ? r["_mode"] : "") != "delete" select r;
                    foreach (var drv in dtlUpd)
                    {
                        ds.Tables["AdmReportUpd"].Rows.Add(MakeColRow(ds.Tables["AdmReportUpd"].NewRow(), drv, mst["ReportId22"], false));
                    }
                    var dtlAdd = from r in dtl.AsEnumerable() where string.IsNullOrEmpty(r["ReportHlpId96"]) select r;
                    foreach (var drv in dtlAdd)
                    {
                        ds.Tables["AdmReportAdd"].Rows.Add(MakeColRow(ds.Tables["AdmReportAdd"].NewRow(), drv, mst["ReportId22"], true));
                    }
                    var dtlDel = from r in dtl.AsEnumerable() where !string.IsNullOrEmpty((r["ReportHlpId96"] ?? "").ToString()) && (r.ContainsKey("_mode") ? r["_mode"] : "") == "delete" select r;
                    foreach (var drv in dtlDel)
                    {
                        ds.Tables["AdmReportDel"].Rows.Add(MakeColRow(ds.Tables["AdmReportDel"].NewRow(), drv, mst["ReportId22"], false));
                    }
                }
            }
            ds.Tables["AdmReport"].Rows.Add(dr); ds.Tables["AdmReport"].Rows.Add(drType); ds.Tables["AdmReport"].Rows.Add(drDisp);

            return ds;
        }

        protected override SerializableDictionary<string, string> InitMaster()
        {
            var mst = new SerializableDictionary<string, string>()
            {
                {"ReportId22",""},
                {"ProgramName22",""},
                {"ReportTypeCd22","S"},
                {"OrientationCd22","P"},
                {"CopyReportId22",""},
                {"ModifiedBy22",base.LUser.UsrId.ToString()},
                {"TemplateName22",""},
                {"CommandTimeOut22",""},
                {"UnitCd22",""},
                {"TopMargin22",""},
                {"BottomMargin22",""},
                {"LeftMargin22",""},
                {"RightMargin22",""},
                {"PageWidth22",""},
                {"PageHeight22",""},
                {"SyncByDb","~/images/custom/adm/SyncByDb.gif"},
                {"SyncToDb","~/images/custom/adm/SyncToDb.gif"},
                {"AllowSelect22","N"},
                {"GenerateRp22","Y"},
                {"LastGenDt22",""},
                {"AuthRequired22","Y"},
                {"WhereClause22",""},
                {"RegClause22",""},
                {"RegCode22",""},
                {"ValClause22",""},
                {"ValCode22",""},
                {"UpdClause22",""},
                {"UpdCode22",""},
                {"XlsClause22",""},
                {"XlsCode22",""},

            };
            /* AsmxRule: Init Master Table */
                

            /* AsmxRule End: Init Master Table */

            return mst;
        }

        protected override SerializableDictionary<string, string> InitDtl()
        {
            var mst = new SerializableDictionary<string, string>()
            {
                {"ReportHlpId96",""},
                {"CultureId96","1"},
                {"DefaultHlpMsg96",""},
                {"ReportTitle96",""},

            };
            /* AsmxRule: Init Detail Table */
            

            /* AsmxRule End: Init Detail Table */
            return mst;
        }
        protected override DataTable _GetDocList(string mstId, string screenColumnName)
        {
            return (new AdminSystem()).GetDdl(GetScreenId(), GetDdlContext()[screenColumnName]["method"], false, true, 0, mstId, LcAppConnString, LcAppPw, string.Empty, LImpr, LCurr);
        }
        protected override string _GetDocTableName(string screenColumnName)
        {
            return GetDdlContext()[screenColumnName]["tableName"];
        }   

            

        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetAdmReport67List(string searchStr, int topN, string filterId)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                var effectiveFilterId = GetEffectiveScreenFilterId(filterId, true);                
                System.Web.Script.Serialization.JavaScriptSerializer jss = new System.Web.Script.Serialization.JavaScriptSerializer();
                Dictionary<string, string> context = new Dictionary<string, string>();
                context["method"] = "GetLisAdmReport67";
                context["mKey"] = "ReportId22";
                context["mVal"] = "ReportId22Text";
                context["mTip"] = "ReportId22Text";
                context["mImg"] = "ReportId22Text";
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
            return GetAdmReport67List(searchStr, topN, filterId);
        }

        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetAdmReport67ById(string keyId, SerializableDictionary<string, string> options)
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
                ValidatedMstId("GetLisAdmReport67", systemId, screenId, "**" + keyId, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
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
            return GetAdmReport67ById(keyId, options);
        }
        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetAdmReport67DtlById(string keyId, SerializableDictionary<string, string> options, int filterId)
        {
            bool refreshUsrImpr = options.ContainsKey("ReAuth") && options["ReAuth"] == "Y" ;
            string filterName = options.ContainsKey("FilterName") ? options["FilterName"] : "";

            Func<ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId, true, true, refreshUsrImpr);
                string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;            
                
                ValidatedMstId("GetLisAdmReport67", systemId, screenId, "**" + keyId, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
                string dtlBlobIconOption = !options.ContainsKey("DtlBlob") ? "I" : options["DtlBlob"];
                var dtlBlob = GetBlobOption(dtlBlobIconOption);;
                DataTable dtColAuth = _GetAuthCol(GetScreenId());
                DataTable dtColLabel = _GetScreenLabel(GetScreenId());
                var utcColumnList = dtColLabel.AsEnumerable().Where(dr => dr["DisplayMode"].ToString().Contains("UTC")).Select(dr => dr["ColumnName"].ToString() + dr["TableId"].ToString()).ToArray();
                HashSet<string> utcColumns = new HashSet<string>(utcColumnList);;
                Dictionary<string, DataRow> colAuth = _GetAuthColDict(dtColAuth, GetScreenId());
                ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>();
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDtlById(screenId, "GetAdmReport67DtlById", keyId, LcAppConnString, LcAppPw, GetEffectiveScreenFilterId(!string.IsNullOrEmpty(filterName) ? filterName : filterId.ToString(), false), base.LImpr, base.LCurr);
                mr.data = DataTableToListOfObject(dt, dtlBlob, colAuth, utcColumns);
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
            return GetAdmReport67DtlById(keyId, options, filterId);
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
            return (new RO.Facade3.AdminSystem()).GetMstById("GetAdmReport67ById", string.IsNullOrEmpty(mstId) ? "-1" : mstId, LcAppConnString, LcAppPw);
        }

        protected override DataTable _GetDtlById(string mstId, int screenFilterId)
        {
            return (new RO.Facade3.AdminSystem()).GetDtlById(screenId, "GetAdmReport67DtlById", string.IsNullOrEmpty(mstId) ? "-1" : mstId, LcAppConnString, LcAppPw, GetEffectiveScreenFilterId(screenFilterId.ToString(), false), LImpr, LCurr);
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
                var pid = mst["ReportId22"];
                var dtl = new List<SerializableDictionary<string, string>>();
                if (IsGridOnlyScreen())
                {
                    mst["_mode"] = "delete";
                    dtl.Add(mst.Clone());                    
                }
                var ds = PrepAdmReportData(mst, dtl, IsGridOnlyScreen() ? false : string.IsNullOrEmpty(mst["ReportId22"]));

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

                var pid = mst["ReportId22"];
                isAdd = string.IsNullOrEmpty(pid);
                if (!isAdd)
                {
                    string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;
                    ValidatedMstId("GetLisAdmReport67", systemId, screenId, "**" + pid, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
                }
                else
                {
                    ValidateAction(screenId, "A");
                }

                /* current data */
                DataTable dtMst = _GetMstById(pid);
                DataTable dtDtl = _GetDtlById(pid, GetEffectiveScreenFilterId("0", false)); 
                int maxDtlId = dtDtl == null ? -1 : dtDtl.AsEnumerable().Select(dr => dr["ReportHlpId96"].ToString()).Where((s) => !string.IsNullOrEmpty(s)).Select(id => int.Parse(id)).DefaultIfEmpty(-1).Max();
                var validationResult = ValidateInput(ref mst, ref dtl, dtMst, dtDtl, "ReportId22", "ReportHlpId96", skipValidation);
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

                var ds = PrepAdmReportData(mst, dtl, string.IsNullOrEmpty(mst["ReportId22"]));
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
                dtDtl = _GetDtlById(pid, 0);
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
                result.dtl = DataTableToListOfObject(dtDtl, IncludeBLOB.None, colAuth, utcColumns);
                    
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
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetReportTypeCd22List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlReportTypeCd3S1729", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "ReportTypeCd22", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetOrientationCd22List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlOrientationCd3S1010", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "OrientationCd22", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetCopyReportId22List(string query, int topN, string filterBy)
        {
        Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
        {
            SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
            System.Collections.Generic.Dictionary<string, string> context = new System.Collections.Generic.Dictionary<string, string>();
            context["method"] = "GetDdlCopyReportId3S1012";
            context["addnew"] = "Y";
            context["mKey"] = "CopyReportId22";
            context["mVal"] = "CopyReportId22Text";
            context["mTip"] = "CopyReportId22Text";
            context["mImg"] = "CopyReportId22Text";
            context["ssd"] = "";
            context["scr"] = screenId.ToString();
            context["csy"] = systemId.ToString();
            context["filter"] = "0";
            context["isSys"] = "N";
            context["conn"] = string.Empty;

            ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>();
            mr.status = "success";
            mr.errorMsg = "";
            mr.data = ddlSuggests(query, context, topN);
            return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "CopyReportId22", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetModifiedBy22List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlModifiedBy3S1470", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "ModifiedBy22", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>> DelRptTemplate22(string mstId, string dtlId, bool isMaster, string[] docIdList, string screenColumnName)
        {
            return DelMultiDoc(mstId, dtlId, true, docIdList, "RptTemplate22", "RptTemplate", "Report", "RptTemplate", "ReportId");
        }

        [WebMethod(EnableSession = false)]
        public ApiResponse<SaveDataResponse, SerializableDictionary<string, AutoCompleteResponse>> SaveRptTemplate22(string mstId, string dtlId, bool isMaster, string docId, bool overwrite, string screenColumnName, string docJson, SerializableDictionary<string, string> options)
        {
            return SaveMultiDoc(mstId, dtlId, true, docId, overwrite, "RptTemplate22", "RptTemplate", docJson, options);
        }

        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetRptTemplate22List(string mstId, string dtlId, bool isMaster)
        {
            return GetMultiDocList(mstId, dtlId, true, "RptTemplate22", "GetDdlRptTemplate3S1728");
        }

                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetUnitCd22List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlUnitCd3S1525", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "UnitCd22", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetCultureId96List(string query, int topN, string filterBy)
        {
        Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
        {
            SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
            System.Collections.Generic.Dictionary<string, string> context = new System.Collections.Generic.Dictionary<string, string>();
            context["method"] = "GetDdlCultureId3S1022";
            context["addnew"] = "Y";
            context["mKey"] = "CultureId96";
            context["mVal"] = "CultureId96Text";
            context["mTip"] = "CultureId96Text";
            context["mImg"] = "CultureId96Text";
            context["ssd"] = "";
            context["scr"] = screenId.ToString();
            context["csy"] = systemId.ToString();
            context["filter"] = "0";
            context["isSys"] = "N";
            context["conn"] = string.Empty;

            ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>();
            mr.status = "success";
            mr.errorMsg = "";
            mr.data = ddlSuggests(query, context, topN);
            return mr;
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "CultureId96", emptyAutoCompleteResponse));
            return ret;
        }

        /* AsmxRule: Custom Function */


        /* AsmxRule End: Custom Function */
           
    }
}
            
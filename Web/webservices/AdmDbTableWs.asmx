<%@ WebService Language="C#" Class="RO.Web.AdmDbTableWs" %>
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

            
    public class AdmDbTable2 : DataSet
    {
        public AdmDbTable2()
        {

            this.Tables.Add(MakeColumns(new DataTable("AdmDbTable")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmDbTableDef")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmDbTableAdd")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmDbTableUpd")));
            this.Tables.Add(MakeDtlColumns(new DataTable("AdmDbTableDel")));
            this.DataSetName = "AdmDbTable2";
            this.Namespace = "http://Rintagi.com/DataSet/AdmDbTable2";
        }

        private DataTable MakeColumns(DataTable dt)
        {
            DataColumnCollection columns = dt.Columns;
            columns.Add("TableId3", typeof(string));
            columns.Add("SystemId3", typeof(string));
            columns.Add("TableName3", typeof(string));
            columns.Add("TableDesc3", typeof(string));
            columns.Add("TblObjective3", typeof(string));
            columns.Add("VirtualTbl3", typeof(string));
            columns.Add("MultiDesignDb3", typeof(string));
            columns.Add("UploadSheet", typeof(string));
            columns.Add("SheetNameList", typeof(string));
            columns.Add("RowsToExamine", typeof(string));
            columns.Add("ModifiedBy3", typeof(string));
            columns.Add("LastSyncDt3", typeof(string));
            columns.Add("VirtualSql3", typeof(string));
            return dt;
        }

        private DataTable MakeDtlColumns(DataTable dt)
        {
            DataColumnCollection columns = dt.Columns;
            columns.Add("TableId3", typeof(string));
            columns.Add("ColumnId5", typeof(string));
            columns.Add("ColumnIndex5", typeof(string));
            columns.Add("ExternalTable5", typeof(string));
            columns.Add("ColumnName5", typeof(string));
            columns.Add("DataType5", typeof(string));
            columns.Add("ColumnLength5", typeof(string));
            columns.Add("ColumnScale5", typeof(string));
            columns.Add("DefaultValue5", typeof(string));
            columns.Add("AllowNulls5", typeof(string));
            columns.Add("ColumnIdentity5", typeof(string));
            columns.Add("PrimaryKey5", typeof(string));
            columns.Add("IsIndexU5", typeof(string));
            columns.Add("IsIndex5", typeof(string));
            columns.Add("ColObjective5", typeof(string));
            return dt;
        }
    }
            
    [ScriptService()]
    [WebService(Namespace = "http://Rintagi.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public partial class AdmDbTableWs : RO.Web.AsmxBase
    {
        const int screenId = 2;
        const byte systemId = 3;
        const string programName = "AdmDbTable2";

        protected override byte GetSystemId() { return systemId; }
        protected override int GetScreenId() { return screenId; }
        protected override string GetProgramName() { return programName; }
        protected override string GetValidateMstIdSPName() { return "GetLisAdmDbTable2"; }
        protected override string GetMstTableName(bool underlying = true) { return "DbTable"; }
        protected override string GetDtlTableName(bool underlying = true) { return "DbColumn"; }
        protected override string GetMstKeyColumnName(bool underlying = false) { return underlying ? "TableId" : "TableId3"; }
        protected override string GetDtlKeyColumnName(bool underlying = false) { return underlying ? "ColumnId" : "ColumnId5"; }
            
        Dictionary<string, SerializableDictionary<string, string>> ddlContext = new Dictionary<string, SerializableDictionary<string, string>>() {
            {"SystemId3", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlSystemId3S430"},{"mKey","SystemId3"},{"mVal","SystemId3Text"}, }},
            {"SheetNameList", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlSheetNameList3S4150"},{"mKey","SheetNameList"},{"mVal","SheetNameListText"}, }},
            {"ModifiedBy3", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlModifiedBy3S1451"},{"mKey","ModifiedBy3"},{"mVal","ModifiedBy3Text"}, }},
            {"DataType5", new SerializableDictionary<string,string>() {{"scr",screenId.ToString()},{"csy",systemId.ToString()},{"conn",""},{"addnew","N"},{"isSys","N"}, {"method","GetDdlDataType3S17"},{"mKey","DataType5"},{"mVal","DataType5Text"}, }},
        };

        private DataRow MakeTypRow(DataRow dr)
        {
            dr["TableId3"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["ColumnId5"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["ColumnIndex5"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["ExternalTable5"] = System.Data.OleDb.OleDbType.VarChar.ToString();
            dr["ColumnName5"] = System.Data.OleDb.OleDbType.VarChar.ToString();
            dr["DataType5"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["ColumnLength5"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["ColumnScale5"] = System.Data.OleDb.OleDbType.Numeric.ToString();
            dr["DefaultValue5"] = System.Data.OleDb.OleDbType.VarWChar.ToString();
            dr["AllowNulls5"] = System.Data.OleDb.OleDbType.Char.ToString();
            dr["ColumnIdentity5"] = System.Data.OleDb.OleDbType.Char.ToString();
            dr["PrimaryKey5"] = System.Data.OleDb.OleDbType.Char.ToString();
            dr["IsIndexU5"] = System.Data.OleDb.OleDbType.Char.ToString();
            dr["IsIndex5"] = System.Data.OleDb.OleDbType.Char.ToString();
            dr["ColObjective5"] = System.Data.OleDb.OleDbType.VarWChar.ToString();

            return dr;
        }

        private DataRow MakeDisRow(DataRow dr)
        {
            dr["TableId3"] = "TextBox";
            dr["ColumnId5"] = "TextBox";
            dr["ColumnIndex5"] = "TextBox";
            dr["ExternalTable5"] = "TextBox";
            dr["ColumnName5"] = "TextBox";
            dr["DataType5"] = "DropDownList";
            dr["ColumnLength5"] = "TextBox";
            dr["ColumnScale5"] = "TextBox";
            dr["DefaultValue5"] = "TextBox";
            dr["AllowNulls5"] = "CheckBoxAll";
            dr["ColumnIdentity5"] = "CheckBox";
            dr["PrimaryKey5"] = "CheckBox";
            dr["IsIndexU5"] = "CheckBox";
            dr["IsIndex5"] = "CheckBox";
            dr["ColObjective5"] = "TextBox";

            return dr;
        }

        private DataRow MakeColRow(DataRow dr, SerializableDictionary<string, string> drv, string keyId, bool bAdd)
        {
            dr["TableId3"] = keyId;

            DataTable dtAuth = _GetAuthCol(screenId);
            if (dtAuth != null)
            {
                dr["ColumnId5"] = (drv["ColumnId5"] ?? "").ToString().Trim().Left(9999999);
                dr["ColumnIndex5"] = (drv["ColumnIndex5"] ?? "").ToString().Trim().Left(9999999);
                dr["ExternalTable5"] = (drv["ExternalTable5"] ?? "").ToString().Trim().Left(50);
                dr["ColumnName5"] = (drv["ColumnName5"] ?? "").ToString().Trim().Left(50);
                dr["DataType5"] = drv["DataType5"];
                dr["ColumnLength5"] = (drv["ColumnLength5"] ?? "").ToString().Trim().Left(9999999);
                dr["ColumnScale5"] = (drv["ColumnScale5"] ?? "").ToString().Trim().Left(9999999);
                dr["DefaultValue5"] = (drv["DefaultValue5"] ?? "").ToString().Trim().Left(50);
                dr["AllowNulls5"] = drv["AllowNulls5"];
                dr["ColumnIdentity5"] = drv["ColumnIdentity5"];
                dr["PrimaryKey5"] = drv["PrimaryKey5"];
                dr["IsIndexU5"] = drv["IsIndexU5"];
                dr["IsIndex5"] = drv["IsIndex5"];
                dr["ColObjective5"] = (drv["ColObjective5"] ?? "").ToString().Trim().Left(200);

            }
            return dr;
        }

        private AdmDbTable2 PrepAdmDbTableData(SerializableDictionary<string, string> mst, List<SerializableDictionary<string, string>> dtl, bool bAdd)
        {
            AdmDbTable2 ds = new AdmDbTable2();
            DataRow dr = ds.Tables["AdmDbTable"].NewRow();
            DataRow drType = ds.Tables["AdmDbTable"].NewRow();
            DataRow drDisp = ds.Tables["AdmDbTable"].NewRow();

            if (bAdd) { dr["TableId3"] = string.Empty; } else { dr["TableId3"] = mst["TableId3"]; }
            drType["TableId3"] = "Numeric"; drDisp["TableId3"] = "TextBox";
            try { dr["SystemId3"] = mst["SystemId3"]; } catch { }
            drType["SystemId3"] = "Numeric"; drDisp["SystemId3"] = "DropDownList";
            try { dr["TableName3"] = (mst["TableName3"] ?? "").Trim().Left(500); } catch { }
            drType["TableName3"] = "VarChar"; drDisp["TableName3"] = "TextBox";
            try { dr["TableDesc3"] = (mst["TableDesc3"] ?? "").Trim().Left(100); } catch { }
            drType["TableDesc3"] = "VarWChar"; drDisp["TableDesc3"] = "TextBox";
            try { dr["TblObjective3"] = mst["TblObjective3"]; } catch { }
            drType["TblObjective3"] = "VarWChar"; drDisp["TblObjective3"] = "MultiLine";
            try { dr["VirtualTbl3"] = (mst["VirtualTbl3"] ?? "").Trim().Left(1); } catch { }
            drType["VirtualTbl3"] = "Char"; drDisp["VirtualTbl3"] = "CheckBox";
            try { dr["MultiDesignDb3"] = (mst["MultiDesignDb3"] ?? "").Trim().Left(1); } catch { }
            drType["MultiDesignDb3"] = "Char"; drDisp["MultiDesignDb3"] = "CheckBox";
            try { dr["UploadSheet"] = mst["UploadSheet"]; } catch { }
            drType["UploadSheet"] = string.Empty; drDisp["UploadSheet"] = "Upload";
            try { dr["SheetNameList"] = mst["SheetNameList"]; } catch { }
            drType["SheetNameList"] = string.Empty; drDisp["SheetNameList"] = "DropDownList";
            try { dr["RowsToExamine"] = (mst["RowsToExamine"] ?? "").Trim().Left(9999999); } catch { }
            drType["RowsToExamine"] = string.Empty; drDisp["RowsToExamine"] = "TextBox";
            try { dr["ModifiedBy3"] = mst["ModifiedBy3"]; } catch { }
            drType["ModifiedBy3"] = "Numeric"; drDisp["ModifiedBy3"] = "DropDownList";
            try { dr["LastSyncDt3"] = mst["LastSyncDt3"]; } catch { }
            drType["LastSyncDt3"] = "DBTimeStamp"; drDisp["LastSyncDt3"] = "ShortDateTimeUTC";
            try { dr["VirtualSql3"] = mst["VirtualSql3"]; } catch { }
            drType["VirtualSql3"] = "VarWChar"; drDisp["VirtualSql3"] = "MultiLine";

            if (dtl != null)
            {
                ds.Tables["AdmDbTableDef"].Rows.Add(MakeTypRow(ds.Tables["AdmDbTableDef"].NewRow()));
                ds.Tables["AdmDbTableDef"].Rows.Add(MakeDisRow(ds.Tables["AdmDbTableDef"].NewRow()));
                if (bAdd)
                {
                    foreach (var drv in dtl)
                    {
                        ds.Tables["AdmDbTableAdd"].Rows.Add(MakeColRow(ds.Tables["AdmDbTableAdd"].NewRow(), drv, mst["TableId3"], true));
                    }
                }
                else
                {
                    var dtlUpd = from r in dtl where !string.IsNullOrEmpty((r["ColumnId5"] ?? "").ToString()) && (r.ContainsKey("_mode") ? r["_mode"] : "") != "delete" select r;
                    foreach (var drv in dtlUpd)
                    {
                        ds.Tables["AdmDbTableUpd"].Rows.Add(MakeColRow(ds.Tables["AdmDbTableUpd"].NewRow(), drv, mst["TableId3"], false));
                    }
                    var dtlAdd = from r in dtl.AsEnumerable() where string.IsNullOrEmpty(r["ColumnId5"]) select r;
                    foreach (var drv in dtlAdd)
                    {
                        ds.Tables["AdmDbTableAdd"].Rows.Add(MakeColRow(ds.Tables["AdmDbTableAdd"].NewRow(), drv, mst["TableId3"], true));
                    }
                    var dtlDel = from r in dtl.AsEnumerable() where !string.IsNullOrEmpty((r["ColumnId5"] ?? "").ToString()) && (r.ContainsKey("_mode") ? r["_mode"] : "") == "delete" select r;
                    foreach (var drv in dtlDel)
                    {
                        ds.Tables["AdmDbTableDel"].Rows.Add(MakeColRow(ds.Tables["AdmDbTableDel"].NewRow(), drv, mst["TableId3"], false));
                    }
                }
            }
            ds.Tables["AdmDbTable"].Rows.Add(dr); ds.Tables["AdmDbTable"].Rows.Add(drType); ds.Tables["AdmDbTable"].Rows.Add(drDisp);

            return ds;
        }

        protected override SerializableDictionary<string, string> InitMaster()
        {
            var mst = new SerializableDictionary<string, string>()
            {
                {"TableId3",""},
                {"SystemId3",""},
                {"TableName3",""},
                {"TableDesc3",""},
                {"TblObjective3",""},
                {"VirtualTbl3","N"},
                {"MultiDesignDb3",""},
                {"ModelSample","~/images/custom/adm/AnalToDb.gif"},
                {"SyncByDb","~/images/custom/adm/SyncByDb.gif"},
                {"AnalToDb","~/images/custom/adm/AnalToDb.gif"},
                {"SyncToDb","~/images/custom/adm/SyncToDb.gif"},
                {"UploadSheet",""},
                {"SheetNameList",""},
                {"RowsToExamine","100"},
                {"BtnScan",""},
                {"ModifiedBy3",base.LUser.UsrId.ToString()},
                {"LastSyncDt3",""},
                {"VirtualSql3",""},

            };
            /* AsmxRule: Init Master Table */
                

            /* AsmxRule End: Init Master Table */

            return mst;
        }

        protected override SerializableDictionary<string, string> InitDtl()
        {
            var mst = new SerializableDictionary<string, string>()
            {
                {"ColumnId5",""},
                {"ColumnIndex5",""},
                {"ExternalTable5",""},
                {"ColumnName5",""},
                {"DataType5",""},
                {"ColumnLength5",""},
                {"ColumnScale5",""},
                {"DefaultValue5",""},
                {"AllowNulls5","N"},
                {"ColumnIdentity5","N"},
                {"PrimaryKey5","N"},
                {"IsIndexU5","N"},
                {"IsIndex5","N"},
                {"ColObjective5",""},

            };
            /* AsmxRule: Init Detail Table */
            

            /* AsmxRule End: Init Detail Table */
            return mst;
        }
            

        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetAdmDbTable2List(string searchStr, int topN, string filterId)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                var effectiveFilterId = GetEffectiveScreenFilterId(filterId, true);                
                System.Web.Script.Serialization.JavaScriptSerializer jss = new System.Web.Script.Serialization.JavaScriptSerializer();
                Dictionary<string, string> context = new Dictionary<string, string>();
                context["method"] = "GetLisAdmDbTable2";
                context["mKey"] = "TableId3";
                context["mVal"] = "TableId3Text";
                context["mTip"] = "TableId3Text";
                context["mImg"] = "TableId3Text";
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
            return GetAdmDbTable2List(searchStr, topN, filterId);
        }

        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetAdmDbTable2ById(string keyId, SerializableDictionary<string, string> options)
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
                ValidatedMstId("GetLisAdmDbTable2", systemId, screenId, "**" + keyId, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
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
            return GetAdmDbTable2ById(keyId, options);
        }
        [WebMethod(EnableSession = false)]
        public ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> GetAdmDbTable2DtlById(string keyId, SerializableDictionary<string, string> options, int filterId)
        {
            bool refreshUsrImpr = options.ContainsKey("ReAuth") && options["ReAuth"] == "Y" ;
            string filterName = options.ContainsKey("FilterName") ? options["FilterName"] : "";

            Func<ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId, true, true, refreshUsrImpr);
                string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;            
                
                ValidatedMstId("GetLisAdmDbTable2", systemId, screenId, "**" + keyId, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
                string dtlBlobIconOption = !options.ContainsKey("DtlBlob") ? "I" : options["DtlBlob"];
                var dtlBlob = GetBlobOption(dtlBlobIconOption);;
                DataTable dtColAuth = _GetAuthCol(GetScreenId());
                DataTable dtColLabel = _GetScreenLabel(GetScreenId());
                var utcColumnList = dtColLabel.AsEnumerable().Where(dr => dr["DisplayMode"].ToString().Contains("UTC")).Select(dr => dr["ColumnName"].ToString() + dr["TableId"].ToString()).ToArray();
                HashSet<string> utcColumns = new HashSet<string>(utcColumnList);;
                Dictionary<string, DataRow> colAuth = _GetAuthColDict(dtColAuth, GetScreenId());
                ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>> mr = new ApiResponse<List<SerializableDictionary<string, string>>, SerializableDictionary<string, AutoCompleteResponse>>();
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDtlById(screenId, "GetAdmDbTable2DtlById", keyId, LcAppConnString, LcAppPw, GetEffectiveScreenFilterId(!string.IsNullOrEmpty(filterName) ? filterName : filterId.ToString(), false), base.LImpr, base.LCurr);
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
            return GetAdmDbTable2DtlById(keyId, options, filterId);
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
            return (new RO.Facade3.AdminSystem()).GetMstById("GetAdmDbTable2ById", string.IsNullOrEmpty(mstId) ? "-1" : mstId, LcAppConnString, LcAppPw);
        }

        protected override DataTable _GetDtlById(string mstId, int screenFilterId)
        {
            return (new RO.Facade3.AdminSystem()).GetDtlById(screenId, "GetAdmDbTable2DtlById", string.IsNullOrEmpty(mstId) ? "-1" : mstId, LcAppConnString, LcAppPw, GetEffectiveScreenFilterId(screenFilterId.ToString(), false), LImpr, LCurr);
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
                var pid = mst["TableId3"];
                var dtl = new List<SerializableDictionary<string, string>>();
                if (IsGridOnlyScreen())
                {
                    mst["_mode"] = "delete";
                    dtl.Add(mst.Clone());                    
                }
                var ds = PrepAdmDbTableData(mst, dtl, IsGridOnlyScreen() ? false : string.IsNullOrEmpty(mst["TableId3"]));

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

                var pid = mst["TableId3"];
                isAdd = string.IsNullOrEmpty(pid);
                if (!isAdd)
                {
                    string jsonCri = options.ContainsKey("CurrentScreenCriteria") ? options["CurrentScreenCriteria"] : null;
                    ValidatedMstId("GetLisAdmDbTable2", systemId, screenId, "**" + pid, MatchScreenCriteria(_GetScrCriteria(screenId).DefaultView, jsonCri));
                }
                else
                {
                    ValidateAction(screenId, "A");
                }

                /* current data */
                DataTable dtMst = _GetMstById(pid);
                DataTable dtDtl = _GetDtlById(pid, GetEffectiveScreenFilterId("0", false)); 
                int maxDtlId = dtDtl == null ? -1 : dtDtl.AsEnumerable().Select(dr => dr["ColumnId5"].ToString()).Where((s) => !string.IsNullOrEmpty(s)).Select(id => int.Parse(id)).DefaultIfEmpty(-1).Max();
                var validationResult = ValidateInput(ref mst, ref dtl, dtMst, dtDtl, "TableId3", "ColumnId5", skipValidation);
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

                var ds = PrepAdmDbTableData(mst, dtl, string.IsNullOrEmpty(mst["TableId3"]));
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
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetSystemId3List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlSystemId3S430", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "SystemId3", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetSheetNameListList(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlSheetNameList3S4150", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "SheetNameList", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetModifiedBy3List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlModifiedBy3S1451", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "ModifiedBy3", emptyAutoCompleteResponse));
            return ret;
        }
                        
        [WebMethod(EnableSession = false)]
        public ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>> GetDataType5List(string query, int topN, string filterBy)
        {
            Func<ApiResponse<AutoCompleteResponse, SerializableDictionary<string, AutoCompleteResponse>>> fn = () =>
            {
                SwitchContext(systemId, LCurr.CompanyId, LCurr.ProjectId);
                bool bAll = !query.StartsWith("**");
                bool bAddNew = !query.StartsWith("**");
                string keyId = query.Replace("**", "");
                DataTable dt = (new RO.Facade3.AdminSystem()).GetDdl(screenId, "GetDdlDataType3S17", bAddNew, bAll, 0, keyId, LcAppConnString, LcAppPw, string.Empty, base.LImpr, base.LCurr);
                return DataTableToApiResponse(dt, "", 0);
            };
            var ret = ProtectedCall(RestrictedApiCall(fn, systemId, screenId, "R", "DataType5", emptyAutoCompleteResponse));
            return ret;
        }

        /* AsmxRule: Custom Function */


        /* AsmxRule End: Custom Function */
           
    }
}
            
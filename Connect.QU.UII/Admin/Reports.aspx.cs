using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Admin
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<QU.Entities.Quotation> GetQuotationDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetQuotationDetails(QID);

        }

        [WebMethod]
        public static List<QU.Entities.ItemDetails> GetItemDetails(int ItemID, string ItemName)
        {
            return new QU.BAL.CommonBAL().GetItemDetails(ItemID, ItemName);
        }

        [WebMethod]
        public static List<QU.Entities.Requisition> GetRequisitionDetails(int RequisitionId)
        {
            return new QU.BAL.CommonBAL().GetRequisitionDetails(RequisitionId);
        }

        [WebMethod]
        public static string GenerateExcelForQuotation()
        {
            DataTable dt = new DataTable();
            string Result = "";
            try
            {
                string filename = "QuotationReports" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + ".xlsx";
                string path = @"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate";
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(@"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate");
                }
                string pathandFileName = @"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate" + "\\" + filename;
                dt = QU.BAL.UtilityBal.ConvertToDataTable(GetQuotationDetails(0));
                Result = QU.BAL.UtilityBal.GenerateExcel(dt, pathandFileName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Result;

        }

        [WebMethod]
        public static string GenerateExcelForRequisition()
        {
            DataTable dt = new DataTable();
            string Result = "";
            try
            {
                string filename = "RequisitionReports" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + ".xlsx";
                string path = @"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate";
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(@"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate");
                }
                string pathandFileName = @"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate" + "\\" + filename;
                dt = QU.BAL.UtilityBal.ConvertToDataTable(GetRequisitionDetails(0));
                Result = QU.BAL.UtilityBal.GenerateExcel(dt, pathandFileName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Result;
        }

        [WebMethod]
        public static string GenerateExcelForItems()
        {
            DataTable dt = new DataTable();
            string Result = "";
            try
            {
                string filename = "ItemsReports" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + ".xlsx";
                string path = @"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate";
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(@"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate");
                }
                string pathandFileName = @"C:\Users" + "\\" + Environment.UserName + @"\Downloads\ExcelGenerate" + "\\" + filename;
                dt = QU.BAL.UtilityBal.ConvertToDataTable(GetItemDetails(0, ""));
                Result = QU.BAL.UtilityBal.GenerateExcel(dt, pathandFileName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Result;
        }
    }
}
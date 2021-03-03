using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Store
{
    public partial class Requisition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = HttpContext.Current.User.Identity.Name.ToString();
        }

        [WebMethod]
        public static List<QU.Entities.CompanyDetails> GetCompanyDetailsNew(int CompanyID, string CompanyName)
        {
            return new QU.BAL.CommonBAL().GetCompanyDetailsNew(CompanyID, CompanyName);
        }
        
        [WebMethod]
        public static List<QU.Entities.Location> GetLocationDetails(int StateId, string StateName)
        {
            return new QU.BAL.CommonBAL().GetStateDetails(StateId, StateName);
        }


        [WebMethod]
        public static List<QU.Entities.Location> GetCityDetails(int CityId, string CityName, int StateId)
        {
            return new QU.BAL.CommonBAL().GetCityDetails(CityId, CityName, StateId);
        }

        [WebMethod]
        public static List<QU.Entities.Location> GetStateDetails(int StateId, string StateName, int CountryId)
        {
            return new QU.BAL.CommonBAL().GetStateDetails(StateId, StateName, CountryId);
        }

        [WebMethod]
        public static List<QU.Entities.Location> GetCountryDetails(int CountryId, string CountryName)
        {
            return new QU.BAL.CommonBAL().GetCountryDetails(CountryId, CountryName);
        }

        [WebMethod]
        public static string SaveUpdateRequisitionDetails(Connect.QU.Entities.Requisition cnt)
        {
            Random RN = new Random();
         
            cnt.TOCRequisitionId= RN.Next(10, 1000000);
            cnt.RequisitionNumber = Convert.ToString(cnt.QuotationId + "RQ" + DateTime.Now);
            cnt.UserId = HttpContext.Current.User.Identity.Name.ToString();
           
            return new QU.BAL.CommonBAL().SaveUpdateRequisitionDetails(cnt);
        }

        [WebMethod]
        public static List<QU.Entities.Requisition> GetRequisitionDetails(int RequisitionId)
        {
            return new QU.BAL.CommonBAL().GetRequisitionDetails(RequisitionId);


        }
        [WebMethod]
        public static List<QU.Entities.Quotation> GetQuotationDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetQuotationDetails(QID);

            // string x=DateTime.Now.Year +"-"+ (DateTime.Now.Year +1 );

        }
        [WebMethod]
        public static List<QU.Entities.TOCRequisition> GetTOCRequisitionDetails(int RequisitionId)
        {
            return new QU.BAL.CommonBAL().GetTOCRequisitionDetails(RequisitionId);
        }

        [WebMethod]
        public static List<QU.Entities.TOC> GetQuotationItemDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetQuotationItemDetails(QID);
        }
          [WebMethod]
        public static List<QU.Entities.TOC> GetQuotationItemDescriptionDetails(int QID,int ItemId)
        {
            return new QU.BAL.CommonBAL().GetQuotationItemDescriptionDetails(QID,ItemId);
        }
        
    }
}
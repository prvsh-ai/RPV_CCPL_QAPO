using Connect.QU.DAL;
using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.BAL
{
    public class CommonBAL
    {
        public List<QU.Entities.Location> GetLocationDetails(int CompanyId)
        {
            return new CommonDAL().GetLocationDetails(CompanyId);
        }
        public List<QU.Entities.CategoryDetails> GetCategoryDetails(int CategoryID, string CategoryName)
        {
            return new CommonDAL().GetCategoryDetails(CategoryID, CategoryName);
        }
        public List<QU.Entities.CompanyDetails> GetCompanyDetailsNew(int CompanyID, string CompanyName)
        {
            return new CommonDAL().GetCompanyDetailsNew(CompanyID, CompanyName);
        }
        public List<QU.Entities.Location> GetStateDetails(int StateId, string StateName)
        {
            return new CommonDAL().GetStateDetails(StateId, StateName);
        }
        public List<QU.Entities.ItemDetails> GetItemDetails(int ItemID, string ItemName)
        {
            return new CommonDAL().GetItemDetails(ItemID, ItemName);
        }
        public List<QU.Entities.Role> GetRoleDetails(int RoleID, string RoleName)
        {
            return new CommonDAL().GetRoleDetails(RoleID, RoleName);
        }
        public List<QU.Entities.Login> GetUserLoginDetails(int LoginId, string Name)
        {
            return new CommonDAL().GetUserLoginDetails(LoginId, Name);
        }
        public List<QU.Entities.Currency> GetCurrencyDetails(int CurrencyId, string CurrencyName)
        {
            return new CommonDAL().GetCurrencyDetails(CurrencyId, CurrencyName);
        }
        public List<QU.Entities.TOC> GetTOCDetails(int QID)
        {
            return new CommonDAL().GetTOCDetails(QID);
        }
        public List<QU.Entities.TOCRequisition> GetTOCRequisitionDetails(int RequisitionId)
        {
            return new CommonDAL().GetTOCRequisitionDetails(RequisitionId);
        }
        public List<QU.Entities.TOC> GetQuotationItemDetails(int QID)
        {
            return new CommonDAL().GetQuotationItemDetails(QID);
        }
        public List<QU.Entities.TOC> GetQuotationItemDescriptionDetails(int QID, int ItemId)
        {
            return new CommonDAL().GetQuotationItemDescriptionDetails(QID, ItemId);
        }
        public List<QU.Entities.Quotation> GetQuotationDetails(int QID)
        {
            return new CommonDAL().GetQuotationDetails(QID);
        }
        public List<QU.Entities.Requisition> GetRequisitionDetails(int RequisitionId)
        {
            return new CommonDAL().GetRequisitionDetails(RequisitionId);
        }
        public List<QU.Entities.Location> GetCityDetails(int CityId, string CityName, int StateId)
        {
            return new CommonDAL().GetCityDetails(CityId, CityName, StateId);
        }
        public List<QU.Entities.Location> GetStateDetails(int StateId, string StateName, int CountryId)
        {
            return new CommonDAL().GetStateDetails(StateId, StateName, CountryId);
        }
        public List<QU.Entities.Location> GetCountryDetails(int CountryId, string CountryName)
        {
            return new CommonDAL().GetCountryDetails(CountryId, CountryName);
        }
        public QU.Entities.QuotationTypeDetails GetQuotationDetailsOnQuotationType(int QuotationType)
        {
            return new CommonDAL().GetQuotationDetailsOnQuotationType(QuotationType);
        }
        public string InsertApprovalData(bool chkVal, int QID, string UserId)
        {
            return new CommonDAL().InsertApprovalData(chkVal, QID, UserId);
        }
        public string SaveUpdateCategoryDetails(CategoryDetails cnt)
        {
            return new CommonDAL().SaveUpdateCategoryDetails(cnt);
        }
        public string SaveUpdateItemDetails(ItemDetails cnt)
        {
            return new CommonDAL().SaveUpdateItemDetails(cnt);
        }
        public string SaveUpdateCompanyDetailsNew(CompanyDetails cnt)
        {
            return new CommonDAL().SaveUpdateCompanyDetailsNew(cnt);
        }
        public string SaveUpdateUserLoginDetails(Login cnt)
        {
            return new CommonDAL().SaveUpdateUserLoginDetails(cnt);
        }
        public string SaveUpdateCurrencyDetails(Currency cnt)
        {
            return new CommonDAL().SaveUpdateCurrencyDetails(cnt);
        }
        public string SaveUpdateQuotationDetails(Quotation cnt)
        {
            return new CommonDAL().SaveUpdateQuotationDetails(cnt);
        }
        public string SaveUpdateRequisitionDetails(Requisition cnt)
        {
            return new CommonDAL().SaveUpdateRequisitionDetails(cnt);
        }
    }
}

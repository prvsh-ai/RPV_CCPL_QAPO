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
        public string RemoveDetails(int Id, string Name)
        {
            return new CommonDAL().RemoveDetails(Id, Name);
        }
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

        //Role
        public List<QU.Entities.RoleUser> GetRoleUserDetails(int RoleId, string RoleName)
        {
            return new CommonDAL().GetRoleUserDetails(RoleId, RoleName);
        }

        public List<QU.Entities.TOC> GetTOCDetails(int QID)
        {
            return new CommonDAL().GetTOCDetails(QID);
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
        public List<QU.Entities.TOCRequisition> GetTOCRequisitionDetails(int RequisitionId, int mode)
        {
            return new CommonDAL().GetTOCRequisitionDetails(RequisitionId, mode);
        }
        public List<QU.Entities.TOCExecution> GetTOCExecutionDetails(int ExecutionId)
        {
            return new CommonDAL().GetTOCExecutionDetails(ExecutionId);
        }
        public List<QU.Entities.Execution> GetExecutionDetails(int ExecutionId)
        {
            return new CommonDAL().GetExecutionDetails(ExecutionId);
        }
        public List<QU.Entities.ExecutionReport> GenerateExecutionReport(int ExecutionId,int mode)
        {
            return new CommonDAL().GenerateExecutionReport(ExecutionId,mode);
        }

        public List<QU.Entities.RequisitionReport> GenerateRequisitionReport(int Requisitionid, int mode)
        {
            return new CommonDAL().GenerateRequisitionReport(Requisitionid, mode);
        }

        public List<QU.Entities.QuotationGenerateReport> GenerateQuotationReports(int QId, int mode)
        {
            return new CommonDAL().GenerateQuotationReports(QId, mode);
        }

        public List<QU.Entities.ItemReports> GenerateItemReports(int ItemID, string ItemName, int mode)
        {
            return new CommonDAL().GenerateItemReports(ItemID,ItemName,mode);
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
        //Role
        public string SaveUpdateRoleUserDetails(RoleUser cnt)
        {
            return new CommonDAL().SaveUpdateRoleUserDetails(cnt);
        }
        public string SaveUpdateQuotationDetails(Quotation cnt)
        {
            return new CommonDAL().SaveUpdateQuotationDetails(cnt);
        }
        public string SaveUpdateRequisitionDetails(Requisition cnt)
        {
            return new CommonDAL().SaveUpdateRequisitionDetails(cnt);
        }
        public string SaveUpdateExecutionDetails(Execution cnt)
        {
            return new CommonDAL().SaveUpdateExecutionDetails(cnt);
        }
    }
}

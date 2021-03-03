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
        //get
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
        public List<QU.Entities.Quotation> GetQuotationDetails(int QID)
        {
            return new CommonDAL().GetQuotationDetails(QID);
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
        //save
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
       
        //public string SaveUpdateQuotationDetails(
        //  int Mode,
        //  int QID,
        //  string QType,
        //  string QNo,
        //  DateTime QDate,
        //  string QFromCompanyName,
        //  string QFromAddress,
        //  string QFromContactNo,
        //  string QFromContactPerson,
        //  string QFromEmailID,
        //  string QFromGSTINNo,
        //  string ProjectName,
        //  string FinantialYear,
        //  string QToCompanyID,
        //  string QToCompanyName,
        //  string QToGSTINNo,
        //  string QToContactPerson,
        //  string QToAddress,
        //  string PaymentTerms,
        //  string ValidityOfQuote,
        //  string PlaceOfSupply,
        //  string TOCID,
        //  string TotalAmountDigit,
        //  string TotalAmountWords,
        //  string TaxableAmount,
        //  string Freight,
        //  string BankName,
        //  string BranchName,
        //  string BankAccountNo,
        //  string BankBranchIFSC,
        //  string TermsAndCondition,
        //  string Note1,
        //  string Note2,
        //  DateTime SignatureDate,
        //  string SignatureData,
        //    List<TOC> TocData,
        //  string UserID)
        //{
        //    return new CommonDAL().SaveUpdateQuotationDetails(
        //   Mode,
        //   QID,
        //   QType,
        //   QNo,
        //   QDate,
        //   QFromCompanyName,
        //   QFromAddress,
        //   QFromContactNo,
        //   QFromContactPerson,
        //   QFromEmailID,
        //   QFromGSTINNo,
        //   ProjectName,
        //   FinantialYear,
        //   QToCompanyID,
        //   QToCompanyName,
        //   QToGSTINNo,
        //   QToContactPerson,
        //   QToAddress,
        //   PaymentTerms,
        //   ValidityOfQuote,
        //   PlaceOfSupply,
        //   TOCID,
        //   TotalAmountDigit,
        //   TotalAmountWords,
        //   TaxableAmount,
        //   Freight,
        //   BankName,
        //   BranchName,
        //   BankAccountNo,
        //   BankBranchIFSC,
        //   TermsAndCondition,
        //   Note1,
        //   Note2,
        //   SignatureDate,
        //   SignatureData, TocData,
        //   UserID);
        //}

        //UserLogin
        //public string SaveUpdateUserLoginDetails(int Mode, int LoginId, string UserId, string Password, string Name, string MobileNo, string EmailID, string Designation, int RoleId, string Address)
        //{
        //    return new CommonDAL().SaveUpdateUserLoginDetails(Mode, LoginId, UserId, Password, Name, MobileNo, EmailID, Designation, RoleId, Address);
        //}

        //public string SaveUpdateCategoryDetails(
        //   int Mode,
        //    int CategoryID,
        //    string CategoryName,
        //    string Code,
        //    string DefaultSKU,
        //    string DefaultPU,
        //    bool Brand,
        //    bool Type,
        //    bool Name,
        //    bool Number,
        //    bool Color,
        //    bool Size,
        //    string UserId)
        //{
        //    return new CommonDAL().SaveUpdateCategoryDetails(
        //    Mode,
        //    CategoryID,
        //    CategoryName,
        //    Code,
        //    DefaultSKU,
        //    DefaultPU,
        //    Brand,
        //    Type,
        //    Name,
        //    Number,
        //    Color,
        //    Size,
        //    UserId);
        //}

        //public string SaveUpdateCompanyDetails(
        //    int Mode,
        //    int CompanyID,
        //    string CompanyName,
        //    string GSTINNo,
        //    string TINNo,
        //    string ServiceTaxNo,
        //    string EmailID,
        //    string CompanyLogo,
        //    string Address,
        //    string City,
        //    string State,
        //    string Country,
        //    string ContactNo,
        //    string ZipCode,
        //    string UserID)
        //{
        //    return new CommonDAL().SaveUpdateCompanyDetails(
        //    Mode,
        //    CompanyID,
        //    CompanyName,
        //    GSTINNo,
        //    TINNo,
        //    ServiceTaxNo,
        //    EmailID,
        //    CompanyLogo,
        //    Address,
        //    City,
        //    State,
        //    Country,
        //    ContactNo,
        //    ZipCode,
        //    UserID);
        //}

        //public List<QU.Entities.Txn_Company> GetCompanyDetails(int CompanyID, string CompanyName)
        //{
        //    return new CommonDAL().GetCompanyDetails(CompanyID, CompanyName);
        //}

        //public string SaveUpdateCurrencyDetails(int Mode, int CurrencyId, string CurrencyName)
        //{
        //    return new CommonDAL().SaveUpdateCurrencyDetails(Mode, CurrencyId, CurrencyName);
        //}



    }

}

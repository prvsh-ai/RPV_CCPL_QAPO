using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class Quotation
    {
        public int LoginId { get; set; }
        public int UserId { get; set; }

         //Table type data for 
        public List<TOC> TableOfContent { get; set; }
        public string DigitalSignature { get; set; }
        public string RevisedQuote { get; set; }
        public int QID { get; set; }
        public string QType { get; set; }
        public string QNo { get; set; }
        public DateTime QDate { get; set; }
        public string QFromCompanyName { get; set; }
        public string QFromAddress { get; set; }
        public string QFromContactNo { get; set; }
        public string QFromContactPerson { get; set; }
        public string QFromEmailID { get; set; }
        public string QFromGSTINNo { get; set; }
        public string ProjectName { get; set; }
        public string FinantialYear { get; set; }
        public string QToCompanyID { get; set; }
        public string QToCompanyName { get; set; }
        public string QToGSTINNo { get; set; }
        public string QToContactPerson { get; set; }
        public string QToAddress { get; set; }
        public string PaymentTerms { get; set; }
        public string ValidityOfQuote { get; set; }
        public string PlaceOfSupply { get; set; }
        public int TOCID { get; set; }
        public string TotalAmountDigit { get; set; }
        public string TotalAmountWords { get; set; }
        public string TaxableAmount { get; set; }
        public string Freight { get; set; }
        public string BankName { get; set; }
        public string BranchName { get; set; }
        public string BankAccountNo { get; set; }
        public string BankBranchIFSC { get; set; }
        public string TermsAndCondition { get; set; }
        public string Note1 { get; set; }
        public string Note2 { get; set; }
        public DateTime SignatureDate { get; set; }
        public string SignatureData { get; set; }
        public string User_ID { get; set; }
        public string Mode { get; set; }
        public bool Approved { get; set; }

        public int CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public bool? IsRequisition { get; set; }

        public bool? IsExecution { get; set; }
        public int? CurrencyId { get; set; }
        public int? LocationId { get; set; }

    }

    public class QuotationTypeDetails
    {
        public string QType { get; set; }
        public string QNo { get; set; }
        public string FinancialYear { get; set; }
        public string Result { get; set; }
    }

    public class QuotationGenerateReport
    {    
        public string QuotationType { get; set; }
        public string QuotationNumber { get; set; }
        public DateTime QuotationDate { get; set; }
        public string QuotationFromCompanyName { get; set; }
        public string QuotationFromAddress { get; set; }
        public string QuotationFromContactNo { get; set; }
        public string QuotationFromContactPerson { get; set; }
        public string QuotationFromEmailID { get; set; }
        public string QuotationFromGSTINNo { get; set; }
        public string ProjectName { get; set; }
        public string FinancialYear { get; set; }     
        public string QuotationToCompanyName { get; set; }
        public string QuotationToGSTINNo { get; set; }
        public string QuotationToContactPerson { get; set; }
        public string QuotationToAddress { get; set; }
        public string PaymentTerms { get; set; }
        public string ValidityOfQuote { get; set; }
        public string PlaceOfSupply { get; set; }        
        public string TotalAmountDigit { get; set; }
        public string TotalAmountWords { get; set; }
        public string TaxableAmount { get; set; }
        public string Freight { get; set; }
        public string BankName { get; set; }
        public string BranchName { get; set; }
        public string BankAccountNo { get; set; }
        public string BankBranchIFSC { get; set; }
        public string TermsAndCondition { get; set; }
        public string Comment1 { get; set; }
        public string Comment2 { get; set; }
        public DateTime SignatureDate { get; set; }          
        public bool Approved { get; set; }       
        public DateTime? CreatedDate { get; set; }



        public string DescriptionOfGoods { get; set; }
        public string Quantity { get; set; }
        public string HsnCode { get; set; }
        public string Rate { get; set; }//RateUnit
        public string Value { get; set; }
        public string Igst { get; set; }
        public string Amount { get; set; }//RateUnit
        public string TotalAmount { get; set; }
        public string ItemLineNumber { get; set; }
        public string ItemName { get; set; }
        public int LastRate { get; set; }
        public string InStockQuantity { get; set; }
       
    }
}

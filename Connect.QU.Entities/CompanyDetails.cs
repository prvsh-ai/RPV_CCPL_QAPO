using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class CompanyDetails
    {

        public int CompanyId { get; set; }
        public string Mode { get; set; }
        public string CompanyName { get; set; }
        public string GstinNo { get; set; }
        public string PanNo { get; set; }
        public string ServiceTaxNo { get; set; }
        public string EmailId { get; set; }
        public string Address { get; set; }
        public int CountryId { get; set; }
        public int StateId { get; set; }
        public int CityId { get; set; }
        public string LocationsId { get; set; }
        public int MobileNo { get; set; }
        public int ZipCode { get; set; }
        public string BankName { get; set; }
        public string BankBranch { get; set; }
        public string BankAccountNo { get; set; }
        public string BankIfsc { get; set; }
        public string POC { get; set; }
        public int POCNo { get; set; }
        public bool Customer { get; set; }
        public bool Vendor { get; set; }
        public string UserId { get; set; }


    }



}

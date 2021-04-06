using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class Currency
    {
        public int CurrencyId { get; set; }
        public string CurrencyName { get; set; }
        public string Mode { get; set; }
    }
    public class RoleUser
    {
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public bool RegisterPage { get; set; }
        public bool ReportsPage { get; set; }
        public bool RolePage { get; set; }
        public bool ItemPage { get; set; }
        public bool CurrencyPage { get; set; }
        public bool CompanyPage { get; set; }
        public bool CategoryPage { get; set; }
        public bool QuotationApprovalPage { get; set; }
        public bool QuotationPage { get; set; }
        public bool RequisitionPage { get; set; }
        public bool ExecutionPage { get; set; }
        public bool ItemApprovalPage { get; set; }
        public string Mode { get; set; }
    }

}

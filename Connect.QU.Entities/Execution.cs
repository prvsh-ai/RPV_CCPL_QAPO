using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class Execution
    {
        public List<TOCExecution> ExecutionItem { get; set; }
        public int ExecutionID { get; set; }
        public int? QuotationId { get; set; }
        public string DocumentNumber { get; set; }
        public string Division { get; set; }
        public string VersionNember { get; set; }
        public string SupplierName { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UserId { get; set; }

        public int Mode { get; set; }
    }

    public class TOCExecution
    {
        public int ExecutionId { get; set; }
        public int? QuotationId { get; set; }
        public string ItemDescription { get; set; }
        public string Unit { get; set; }
        public string UnitPrice { get; set; }
        public string Value { get; set; }
        public string TotalBilledQuantity { get; set; }
        public string TotalBilledValue { get; set; }
        public string BalanceQuantity { get; set; }
        public string BalanceValue { get; set; }
        public string BilledQuantity { get; set; }
        public string BilledValue { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
    }

}

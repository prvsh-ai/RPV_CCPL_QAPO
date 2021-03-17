using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class Requisition
    {
        public List<TOCRequisition> TableOfContent { get; set; }
        public int RequisitionId { get; set; }
        public int QuotationId { get; set; }
        public DateTime RequisitionDate { get; set; }
        public string RequiredBy { get; set; }
        public string ApprovedBy { get; set; }
        public string PreparedBy { get; set; }
        public int TOCRequisitionId { get; set; }

        public string RequisitionNumber { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public string Mode { get; set; }
        public string UserId { get; set; }
        public string QuotationNumber { get; set; }

    }
    public class TOCRequisition
    {
        public string DescriptionOfGoods { get; set; }
        public int RequiredQty { get; set; }
        public int InStockQty { get; set; }
        public int PurchaseQty { get; set; }
        public int Rate { get; set; }
        public int Amount { get; set; }
        public bool BillAvailable { get; set; }
        public string POItemNo { get; set; }
        public int ItemId { get; set; }
        public string ItemName { get; set; }

        //add
        public string Quantity { get; set; }

    }

    public class RequisitionReport
    {
        public string QuotationNumber { get; set; }
        public string DescriptionOfGoods { get; set; }
        public int RequiredQty { get; set; }
        public int InStockQty { get; set; }
        public int PurchaseQty { get; set; }
        public int Rate { get; set; }
        public int Amount { get; set; }
        public bool BillAvailable { get; set; }
        public string POItemNo { get; set; }       
        public string ItemName { get; set; }
        public DateTime RequisitionDate { get; set; }
        public string RequiredBy { get; set; }
        public string ApprovedBy { get; set; }
        public string PreparedBy { get; set; }
        public string RequisitionNumber { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }

    }
}

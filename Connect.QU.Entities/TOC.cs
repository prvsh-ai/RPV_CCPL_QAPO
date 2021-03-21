using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class TOC
    {

        // public string SerialNo { get; set; }
        public string DescriptionOfGoods { get; set; }
        public string Qty { get; set; }
        public string Hsn { get; set; }
        public string Rate { get; set; }//RateUnit
        public string Value { get; set; }
        public string Igst { get; set; }
        public string IgstAmount { get; set; }
        public string Sgst { get; set; }
        public string SgstAmount { get; set; }
        public string Cgst { get; set; }
        public string CgstAmount { get; set; }
        public string TotalAmount { get; set; }
        public string ItemLineNumber { get; set; }

        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public int LastRate { get; set; }
        public string InStockQuantity { get; set; }
    }
}

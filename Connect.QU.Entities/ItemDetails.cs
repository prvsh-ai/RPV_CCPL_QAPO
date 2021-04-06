using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class ItemDetails
    {

        public int ItemId { get; set; }
        public string Mode { get; set; }
        public string ItemName { get; set; }

        public int CategoryId { get; set; }
        public int LastPrice { get; set; }
        public string GstApplicable { get; set; }
        public int GstRate { get; set; }
        public bool RadStock { get; set; }
        public bool RadService { get; set; }
        public DateTime EffectiveStartDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public string IQ { get; set; }
        public string PQ { get; set; }
        public string InStockQuantity { get; set; }
        public bool Approved { get; set; }
        public string HsnCode { get; set; }
        public string Brand { get; set; }
        public string Type { get; set; }
        public string Name { get; set; }
        public string Number { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }
        public string UserId { get; set; }
        public string CategoryName { get; set; }


    }

    public class ItemReports
    {
       public string ItemName { get; set; }
        public int LastPrice { get; set; }
        public string GstApplicable { get; set; }
        public int GstRate { get; set; }
        public bool RadStock { get; set; }
        public bool RadService { get; set; }
        public DateTime EffectiveStartDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public string SKU { get; set; }
        public string PU { get; set; }
        public string InStockQuantity { get; set; }
        public bool Approved { get; set; }
        public string HsnCode { get; set; }
        public string Brand { get; set; }
        public string Type { get; set; }
        public string Name { get; set; }
        public string Number { get; set; }
        public string Color { get; set; }
        public string Size { get; set; }       
        public string CategoryName { get; set; }

    }



}

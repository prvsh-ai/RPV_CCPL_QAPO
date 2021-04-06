using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
    public class CategoryDetails
    {
        public int CategoryID { get; set; }
        public string CategoryName { get; set; }
        public string Code { get; set; }
        public int DefaultSKU { get; set; }
       // public string DefaultPU { get; set; }
        public bool Brand { get; set; }
        public bool Type { get; set; }
        public bool Name { get; set; }
        public bool Number { get; set; }
        public bool Color { get; set; }
        public bool Size { get; set; }
        public string Mode { get; set; }
        public string UserId { get; set; }
    }

}

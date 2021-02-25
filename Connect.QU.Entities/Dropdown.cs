using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{

    public class Dropdown
    {
        public string Value { get; set; }
        public string Item { get; set; }

    }


    public class GetDropdownData
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int OtherId { get; set; }

    }

}

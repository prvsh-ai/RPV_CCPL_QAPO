using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
  public  class Login
    {
        public int LoginId { get; set; }
        public string UserId { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public string MobileNo { get; set; }
        public string Designation { get; set; }
        public string EmailId { get; set; }
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public string Address { get; set; }
        public string Mode { get; set; }
       
  }
}

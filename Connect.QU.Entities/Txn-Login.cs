using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.Entities
{
   public class Txn_Login
   {
       public int LoginId { get; set; }
       public string UserId { get; set; }
       public int UserTypeId { get; set; }
       public string UserTypeName { get; set; }
       public string Password { get; set; }
       public string EmailId { get; set; }
       public string UserName { get; set; }
       public bool Active { get; set; }
       public bool IsBlocked { get; set; }
       public int CreatedBy { get; set; }
       public DateTime CreatedDate { get; set; }
       public int ModifiedBy { get; set; }
       public DateTime ModifiedDate { get; set; }
    }
}

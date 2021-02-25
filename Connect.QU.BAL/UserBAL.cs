using Connect.QU.DAL;
using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.BAL
{
   public class UserBAL
   {
       private UserDAL objUserDAL = new UserDAL();
       public _User Select(string UserId, string Password)
       {
           try
           {
               _User obj_User = objUserDAL.Select(UserId, Password);

               if (obj_User.obj_txn_Login.EmailId == null)
               {
                   throw new ArgumentException("Email ID does not exist");
               }
               else
               {
                   if (obj_User.obj_txn_Login.IsBlocked)
                   {
                       throw new ArgumentException("Email ID has been blocked.");
                   }

                   else
                   {
                       // if (Password == PasswordEncrypt.Decrypt(obj_User.obj_txn_Login.Password, "xyz!1234"))
                       if (Password == obj_User.obj_txn_Login.Password)
                       {
                           return obj_User;
                       }
                       else
                       {
                           throw new ArgumentException("Invalid password");
                       }
                   }
               }
           }
           catch (Exception)
           {
               throw;
           }
       }
    }
}

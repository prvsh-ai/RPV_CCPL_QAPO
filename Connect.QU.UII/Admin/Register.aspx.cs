using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Admin
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //[WebMethod]
        //public static string SaveUpdateUserLoginDetails(int Mode, int LoginId, string UserId, string Password, string Name, string MobileNo, string EmailID, string Designation, int RoleId, string Address)
        //{
        //    return new QU.BAL.CommonBAL().SaveUpdateUserLoginDetails(Mode, LoginId, UserId, Password, Name, MobileNo, EmailID, Designation, RoleId, Address);
        //}


        [WebMethod]
        public static string SaveUpdateUserLoginDetails(Connect.QU.Entities.Login cnt)
        {
            return new QU.BAL.CommonBAL().SaveUpdateUserLoginDetails(cnt);
        }



        [WebMethod]
        public static List<QU.Entities.Login> GetUserLoginDetails(int LoginId, string Name)
        {
            return new QU.BAL.CommonBAL().GetUserLoginDetails(LoginId, Name);
        }


        [WebMethod]
        public static List<QU.Entities.Role> GetRoleDetails(int RoleID, string RoleName)
        {
            return new QU.BAL.CommonBAL().GetRoleDetails(RoleID, RoleName);
        }

    }
}
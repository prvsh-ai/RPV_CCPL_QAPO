using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Page
{
    public partial class Role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<QU.Entities.RoleUser> GetRoleUserDetails(int RoleId, string RoleName)
        {
            return new QU.BAL.CommonBAL().GetRoleUserDetails(RoleId, RoleName);
        }

        [WebMethod]
        public static string SaveUpdateRoleUserDetails(Connect.QU.Entities.RoleUser cnt)
        {
            return new QU.BAL.CommonBAL().SaveUpdateRoleUserDetails(cnt);
        }

    }
}
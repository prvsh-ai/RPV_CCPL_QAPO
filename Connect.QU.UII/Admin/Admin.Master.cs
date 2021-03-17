using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        public string UserName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           // UserName = ((_User)(Session["objUser"])).obj_txn_Login.UserName;
            try
            {
                if (((_User)(Session["objUser"])) != null)
                {
                    UserName = ((_User)(Session["objUser"])).obj_txn_Login.UserName;
                }
                else
                {
                    Response.Redirect("Login.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx", false);
                throw;
            }
        }
    }
}
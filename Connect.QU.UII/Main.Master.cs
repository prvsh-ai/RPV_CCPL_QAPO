using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII
{
    public partial class Main : System.Web.UI.MasterPage
    {
        public string UserName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName = ((_User)(Session["objUser"])).obj_txn_Login.UserName;
        }
    }
}
using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (((_User)(Session["objUser"])).obj_txn_Login.UserTypeId == 2)
            {
                Response.Redirect("Patient/PatientHome.aspx");
            }
            else if (((_User)(Session["objUser"])).obj_txn_Login.UserTypeId == 8)
            {
                Response.Redirect("Clinician/ClinicianHome.aspx");
            }
        }
    }
}
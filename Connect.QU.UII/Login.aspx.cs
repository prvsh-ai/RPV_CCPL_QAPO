using Connect.QU.BAL;
using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII
{
    public partial class Login : System.Web.UI.Page
    {
        _User obj_User = null;
        UserBAL objUserBAL = new UserBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
         bool IsNetworkAvailable=   ConnectToInternet();
        }

        public static bool ConnectToInternet(int timeout_per_host_millis = 1000, string[] hosts_to_ping = null)
        {
            bool network_available = System.Net.NetworkInformation.NetworkInterface.GetIsNetworkAvailable();

            if (network_available)
            {
                string[] hosts = hosts_to_ping ?? new string[] { "www.google.com", "www.facebook.com" };

                Ping p = new Ping();

                foreach (string host in hosts)
                {
                    try
                    {
                        PingReply r = p.Send(host, timeout_per_host_millis);

                        if (r.Status == IPStatus.Success)
                            return true;
                    }
                    catch { }
                }
            }

            return false;
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                obj_User = objUserBAL.Select(txtUserId.Text.Trim(), txtPassword.Text.Trim());
                if (obj_User != null)
                {
                    //Session["Activeuser"] = txtEmailId_Login.Text;
                    //this.makeAuditLog(txtUserName.Text, 2);
                    Session["objUser"] = obj_User;
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                        1, // Ticket version
                        txtUserId.Text.Trim(), // Username associated with ticket
                        DateTime.Now, // Date/time issued
                        DateTime.Now.AddMinutes(30), // Date/time to expire
                        true, // "true" for a persistent user cookie
                        obj_User.obj_txn_Login.UserTypeId.ToString(), // User-data, in this case the roles
                        FormsAuthentication.FormsCookiePath);// Path cookie valid for

                    string hash = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);

                    if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

                    HttpContext.Current.Response.Cookies.Add(cookie);

                    switch (((_User)(Session["objUser"])).obj_txn_Login.UserTypeId)
                    {
                        case 2:
                            //Response.Redirect("Admin/CompanyDetails.aspx", false);
                            Response.Redirect("User/Quotation.aspx", false);

                            break;
                        case 3:
                            //Response.Redirect("Admin/CompanyDetails.aspx", false);
                            Response.Redirect("Store/Requisition.aspx", false);

                            break;
                        case 4:
                            //Response.Redirect("Admin/CompanyDetails.aspx", false);
                            Response.Redirect("User/Quotation.aspx", false);

                            break;

                        case 1:  // Clinician
                            Response.Redirect("Admin/Register.aspx", false);
                            break;

                        default:
                            break;
                    }
                }
            }
            catch (Exception Ex)
            {
                lblMsg.Text = "&nbsp;&nbsp;*" + Ex.Message.ToString();
                lblMsg.Visible = true;
            }

        }

    }
}
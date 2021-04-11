using Connect.QU.BAL;
using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection;
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
            //bool IsNetworkAvailable = ConnectToInternet();
        }

        //public static bool ConnectToInternet(int timeout_per_host_millis = 1000, string[] hosts_to_ping = null)
        //{
        //    bool network_available = System.Net.NetworkInformation.NetworkInterface.GetIsNetworkAvailable();

        //    if (network_available)
        //    {
        //        string[] hosts = hosts_to_ping ?? new string[] { "www.google.com", "www.facebook.com" };

        //        Ping p = new Ping();

        //        foreach (string host in hosts)
        //        {
        //            try
        //            {
        //                PingReply r = p.Send(host, timeout_per_host_millis);

        //                if (r.Status == IPStatus.Success)
        //                    return true;
        //            }
        //            catch { }
        //        }
        //    }

        //    return false;
        //}


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                var endDate11 = DateTime.Parse("2021-04-30");
                var startDate11 = DateTime.Now;
                if (startDate11 <= endDate11)
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
                            case 1:

                                if (((_User)(Session["objUser"])).obj_txn_Page.QuotationPage)
                                {
                                    Response.Redirect("User/Quotation.aspx", false);
                                    break;
                                }
                                //else
                                //{
                                //    Response.Redirect("Page/Register.aspx", false);
                                //}
                                //-----------------------

                                else if (((_User)(Session["objUser"])).obj_txn_Page.RegisterPage)
                                {
                                    Response.Redirect("Page/Register.aspx", false);
                                    break;
                                }

                                else if (((_User)(Session["objUser"])).obj_txn_Page.ReportsPage)
                                {
                                    Response.Redirect("Page/Reports.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.CompanyPage)
                                {
                                    Response.Redirect("Page/Company.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.RolePage)
                                {
                                    Response.Redirect("Page/Role.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.CategoryPage)
                                {
                                    Response.Redirect("Page/Category.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.ItemPage)
                                {
                                    Response.Redirect("Page/Item.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.QuotationApprovalPage)
                                {
                                    Response.Redirect("Page/Approval.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.ExecutionPage)
                                {
                                    Response.Redirect("Page/Execution.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.RequisitionPage)
                                {
                                    Response.Redirect("Page/Requisition.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.ItemApprovalPage)
                                {
                                    Response.Redirect("Page/ItemApproval.aspx", false);
                                    break;
                                }




                                break;

                            default:
                                if (((_User)(Session["objUser"])).obj_txn_Page.QuotationPage)
                                {
                                    Response.Redirect("User/Quotation.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.RegisterPage)
                                {
                                    Response.Redirect("Page/Register.aspx", false);
                                    break;
                                }

                                else if (((_User)(Session["objUser"])).obj_txn_Page.ReportsPage)
                                {
                                    Response.Redirect("Page/Reports.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.CompanyPage)
                                {
                                    Response.Redirect("Page/Company.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.RolePage)
                                {
                                    Response.Redirect("Page/Role.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.CategoryPage)
                                {
                                    Response.Redirect("Page/Category.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.ItemPage)
                                {
                                    Response.Redirect("Page/Item.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.QuotationApprovalPage)
                                {
                                    Response.Redirect("Page/Approval.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.ExecutionPage)
                                {
                                    Response.Redirect("Page/Execution.aspx", false);
                                    break;
                                }
                                else if (((_User)(Session["objUser"])).obj_txn_Page.RequisitionPage)
                                {
                                    Response.Redirect("Page/Requisition.aspx", false);
                                    break;
                                }

                                    break;
                        }
                    }
                }




                else
                {
                    lblMsg.Text = "DataBase is not Compliance completely, Please check your Authorization";
                    lblMsg.Visible = true;
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
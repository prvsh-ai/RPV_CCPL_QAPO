using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Page
{
    public partial class Page : System.Web.UI.MasterPage
    {
        public string UserName = "";
        public bool RegisterPage = false;
        public bool ReportsPage = false;
        public bool RolePage = false;
        public bool ItemPage = false;
        public bool CompanyPage = false;
        public bool CategoryPage = false;
        public bool QuotationApprovalPage = false;
        public bool QuotationPage = false;
        public bool RequisitionPage = false;
        public bool ExecutionPage = false;
        public bool ItemApprovalPage = false;
        protected void Page_Load(object sender, EventArgs e)
        {
           // UserName = ((_User)(Session["objUser"])).obj_txn_Login.UserName;
            try
            {
                if (((_User)(Session["objUser"])) != null)
                {
                    UserName = ((_User)(Session["objUser"])).obj_txn_Login.UserName;

                    RegisterPage=((_User)(Session["objUser"])).obj_txn_Page.RegisterPage;
                    ReportsPage = ((_User)(Session["objUser"])).obj_txn_Page.ReportsPage;
                    RolePage = ((_User)(Session["objUser"])).obj_txn_Page.RolePage;
                    ItemPage = ((_User)(Session["objUser"])).obj_txn_Page.ItemPage;
                    CompanyPage = ((_User)(Session["objUser"])).obj_txn_Page.CompanyPage;
                    CategoryPage = ((_User)(Session["objUser"])).obj_txn_Page.CategoryPage;
                    QuotationApprovalPage = ((_User)(Session["objUser"])).obj_txn_Page.QuotationApprovalPage;
                    RequisitionPage = ((_User)(Session["objUser"])).obj_txn_Page.RequisitionPage;
                    ExecutionPage = ((_User)(Session["objUser"])).obj_txn_Page.ExecutionPage;
                    ItemApprovalPage = ((_User)(Session["objUser"])).obj_txn_Page.ItemApprovalPage;

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
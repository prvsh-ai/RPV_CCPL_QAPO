using Connect.QU.Entities;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Page
{
    public partial class Approval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<QU.Entities.Quotation> GetQuotationDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetQuotationDetails(QID);
        }

        [WebMethod]
        public static List<QU.Entities.TOC> GetTOCDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetTOCDetails(QID);
        }
        
        [WebMethod]
        public static string InsertApprovalData(bool chkVal, int QID)
        {

            return new QU.BAL.CommonBAL().InsertApprovalData(chkVal, QID, HttpContext.Current.User.Identity.Name.ToString());
        }
    }
}
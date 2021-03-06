using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Admin
{
    public partial class Currency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<QU.Entities.Currency> GetCurrencyDetails(int CurrencyId, string CurrencyName)
        {
            return new QU.BAL.CommonBAL().GetCurrencyDetails(CurrencyId, CurrencyName);
        }

        [WebMethod]
        public static string SaveUpdateCurrencyDetails(Connect.QU.Entities.Currency cnt)
        {
            return new QU.BAL.CommonBAL().SaveUpdateCurrencyDetails(cnt);
        }

    }
}
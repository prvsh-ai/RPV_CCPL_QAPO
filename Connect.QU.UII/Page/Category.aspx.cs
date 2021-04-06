using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Page
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = HttpContext.Current.User.Identity.Name.ToString();
        }

        [WebMethod]
        public static List<QU.Entities.CategoryDetails> GetCategoryDetails(int CategoryID, string CategoryName)
        {
            return new QU.BAL.CommonBAL().GetCategoryDetails(CategoryID, CategoryName);
        }

        [WebMethod]
        public static string SaveUpdateCategoryDetails(CategoryDetails cnt)
        {
            cnt.UserId = HttpContext.Current.User.Identity.Name.ToString();
            return new QU.BAL.CommonBAL().SaveUpdateCategoryDetails(cnt);
        }

    }
}
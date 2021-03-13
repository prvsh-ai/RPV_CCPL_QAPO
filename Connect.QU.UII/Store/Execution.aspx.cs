using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connect.QU.UII.Store
{
    public partial class Execution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<QU.Entities.TOCRequisition> GetTOCRequisitionDetails(int Qid)
        {
            return new QU.BAL.CommonBAL().GetTOCRequisitionDetails(Qid, 2);
        }


        [WebMethod]
        public static List<QU.Entities.TOCExecution> GetTOCExecutionDetails(int ExecutionId)
        {
            return new QU.BAL.CommonBAL().GetTOCExecutionDetails(ExecutionId);
        }


        [WebMethod]
        public static string SaveUpdateExecutionDetails(Connect.QU.Entities.Execution cnt)
        {
            cnt.UserId = HttpContext.Current.User.Identity.Name.ToString();

            return new QU.BAL.CommonBAL().SaveUpdateExecutionDetails(cnt);
        }

        [WebMethod]
        public static List<QU.Entities.Execution> GetExecutionDetails(int ExecutionId)
        {
            return new QU.BAL.CommonBAL().GetExecutionDetails(ExecutionId);
        }
     
    }
}
using Connect.QU.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.DAL
{
  public  class UserDAL
    { 
        #region Fields
        private SqlConnection myCon = null;
        private SqlCommand myCmd = null;
        private SqlDataAdapter myAdp = null;
        private SqlTransaction myTran = null;
        private DBConnectionDAL myDBConectionDAL = new DBConnectionDAL();
        #endregion
        #region Constructors
        public UserDAL()
        {
        }        
        #endregion
        #region Method
        public _User Select(string UserId,string Password)
        {
            try
            {

                _User obj_User = new _User();
                myCon = myDBConectionDAL.AssignConnection();               
               
                myCmd = new SqlCommand("spLogin1", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.AddWithValue("@UserId", UserId);
                myCmd.Parameters.AddWithValue("@Password", Password);
                myDBConectionDAL.OpenConnection();
                using (SqlDataReader mySqlDataReader = myCmd.ExecuteReader())
                {

                    if (mySqlDataReader.Read())
                    {
                        // Quotation project : 29 Nov 2020
                        //----------------------------------------------Commented for bypass network connection
                        obj_User.obj_txn_Login.LoginId = Convert.ToInt32(mySqlDataReader["LoginId"]);
                        obj_User.obj_txn_Login.UserId = mySqlDataReader["UserId"].ToString();
                        obj_User.obj_txn_Login.UserTypeId = Convert.ToInt32(mySqlDataReader["RoleId"]);
                        obj_User.obj_txn_Login.Password = mySqlDataReader["Password"].ToString();
                        obj_User.obj_txn_Login.EmailId = mySqlDataReader["EmailId"].ToString();
                        obj_User.obj_txn_Login.UserName = mySqlDataReader["Name"].ToString();


                       
                        if (!string.IsNullOrEmpty(mySqlDataReader["RegisterPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.RegisterPage = Convert.ToBoolean(mySqlDataReader["RegisterPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["ReportsPage"].ToString()))
                        {
                             obj_User.obj_txn_Page.ReportsPage = Convert.ToBoolean(mySqlDataReader["ReportsPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["RolePage"].ToString()))
                        {
                            obj_User.obj_txn_Page.RolePage = Convert.ToBoolean(mySqlDataReader["RolePage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["ItemPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.ItemPage = Convert.ToBoolean(mySqlDataReader["ItemPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["CompanyPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.CompanyPage = Convert.ToBoolean(mySqlDataReader["CompanyPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["CategoryPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.CategoryPage = Convert.ToBoolean(mySqlDataReader["CategoryPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["QuotationApprovalPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.QuotationApprovalPage = Convert.ToBoolean(mySqlDataReader["QuotationApprovalPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["QuotationPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.QuotationPage = Convert.ToBoolean(mySqlDataReader["QuotationPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["RequisitionPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.RequisitionPage = Convert.ToBoolean(mySqlDataReader["RequisitionPage"]);
                        }

                        if (!string.IsNullOrEmpty(mySqlDataReader["ExecutionPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.ExecutionPage = Convert.ToBoolean(mySqlDataReader["ExecutionPage"]);
                        }
                        if (!string.IsNullOrEmpty(mySqlDataReader["ItemApprovalPage"].ToString()))
                        {
                            obj_User.obj_txn_Page.ItemApprovalPage = Convert.ToBoolean(mySqlDataReader["ItemApprovalPage"]);
                        }

                        



                    }
                }

                return obj_User;

            }
            catch
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
        }
 

        #endregion
    }
}

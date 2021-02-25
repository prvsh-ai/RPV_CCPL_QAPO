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
               
                myCmd = new SqlCommand("spLogin", myCon);
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


                        //----------------------------------------------




                       // obj_User.obj_txn_Login.MobileNo = Convert.ToBoolean(mySqlDataReader["IsBlocked"]);

                        // obj_User.obj_txn_Login.CreatedDate = Convert.ToDateTime(mySqlDataReader["CreatedDate"]);
                        //obj_User.obj_txn_User.RegistrationNumber = mySqlDataReader["RegistrationNumber"].ToString();
                        //obj_User.obj_txn_User.FirstName = mySqlDataReader["FirstName"].ToString();
                        //obj_User.obj_txn_User.LastName = mySqlDataReader["LastName"].ToString();
                        //obj_User.obj_txn_User.Gender = mySqlDataReader["Gender"].ToString();
                        //obj_User.obj_txn_User.LandLineNo = mySqlDataReader["LandLineNumber"].ToString();
                        //obj_User.obj_txn_User.DesignationId = Convert.ToInt32(mySqlDataReader["DesignationId"]);
                        //obj_User.obj_txn_User.DesignationName = mySqlDataReader["DesignationName"].ToString();                      


                     



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

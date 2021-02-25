using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Connect.QU.DAL
{
    class DBConnectionDAL
    {
        #region Fields
        private SqlConnection myCon = null;
        #endregion
        #region Constructors
        public DBConnectionDAL()
        {
        }
        #endregion
        #region Methods
        public void OpenConnection()
        {
            try
            {
                if (myCon.State == ConnectionState.Closed)
                {
                    myCon.Open();
                }
            }
            catch
            {
                throw;
            }
        }
        public void CloseConnection()
        {
            try
            {
                if (myCon.State == ConnectionState.Open)
                {
                    myCon.Close();
                    myCon.Dispose();
                }
            }
            catch
            {
                throw;
            }
        }
        public SqlConnection AssignConnection()
        {
            myCon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Connection_EA"].ToString());
            return myCon;
        }
        #endregion

    }
}

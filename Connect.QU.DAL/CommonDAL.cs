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
    public class CommonDAL
    {

        #region Fields
        private SqlConnection myCon = null;
        private SqlCommand myCmd = null;
        private SqlDataAdapter myAdp = null;
        private SqlTransaction myTran = null;
        private DBConnectionDAL myDBConectionDAL = new DBConnectionDAL();
        #endregion
        public List<QU.Entities.Quotation> GetQuotationDetails(int QId)
        {
            List<Entities.Quotation> Entities = new List<Entities.Quotation>();
            Entities.Quotation CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetQuotationDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (QId != 0)
                {
                    myCmd.Parameters.AddWithValue("@QID", QId);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Quotation();
                    CL.QID = Convert.ToInt32(sdr["QID"]);
                    CL.QNo = sdr["QNo"].ToString();
                    if (sdr["QType"].ToString() == "1")
                    {
                        CL.QType = "SU";
                    }
                   else if (sdr["QType"].ToString() == "2")
                    {
                        CL.QType = "SER";
                    }
                    else
                    {
                        CL.QType = "TEN";
                    }
                    CL.QDate = Convert.ToDateTime(sdr["QDate"]);
                    CL.QFromCompanyName = sdr["QFromCompanyName"].ToString();
                    CL.QFromAddress = sdr["QFromAddress"].ToString();
                    CL.QFromContactNo = sdr["QFromContactNo"].ToString();
                    CL.QFromContactPerson = sdr["QFromContactPerson"].ToString();
                    CL.QFromEmailID = sdr["QFromEmailID"].ToString();
                    CL.QFromGSTINNo = sdr["QFromGSTINNo"].ToString();
                    CL.ProjectName = sdr["ProjectName"].ToString();
                    CL.FinantialYear = sdr["FinantialYear"].ToString();
                    CL.QToCompanyID = sdr["QToCompanyID"].ToString();
                    CL.QToCompanyName = sdr["QToCompanyName"].ToString();
                    CL.QToGSTINNo = sdr["QToGSTINNo"].ToString();
                    CL.QToContactPerson = sdr["QToContactPerson"].ToString();
                    CL.QToAddress = sdr["QToAddress"].ToString();
                    CL.PaymentTerms = sdr["PaymentTerms"].ToString();
                    CL.ValidityOfQuote = sdr["ValidityOfQuote"].ToString();
                    CL.PlaceOfSupply = sdr["PlaceOfSupply"].ToString();
                    CL.TOCID = Convert.ToInt32(sdr["TOCID"]);
                    CL.TotalAmountDigit = sdr["TotalAmountDigit"].ToString();
                    CL.TotalAmountWords = sdr["TotalAmountWords"].ToString();
                    CL.TaxableAmount = sdr["TaxableAmount"].ToString();
                    CL.Freight = sdr["Freight"].ToString();
                    CL.BankName = sdr["BankName"].ToString();
                    CL.BranchName = sdr["BranchName"].ToString();
                    CL.BankAccountNo = sdr["BankAccountNo"].ToString();
                    CL.BankBranchIFSC = sdr["BankBranchIFSC"].ToString();
                    CL.TermsAndCondition = sdr["TermsAndCondition"].ToString();
                    CL.Note1 = sdr["Note1"].ToString();
                    CL.Note2 = sdr["Note2"].ToString();
                    CL.SignatureDate = Convert.ToDateTime(sdr["SignatureDate"]);
                    CL.SignatureData = sdr["SignatureData"].ToString();
                    CL.Approved = Convert.ToBoolean(sdr["Approved"]);
                    Entities.Add(CL);
                }
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Location> GetCityDetails(int CityId, string CityName, int StateId)
        {
            List<Entities.Location> Entities = new List<Entities.Location>();
            Entities.Location CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetCity", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;

                if (CityId != 0)
                {
                    myCmd.Parameters.AddWithValue("@CityId", CityId);
                }
                if (CityName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@CityName", CityName);
                }
                if (StateId != 0)
                {
                    myCmd.Parameters.AddWithValue("@StateId", StateId);
                }


                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Location();
                    CL.CityId = Convert.ToInt32(sdr["CityId"]);
                    CL.CityName = sdr["CityName"].ToString();
                    CL.StateId = Convert.ToInt32(sdr["StateId"]);
                    CL.StateName = sdr["StateName"].ToString();
                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Location> GetStateDetails(int StateId, string StateName, int CountryId)
        {
            List<Entities.Location> Entities = new List<Entities.Location>();
            Entities.Location CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetState", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;

                if (StateId != 0)
                {
                    myCmd.Parameters.AddWithValue("@StateID", StateId);
                }
                if (StateName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@StateName", StateName);
                }
                if (CountryId != 0)
                {
                    myCmd.Parameters.AddWithValue("@CountryID", CountryId);
                }


                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Location();
                    CL.CountryId = Convert.ToInt32(sdr["CountryId"]);
                    CL.CountryName = sdr["CountryName"].ToString();
                    CL.StateId = Convert.ToInt32(sdr["StateId"]);
                    CL.StateName = sdr["StateName"].ToString();
                    Entities.Add(CL);
                }
            }
            catch
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Location> GetCountryDetails(int CountryId, string CountryName)
        {
            List<Entities.Location> Entities = new List<Entities.Location>();
            Entities.Location CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetCountry", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;

                if (CountryId != 0)
                {
                    myCmd.Parameters.AddWithValue("@CountryID", CountryId);
                }
                if (CountryName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@CountryName", CountryName);
                }


                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Location();
                    CL.CountryId = Convert.ToInt32(sdr["CountryId"]);
                    CL.CountryName = sdr["CountryName"].ToString();

                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Currency> GetCurrencyDetails(int CurrencyId, string CurrencyName)
        {
            List<Entities.Currency> Entities = new List<Entities.Currency>();
            Entities.Currency CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetCurrency", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (CurrencyId != 0)
                {
                    myCmd.Parameters.AddWithValue("@CurrencyId", CurrencyId);
                }
                if (CurrencyName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@CurrencyName", CurrencyName);
                }
                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Currency();
                    CL.CurrencyId = Convert.ToInt32(sdr["CurrencyId"]);
                    CL.CurrencyName = sdr["CurrencyName"].ToString();
                    Entities.Add(CL);
                }
            }
            catch
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.TOC> GetTOCDetails(int QID)
        {
            List<Entities.TOC> Entities = new List<Entities.TOC>();
            Entities.TOC CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetTOC", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (QID != 0)
                {
                    myCmd.Parameters.AddWithValue("@QID", QID);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.TOC();
                    CL.DescriptionOfGoods = sdr["DescriptionOfGoods"].ToString();
                    CL.Qty = sdr["Qty"].ToString();
                    CL.Hsn = sdr["Hsn"].ToString();
                    CL.Rate = sdr["Rate"].ToString();
                    CL.Value = sdr["Value"].ToString();
                    CL.Igst = sdr["Igst"].ToString();
                    CL.Amount = sdr["Amount"].ToString();
                    CL.TotalAmount1 = sdr["TotalAmount1"].ToString();

                    Entities.Add(CL);
                }
            }
            catch
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.CategoryDetails> GetCategoryDetails(int CategoryID, string CategoryName)
        {
            List<Entities.CategoryDetails> Entities = new List<Entities.CategoryDetails>();
            Entities.CategoryDetails CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetCategoryDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (CategoryID != 0)
                {
                    myCmd.Parameters.AddWithValue("@CategoryID", CategoryID);
                }

                if (CategoryName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@CategoryName", CategoryName);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.CategoryDetails();
                    CL.CategoryID = Convert.ToInt32(sdr["CategoryID"]);
                    CL.CategoryName = sdr["CategoryName"].ToString();
                    CL.Code = sdr["Code"].ToString();
                    CL.DefaultSKU = sdr["DefaultSKU"].ToString();
                    CL.DefaultPU = sdr["DefaultPU"].ToString();
                    CL.Brand = Convert.ToBoolean(sdr["Brand"].ToString());
                    CL.Type = Convert.ToBoolean(sdr["Type"].ToString());
                    CL.Name = Convert.ToBoolean(sdr["Name"].ToString());
                    CL.Number = Convert.ToBoolean(sdr["Number"].ToString());
                    CL.Color = Convert.ToBoolean(sdr["Color"].ToString());
                    CL.Size = Convert.ToBoolean(sdr["Size"].ToString());


                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.CompanyDetails> GetCompanyDetailsNew(int CompanyID, string CompanyName)
        {
            List<Entities.CompanyDetails> Entities = new List<Entities.CompanyDetails>();
            Entities.CompanyDetails CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetCompanyDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (CompanyID != 0)
                {
                    myCmd.Parameters.AddWithValue("@CompanyID", CompanyID);
                }

                if (CompanyName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@CompanyName", CompanyName);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.CompanyDetails();
                    CL.CompanyId = Convert.ToInt32(sdr["CompanyId"]);
                    CL.CompanyName = sdr["CompanyName"].ToString();
                    CL.GstinNo = sdr["GstinNo"].ToString();
                    CL.PanNo = sdr["PanNo"].ToString();
                    CL.ServiceTaxNo = sdr["ServiceTaxNo"].ToString();
                    CL.EmailId = sdr["EmailId"].ToString();
                    CL.MobileNo = Convert.ToInt32(sdr["MobileNo"]);
                    CL.Address = sdr["Address"].ToString();
                    CL.LocationsId = sdr["LocationsId"].ToString();
                    CL.CountryId = Convert.ToInt32(sdr["CountryId"]);
                    CL.StateId = Convert.ToInt32(sdr["StateId"]);
                    CL.ZipCode = Convert.ToInt32(sdr["Zipcode"]);
                    CL.CityId = Convert.ToInt32(sdr["CityId"]);

                    CL.BankName = sdr["BankName"].ToString();
                    CL.BankBranch = sdr["BankBranch"].ToString();
                    CL.BankAccountNo = sdr["BankAccountNo"].ToString();
                    CL.BankIfsc = sdr["BankIfsc"].ToString();
                    CL.POC = sdr["POC"].ToString();
                    CL.POCNo = Convert.ToInt32(sdr["POCNo"]);

                    CL.Customer = Convert.ToBoolean(sdr["Customer"]);
                    CL.Vendor = Convert.ToBoolean(sdr["Vendor"]);


                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Location> GetStateDetails(int StateId, string StateName)
        {
            List<Entities.Location> Entities = new List<Entities.Location>();
            Entities.Location CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetStateDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (StateId != 0)
                {
                    myCmd.Parameters.AddWithValue("@StateID", StateId);
                }

                if (StateName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@StateName", StateName);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Location();
                    CL.StateId = Convert.ToInt32(sdr["StateID"]);
                    CL.StateName = sdr["StateName"].ToString();


                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.ItemDetails> GetItemDetails(int ItemID, string ItemName)
        {
            List<Entities.ItemDetails> Entities = new List<Entities.ItemDetails>();
            Entities.ItemDetails CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetItemDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (ItemID != 0)
                {
                    myCmd.Parameters.AddWithValue("@ItemID", ItemID);
                }

                if (ItemName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@ItemName", ItemName);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.ItemDetails();
                    CL.ItemId = Convert.ToInt32(sdr["ItemID"]);
                    CL.ItemName = sdr["ItemName"].ToString();
                    CL.CategoryId = Convert.ToInt32(sdr["CategoryId"]);
                    CL.LastPrice = Convert.ToInt32(sdr["LastPrice"]);
                    CL.GstApplicable = sdr["GstApplicable"].ToString();
                    CL.GstRate = Convert.ToInt32(sdr["GstRate"]);
                    CL.RadStock = Convert.ToBoolean(sdr["RadStock"]);
                    CL.RadService = Convert.ToBoolean(sdr["RadService"]);
                    CL.SKU = sdr["SKU"].ToString();
                    CL.PU = sdr["PU"].ToString();
                    CL.HsnCode = sdr["HsnCode"].ToString();
                    CL.EffectiveStartDate = Convert.ToDateTime(sdr["EffectiveStartDate"]);
                    CL.EffectiveEndDate = Convert.ToDateTime(sdr["EffectiveEndDate"]);

                    CL.Brand = sdr["Brand"].ToString();
                    CL.Type = sdr["Type"].ToString();
                    CL.Name = sdr["Name"].ToString();
                    CL.Number = sdr["Number"].ToString();
                    CL.Color = sdr["Color"].ToString();
                    CL.Size = sdr["Size"].ToString();
                    CL.CategoryName = sdr["categoryName"].ToString();
                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Role> GetRoleDetails(int RoleID, string RoleName)
        {
            List<Entities.Role> Entities = new List<Entities.Role>();
            Entities.Role CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetRoleType", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (RoleID != 0)
                {
                    myCmd.Parameters.AddWithValue("@RoleID", RoleID);
                }

                if (RoleName.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@RoleName", RoleName);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Role();
                    CL.RoleID = Convert.ToInt32(sdr["RoleID"]);
                    CL.RoleName = sdr["RoleName"].ToString();
                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public List<QU.Entities.Login> GetUserLoginDetails(int LoginId, string Name)
        {
            List<Entities.Login> Entities = new List<Entities.Login>();
            Entities.Login CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetUserLoginDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (LoginId != 0)
                {
                    myCmd.Parameters.AddWithValue("@LoginId", LoginId);
                }

                if (Name.Trim() != "")
                {
                    myCmd.Parameters.AddWithValue("@Name", Name);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Login();
                    CL.LoginId = Convert.ToInt32(sdr["LoginId"]);
                    CL.Name = sdr["Name"].ToString();
                    CL.MobileNo = sdr["MobileNo"].ToString();
                    CL.EmailId = sdr["EmailID"].ToString();
                    CL.Address = sdr["Address"].ToString();
                    CL.Designation = sdr["Designation"].ToString();
                    CL.RoleId = Convert.ToInt32(sdr["RoleId"]);
                    CL.RoleName = sdr["RoleName"].ToString();
                    CL.Password = sdr["Password"].ToString();
                    CL.UserId = sdr["UserId"].ToString();
                    Entities.Add(CL);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }

        //new
        public QU.Entities.QuotationTypeDetails GetQuotationDetailsOnQuotationType(int QuotationType)
        {
            QuotationTypeDetails Entities = new QuotationTypeDetails();

            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetQuotationDetailsOnQuotationType", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (QuotationType != 0)
                {
                    myCmd.Parameters.AddWithValue("@QuotationType", QuotationType);

                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                if (sdr.Read())
                {
                    if (sdr["QNo"].ToString() == null || sdr["QNo"].ToString() == "")
                    {
                        Entities.QNo = "0";
                    }
                    if (QuotationType == 1)
                    {
                        Entities.QNo = sdr["QNo"].ToString().Substring(17);
                    }
                    else
                    {
                        Entities.QNo = sdr["QNo"].ToString().Substring(18);
                    }

                    if (sdr["FinantialYear"].ToString() == null || sdr["FinantialYear"].ToString() == null)
                    {
                        Entities.FinancialYear = DateTime.Now.Year + "-" + (DateTime.Now.Year + 1);

                    }
                    else
                    {
                        Entities.FinancialYear = sdr["FinantialYear"].ToString();
                    }
                }
                else
                {
                    Entities.Result = "Quotation Type is not Available";
                    Entities.QNo = "0";
                    Entities.FinancialYear = DateTime.Now.Year + "-" + (DateTime.Now.Year + 1);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Entities;
        }
        public string SaveUpdateCategoryDetails(CategoryDetails cnt)
        {
            string Result = null;
            myCon = myDBConectionDAL.AssignConnection();
            try
            {
                myCmd = new SqlCommand("spCategoryDetailsInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                //if (CompanyID != 0)
                //{
                myCmd.Parameters.AddWithValue("@CategoryID", cnt.CategoryID);
                //}

                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@CategoryName", cnt.CategoryName);
                myCmd.Parameters.AddWithValue("@Code", cnt.Code);
                myCmd.Parameters.AddWithValue("@DefaultSKU", cnt.DefaultSKU);
                myCmd.Parameters.AddWithValue("@DefaultPU", cnt.DefaultPU);
                myCmd.Parameters.AddWithValue("@Brand", cnt.Brand);
                myCmd.Parameters.AddWithValue("@Type", cnt.Type);
                myCmd.Parameters.AddWithValue("@Name", cnt.Name);
                myCmd.Parameters.AddWithValue("@Number", cnt.Number);
                myCmd.Parameters.AddWithValue("@Color", cnt.Color);
                myCmd.Parameters.AddWithValue("@Size", cnt.Size);
                myCmd.Parameters.AddWithValue("@UserID", cnt.UserId);
                myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@UpdatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);

                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();
                Result = myCmd.Parameters["@Message"].Value.ToString();

            }
            catch (Exception ex)
            {
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
            return Result;
        }
        public string SaveUpdateItemDetails(ItemDetails cnt)
        {

            string Result = null;
            myCon = myDBConectionDAL.AssignConnection();

            try
            {
                myCmd = new SqlCommand("spItemDetailsInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.AddWithValue("@ItemID", cnt.ItemId);
                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@ItemName", cnt.ItemName);
                myCmd.Parameters.AddWithValue("@CategoryId", cnt.CategoryId);
                myCmd.Parameters.AddWithValue("@LastPrice", cnt.LastPrice);
                myCmd.Parameters.AddWithValue("@GstApplicable", Convert.ToInt32(cnt.GstApplicable));
                myCmd.Parameters.AddWithValue("@GstRate", cnt.GstRate);
                myCmd.Parameters.AddWithValue("@RadStock", cnt.RadStock);
                myCmd.Parameters.AddWithValue("@RadService", cnt.RadService);
                myCmd.Parameters.AddWithValue("@SKU", cnt.SKU);
                myCmd.Parameters.AddWithValue("@PU", cnt.PU);
                myCmd.Parameters.AddWithValue("@HsnCode", cnt.HsnCode);
                myCmd.Parameters.AddWithValue("@EffectiveStartDate", cnt.EffectiveStartDate);
                myCmd.Parameters.AddWithValue("@EffectiveEndDate", cnt.EffectiveEndDate);

                myCmd.Parameters.AddWithValue("@Brand", cnt.Brand);
                myCmd.Parameters.AddWithValue("@Type", cnt.Type);
                myCmd.Parameters.AddWithValue("@Name", cnt.Name);
                myCmd.Parameters.AddWithValue("@Number", cnt.Number);
                myCmd.Parameters.AddWithValue("@Color", cnt.Color);
                myCmd.Parameters.AddWithValue("@Size", cnt.Size);



                myCmd.Parameters.AddWithValue("@UserID", cnt.UserId);
                myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@UpdatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);

                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            catch (Exception ex)
            {
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
            return Result;
        }
        public string SaveUpdateCompanyDetailsNew(CompanyDetails cnt)
        {

            string Result = null;
            myCon = myDBConectionDAL.AssignConnection();

            try
            {
                myCmd = new SqlCommand("spCompanyDetailsInsertUpdateNew", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                //if (CompanyID != 0)
                //{
                myCmd.Parameters.AddWithValue("@CompanyID", cnt.CompanyId);
                //}

                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@CompanyName", cnt.CompanyName);
                myCmd.Parameters.AddWithValue("@GstinNo", cnt.GstinNo);
                myCmd.Parameters.AddWithValue("@PanNo", cnt.PanNo);
                myCmd.Parameters.AddWithValue("@ServiceTaxNo", cnt.ServiceTaxNo);
                myCmd.Parameters.AddWithValue("@EmailId", cnt.EmailId);
                myCmd.Parameters.AddWithValue("@LocationsId", cnt.LocationsId);
                myCmd.Parameters.AddWithValue("@Address", cnt.Address);
                myCmd.Parameters.AddWithValue("@CityId", cnt.CityId);
                myCmd.Parameters.AddWithValue("@StateId", cnt.StateId);
                myCmd.Parameters.AddWithValue("@CountryId", cnt.CountryId);
                myCmd.Parameters.AddWithValue("@MobileNo", cnt.MobileNo);
                myCmd.Parameters.AddWithValue("@ZipCode", cnt.ZipCode);

                myCmd.Parameters.AddWithValue("@BankName", cnt.BankName);
                myCmd.Parameters.AddWithValue("@BankBranch", cnt.BankBranch);
                myCmd.Parameters.AddWithValue("@BankAccountNo", cnt.BankAccountNo);
                myCmd.Parameters.AddWithValue("@BankIfsc", cnt.BankIfsc);
                myCmd.Parameters.AddWithValue("@POC", cnt.POC);
                myCmd.Parameters.AddWithValue("@POCNo", cnt.POCNo);

                myCmd.Parameters.AddWithValue("@Customer", cnt.Customer);
                myCmd.Parameters.AddWithValue("@Vendor", cnt.Vendor);

                myCmd.Parameters.AddWithValue("@UserID", cnt.UserId);
                myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@UpdatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);

                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            catch (Exception ex)
            {
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
            return Result;
        }
        public string SaveUpdateUserLoginDetails(Login cnt)
        {
            string Result = "0";

            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spUserLoginInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@LoginId", cnt.LoginId);
                myCmd.Parameters.AddWithValue("@UserId", cnt.UserId);
                myCmd.Parameters.AddWithValue("@Password", cnt.Password);
                myCmd.Parameters.AddWithValue("@Name", cnt.Name);
                myCmd.Parameters.AddWithValue("@EmailId", cnt.EmailId);
                myCmd.Parameters.AddWithValue("@MobileNo", cnt.MobileNo);
                myCmd.Parameters.AddWithValue("@Designation", cnt.Designation);
                myCmd.Parameters.AddWithValue("@RoleId", cnt.RoleId);
                myCmd.Parameters.AddWithValue("@Address", cnt.Address);
                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();

                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            catch (Exception ex)
            {
                Result = "0";
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Result;
        }
        public string SaveUpdateCurrencyDetails(Currency cnt)
        {
            string Result = "0";

            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spCurrencyInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@CurrencyId", cnt.CurrencyId);
                myCmd.Parameters.AddWithValue("@CurrencyName", cnt.CurrencyName);

                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();

                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            catch
            {
                Result = "0";
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }

            return Result;
        }
        public string SaveUpdateQuotationDetails(Quotation cnt)
        {

            string Result = null;
            myCon = myDBConectionDAL.AssignConnection();

            //adding TOC
            DataTable dt = new DataTable();
            dt.Columns.Add("TransID");
            dt.Columns.Add("QID");
            dt.Columns.Add("DescriptionOfGoods");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("HSNCode");
            dt.Columns.Add("Rate");
            dt.Columns.Add("Value");
            dt.Columns.Add("Igst");
            dt.Columns.Add("Amount");
            dt.Columns.Add("TotalAmount1");
            dt.Columns.Add("UserID");
            dt.Columns.Add("CreatedDate");
            dt.Columns.Add("UpdatedBy");
            dt.Columns.Add("UpdatedDate");
            foreach (var arr in cnt.TableOfContent)
            {

                DataRow dr = dt.NewRow();
                dr["TransID"] = 0;
                dr["QID"] = cnt.QID;
                dr["DescriptionOfGoods"] = arr.DescriptionOfGoods;
                dr["Quantity"] = arr.Qty;
                dr["HsnCode"] = arr.Hsn;
                dr["Rate"] = arr.Rate;
                dr["Value"] = arr.Value;
                dr["Igst"] = arr.Igst;
                dr["Amount"] = arr.Amount;
                dr["TotalAmount1"] = arr.TotalAmount1;
                dr["UserID"] = 1;
                dr["CreatedDate"] = DateTime.Now;
                dr["UpdatedBy"] = 1;
                dr["UpdatedDate"] = DateTime.Now;
                dt.Rows.Add(dr);
            }

            //adding Toc ends here

            try
            {
                myCmd = new SqlCommand("spQuotationDetailsInsertUpdate_Test", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (cnt.QID != 0)
                {
                    myCmd.Parameters.AddWithValue("@QID", cnt.QID);
                }
                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@QType", cnt.QType);
                myCmd.Parameters.AddWithValue("@QNo", cnt.QNo);
                myCmd.Parameters.AddWithValue("@QDate", cnt.QDate);
                myCmd.Parameters.AddWithValue("@QFromCompanyName", cnt.QFromCompanyName);
                myCmd.Parameters.AddWithValue("@QFromAddress", cnt.QFromAddress);
                myCmd.Parameters.AddWithValue("@QFromContactNo", cnt.QFromContactNo);
                myCmd.Parameters.AddWithValue("@QFromContactPerson", cnt.QFromContactPerson);
                myCmd.Parameters.AddWithValue("@QFromEmailID", cnt.QFromEmailID);
                myCmd.Parameters.AddWithValue("@QFromGSTINNo", cnt.QFromGSTINNo);
                myCmd.Parameters.AddWithValue("@ProjectName", cnt.ProjectName);
                myCmd.Parameters.AddWithValue("@FinantialYear", cnt.FinantialYear);
                myCmd.Parameters.AddWithValue("@QToCompanyID", cnt.QToCompanyID);
                myCmd.Parameters.AddWithValue("@QToCompanyName", cnt.QToCompanyName);
                myCmd.Parameters.AddWithValue("@QToGSTINNo", cnt.QToGSTINNo);
                myCmd.Parameters.AddWithValue("@QToContactPerson", cnt.QToContactPerson);
                myCmd.Parameters.AddWithValue("@QToAddress", cnt.QToAddress);
                myCmd.Parameters.AddWithValue("@PaymentTerms", cnt.PaymentTerms);
                myCmd.Parameters.AddWithValue("@ValidityOfQuote", cnt.ValidityOfQuote);
                myCmd.Parameters.AddWithValue("@PlaceOfSupply", cnt.PlaceOfSupply);
                myCmd.Parameters.AddWithValue("@TOCID", cnt.TOCID);
                myCmd.Parameters.AddWithValue("@TotalAmountDigit", cnt.TotalAmountDigit);
                myCmd.Parameters.AddWithValue("@TotalAmountWords", cnt.TotalAmountWords);
                myCmd.Parameters.AddWithValue("@TaxableAmount", cnt.TaxableAmount);
                myCmd.Parameters.AddWithValue("@Freight", cnt.Freight);
                myCmd.Parameters.AddWithValue("@BankName", cnt.BankName);
                myCmd.Parameters.AddWithValue("@BranchName", cnt.BranchName);
                myCmd.Parameters.AddWithValue("@BankAccountNo", cnt.BankAccountNo);
                myCmd.Parameters.AddWithValue("@BankBranchIFSC", cnt.BankBranchIFSC);
                myCmd.Parameters.AddWithValue("@TermsAndCondition", cnt.TermsAndCondition);
                myCmd.Parameters.AddWithValue("@Note1", cnt.Note1);
                myCmd.Parameters.AddWithValue("@Note2", cnt.Note2);
                myCmd.Parameters.AddWithValue("@SignatureDate", cnt.SignatureDate);
                myCmd.Parameters.AddWithValue("@SignatureData", "hello");
                myCmd.Parameters.AddWithValue("@UserID", cnt.User_ID);
                myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@UpdatedBy", cnt.User_ID);
                myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@tblTOC", dt);

                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            catch (Exception ex)
            {
                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
            return Result;
        }
        public string InsertApprovalData(bool chkVal, int QID, string UserId)
        {
            string Result = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("UpdateApprovalRecord", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.AddWithValue("@chkVal", chkVal);
                myCmd.Parameters.AddWithValue("@QIDVal", QID);
                myCmd.Parameters.AddWithValue("@ApprovedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@ApprovedBy", UserId);
                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();

                Result = myCmd.Parameters["@Message"].Value.ToString();
            }
            catch (Exception ex)
            {
                Result = "0";
                throw;
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
            return Result;
        }

        //public string SaveUpdateCategoryDetails(
        //   int Mode,
        //   int CategoryID,
        //   string CategoryName,
        //   string Code,
        //   string DefaultSKU,
        //   string DefaultPU,
        //   bool Brand,
        //   bool Type,
        //   bool Name,
        //   bool Number,
        //   bool Color,
        //   bool Size,
        //   string UserId)
        //{
        //    string Result = null;
        //    myCon = myDBConectionDAL.AssignConnection();
        //    try
        //    {
        //        myCmd = new SqlCommand("spCategoryDetailsInsertUpdate", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        //if (CompanyID != 0)
        //        //{
        //        myCmd.Parameters.AddWithValue("@CategoryID", CategoryID);
        //        //}

        //        myCmd.Parameters.AddWithValue("@Mode", Mode);
        //        myCmd.Parameters.AddWithValue("@CategoryName", CategoryName);
        //        myCmd.Parameters.AddWithValue("@Code", Code);
        //        myCmd.Parameters.AddWithValue("@DefaultSKU", DefaultSKU);
        //        myCmd.Parameters.AddWithValue("@DefaultPU", DefaultPU);
        //        myCmd.Parameters.AddWithValue("@Brand", Brand);
        //        myCmd.Parameters.AddWithValue("@Type", Type);
        //        myCmd.Parameters.AddWithValue("@Name", Name);
        //        myCmd.Parameters.AddWithValue("@Number", Number);
        //        myCmd.Parameters.AddWithValue("@Color", Color);
        //        myCmd.Parameters.AddWithValue("@Size", Size);
        //        myCmd.Parameters.AddWithValue("@UserID", UserId);
        //        myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
        //        myCmd.Parameters.AddWithValue("@UpdatedBy", UserId);
        //        myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);

        //        myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
        //        myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

        //        myDBConectionDAL.OpenConnection();
        //        myCmd.ExecuteNonQuery();
        //        Result = myCmd.Parameters["@Message"].Value.ToString();

        //    }
        //    catch (Exception ex)
        //    {
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }
        //    return Result;
        //}

        //Quotation

        //public string SaveUpdateQuotationDetails(
        //   int Mode,
        //   int QID,
        //   string QType,
        //   string QNo,
        //   DateTime QDate,
        //   string QFromCompanyName,
        //   string QFromAddress,
        //   string QFromContactNo,
        //   string QFromContactPerson,
        //   string QFromEmailID,
        //   string QFromGSTINNo,
        //   string ProjectName,
        //   string FinantialYear,
        //   string QToCompanyID,
        //   string QToCompanyName,
        //   string QToGSTINNo,
        //   string QToContactPerson,
        //   string QToAddress,
        //   string PaymentTerms,
        //   string ValidityOfQuote,
        //   string PlaceOfSupply,
        //   string TOCID,
        //   string TotalAmountDigit,
        //   string TotalAmountWords,
        //   string TaxableAmount,
        //   string Freight,
        //   string BankName,
        //   string BranchName,
        //   string BankAccountNo,
        //   string BankBranchIFSC,
        //   string TermsAndCondition,
        //   string Note1,
        //   string Note2,
        //   DateTime SignatureDate,
        //   string SignatureData,
        //    List<TOC> TocData,
        //   string UserID)
        //{

        //    string Result = null;
        //    myCon = myDBConectionDAL.AssignConnection();

        //    //adding TOC
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("TransID");
        //    dt.Columns.Add("QID");
        //    dt.Columns.Add("DescriptionOfGoods");
        //    dt.Columns.Add("Quantity");
        //    dt.Columns.Add("HSNCode");
        //    dt.Columns.Add("Rate");
        //    dt.Columns.Add("Value");
        //    dt.Columns.Add("Igst");
        //    dt.Columns.Add("Amount");
        //    dt.Columns.Add("TotalAmount1");
        //    dt.Columns.Add("UserID");
        //    dt.Columns.Add("CreatedDate");
        //    dt.Columns.Add("UpdatedBy");
        //    dt.Columns.Add("UpdatedDate");
        //    foreach (var arr in TocData)
        //    {

        //        DataRow dr = dt.NewRow();
        //        dr["TransID"] = 0;
        //        dr["QID"] = QID;
        //        dr["DescriptionOfGoods"] = arr.DescriptionOfGoods;
        //        dr["Quantity"] = arr.Qty;
        //        dr["HsnCode"] = arr.Hsn;
        //        dr["Rate"] = arr.Rate;
        //        dr["Value"] = arr.Value;
        //        dr["Igst"] = arr.Igst;
        //        dr["Amount"] = arr.Amount;
        //        dr["TotalAmount1"] = arr.TotalAmount1;
        //        dr["UserID"] = 1;
        //        dr["CreatedDate"] = DateTime.Now;
        //        dr["UpdatedBy"] = 1;
        //        dr["UpdatedDate"] = DateTime.Now;
        //        dt.Rows.Add(dr);
        //    }

        //    //adding Toc ends here

        //    try
        //    {
        //        myCmd = new SqlCommand("spQuotationDetailsInsertUpdate_Test", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        if (QID != 0)
        //        {
        //            myCmd.Parameters.AddWithValue("@QID", QID);
        //        }
        //        myCmd.Parameters.AddWithValue("@Mode", Mode);
        //        myCmd.Parameters.AddWithValue("@QType", QType);
        //        myCmd.Parameters.AddWithValue("@QNo", QNo);
        //        myCmd.Parameters.AddWithValue("@QDate", SignatureDate);
        //        myCmd.Parameters.AddWithValue("@QFromCompanyName", QFromCompanyName);
        //        myCmd.Parameters.AddWithValue("@QFromAddress", QFromAddress);
        //        myCmd.Parameters.AddWithValue("@QFromContactNo", QFromContactNo);
        //        myCmd.Parameters.AddWithValue("@QFromContactPerson", QFromContactPerson);
        //        myCmd.Parameters.AddWithValue("@QFromEmailID", QFromEmailID);
        //        myCmd.Parameters.AddWithValue("@QFromGSTINNo", QFromGSTINNo);
        //        myCmd.Parameters.AddWithValue("@ProjectName", ProjectName);
        //        myCmd.Parameters.AddWithValue("@FinantialYear", FinantialYear);
        //        myCmd.Parameters.AddWithValue("@QToCompanyID", QToCompanyID);
        //        myCmd.Parameters.AddWithValue("@QToCompanyName", QToCompanyName);
        //        myCmd.Parameters.AddWithValue("@QToGSTINNo", QToGSTINNo);
        //        myCmd.Parameters.AddWithValue("@QToContactPerson", QToContactPerson);
        //        myCmd.Parameters.AddWithValue("@QToAddress", QToAddress);
        //        myCmd.Parameters.AddWithValue("@PaymentTerms", PaymentTerms);
        //        myCmd.Parameters.AddWithValue("@ValidityOfQuote", ValidityOfQuote);
        //        myCmd.Parameters.AddWithValue("@PlaceOfSupply", PlaceOfSupply);
        //        myCmd.Parameters.AddWithValue("@TOCID", TOCID);
        //        myCmd.Parameters.AddWithValue("@TotalAmountDigit", TotalAmountDigit);
        //        myCmd.Parameters.AddWithValue("@TotalAmountWords", TotalAmountWords);
        //        myCmd.Parameters.AddWithValue("@TaxableAmount", TaxableAmount);
        //        myCmd.Parameters.AddWithValue("@Freight", Freight);
        //        myCmd.Parameters.AddWithValue("@BankName", BankName);
        //        myCmd.Parameters.AddWithValue("@BranchName", BranchName);
        //        myCmd.Parameters.AddWithValue("@BankAccountNo", BankAccountNo);
        //        myCmd.Parameters.AddWithValue("@BankBranchIFSC", BankBranchIFSC);
        //        myCmd.Parameters.AddWithValue("@TermsAndCondition", TermsAndCondition);
        //        myCmd.Parameters.AddWithValue("@Note1", Note1);
        //        myCmd.Parameters.AddWithValue("@Note2", Note2);
        //        myCmd.Parameters.AddWithValue("@SignatureDate", SignatureDate);
        //        myCmd.Parameters.AddWithValue("@SignatureData", "hello");
        //        myCmd.Parameters.AddWithValue("@UserID", UserID);
        //        myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
        //        myCmd.Parameters.AddWithValue("@UpdatedBy", UserID);
        //        myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
        //        myCmd.Parameters.AddWithValue("@tblTOC", dt);

        //        myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
        //        myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

        //        myDBConectionDAL.OpenConnection();
        //        myCmd.ExecuteNonQuery();
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    catch (Exception ex)
        //    {
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }
        //    return Result;
        //}

        //public string SaveUpdateQuotationDetails1(int Mode, int LoginId, int UserId, int QuotationType, int QuotationId, string CompanyName,
        //    string GstNo, string TinNo, string ServiceTaxNo, string EmailId, string CompanyLogo,
        //    int QuotationNo, int QuotationDate, int GeneralTerms, string QuotationToCompanyId,
        //        string CurrencyId, string TotalAmount, string GstAmount, string TaxAmount, string TaxPercentage, string WordsAmount,

        //    int AdjustmentPercentage, string[] TableOfContent, string DigitalSignature, string RevisedQuote,
        //       string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate)
        //{
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("TransID");
        //    dt.Columns.Add("QuotationId");
        //    dt.Columns.Add("SerialNo");
        //    dt.Columns.Add("DescriptionOfGoods");
        //    dt.Columns.Add("Quantity");
        //    dt.Columns.Add("HSNCode");
        //    dt.Columns.Add("Value");
        //    dt.Columns.Add("Total");
        //    dt.Columns.Add("UserID");
        //    dt.Columns.Add("SaveDate");
        //    dt.Columns.Add("UpdatedBy");
        //    dt.Columns.Add("UpdatedDate");

        //    foreach (var arr in TableOfContent)
        //    {
        //        for (var i = 0; i < arr.Length; i++)
        //        {
        //            DataRow dr = dt.NewRow();
        //            dr["TransID"] = 0;
        //            dr["QuotationId"] = QuotationId;

        //            //if (Mon != "false")
        //            //{
        //            //    dr["Mon"] = arr[i].SerialNo;
        //            //}
        //            //if (Tue != "false")
        //            //{
        //            //    dr["Tue"] = MaxPax;
        //            //}
        //            //if (Wed != "false")
        //            //{
        //            //    dr["Wed"] = MaxPax;
        //            //}
        //            //if (Thu != "false")
        //            //{
        //            //    dr["Thu"] = MaxPax;
        //            //}
        //            //if (Fri != "false")
        //            //{
        //            //    dr["Fri"] = MaxPax;
        //            //}
        //            //if (Sat != "false")
        //            //{
        //            //    dr["Sat"] = MaxPax;
        //            //}
        //            //if (Sun != "false")
        //            //{
        //            //    dr["Sun"] = MaxPax;
        //            //}

        //            dr["UserID"] = 1;
        //            dr["SaveDate"] = DateTime.Now;
        //            dr["UpdatedBy"] = 1;
        //            dr["UpdatedDate"] = DateTime.Now;
        //            dr["CurrencyCountryID"] = arr[i].ToString();

        //            dt.Rows.Add(dr);
        //        }
        //    }
        //    string Result = null;
        //    myCon = myDBConectionDAL.AssignConnection();

        //    try
        //    {
        //        myCmd = new SqlCommand("spHotelRoomRate_Test", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        if (QuotationId != 0)
        //        {
        //            myCmd.Parameters.AddWithValue("@HotelID", LoginId);
        //        }

        //        myCmd.Parameters.AddWithValue("@Mode", Mode);
        //        myCmd.Parameters.AddWithValue("RoomCategoryID", LoginId);
        //        myCmd.Parameters.AddWithValue("@MealPlanID", LoginId);
        //        myCmd.Parameters.AddWithValue("@ValidityFrom", LoginId);
        //        myCmd.Parameters.AddWithValue("@ValidityTo", LoginId);
        //        myCmd.Parameters.AddWithValue("@MaxPax", LoginId);
        //        myCmd.Parameters.AddWithValue("@MinNights", LoginId);
        //        myCmd.Parameters.AddWithValue("@Approved", 1);
        //        myCmd.Parameters.AddWithValue("@ApprovedBy", 1);
        //        myCmd.Parameters.AddWithValue("@UserName", LoginId);
        //        myCmd.Parameters.AddWithValue("@SaveDate", DateTime.Now);
        //        myCmd.Parameters.AddWithValue("@UpdatedBy", 1);
        //        myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
        //        myCmd.Parameters.AddWithValue("@tblRoomRateType", dt);

        //        myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
        //        myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

        //        myDBConectionDAL.OpenConnection();
        //        myCmd.ExecuteNonQuery();
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    catch (Exception ex)
        //    {
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }
        //    return Result;
        //}



        //public string SaveUpdateCompanyDetails(
        //    int Mode,
        //    int CompanyID,
        //    string CompanyName,
        //    string GSTINNo,
        //    string TINNo,
        //    string ServiceTaxNo,
        //    string EmailID,
        //    string CompanyLogo,
        //    string Address,
        //    string City,
        //    string State,
        //    string Country,
        //    string ContactNo,
        //    string ZipCode,
        //    string UserID)
        //{

        //    string Result = null;
        //    myCon = myDBConectionDAL.AssignConnection();

        //    try
        //    {
        //        myCmd = new SqlCommand("spCompanyDetailsInsertUpdate", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        //if (CompanyID != 0)
        //        //{
        //        myCmd.Parameters.AddWithValue("@CompanyID", CompanyID);
        //        //}

        //        myCmd.Parameters.AddWithValue("@Mode", Mode);
        //        myCmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        //        myCmd.Parameters.AddWithValue("@GSTINNo", GSTINNo);
        //        myCmd.Parameters.AddWithValue("@TINNo", TINNo);
        //        myCmd.Parameters.AddWithValue("@ServiceTaxNo", ServiceTaxNo);
        //        myCmd.Parameters.AddWithValue("@EmailID", EmailID);
        //        myCmd.Parameters.AddWithValue("@CompanyLogo", CompanyLogo);
        //        myCmd.Parameters.AddWithValue("@Address", Address);
        //        myCmd.Parameters.AddWithValue("@City", City);
        //        myCmd.Parameters.AddWithValue("@State", State);
        //        myCmd.Parameters.AddWithValue("@Country", Country);
        //        myCmd.Parameters.AddWithValue("@ContactNo", ContactNo);
        //        myCmd.Parameters.AddWithValue("@ZipCode", ZipCode);
        //        myCmd.Parameters.AddWithValue("@UserID", UserID);
        //        myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
        //        myCmd.Parameters.AddWithValue("@UpdatedBy", UserID);
        //        myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);

        //        myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
        //        myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

        //        myDBConectionDAL.OpenConnection();
        //        myCmd.ExecuteNonQuery();
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    catch (Exception ex)
        //    {
        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }
        //    return Result;
        //}

        //public List<QU.Entities.Txn_Company> GetCompanyDetails(int CompanyID, string CompanyName)
        //{
        //    List<Entities.Txn_Company> Entities = new List<Entities.Txn_Company>();
        //    Entities.Txn_Company CL = null;
        //    try
        //    {
        //        myCon = myDBConectionDAL.AssignConnection();
        //        myCmd = new SqlCommand("spRetCompanyDetails", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        if (CompanyID != 0)
        //        {
        //            myCmd.Parameters.AddWithValue("@CompanyID", CompanyID);
        //        }

        //        if (CompanyName.Trim() != "")
        //        {
        //            myCmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        //        }

        //        myDBConectionDAL.OpenConnection();
        //        SqlDataReader sdr = myCmd.ExecuteReader();
        //        while (sdr.Read())
        //        {
        //            CL = new Entities.Txn_Company();
        //            CL.CompanyID = Convert.ToInt32(sdr["CompanyID"]);
        //            CL.CompanyName = sdr["CompanyName"].ToString();
        //            CL.GSTINNo = sdr["GSTINNo"].ToString();
        //            CL.TINNo = sdr["TINNo"].ToString();
        //            CL.ServiceTaxNo = sdr["ServiceTaxNo"].ToString();
        //            CL.EmailID = sdr["EmailId"].ToString();
        //            CL.ContactNo = sdr["MobileNo"].ToString();
        //            CL.Address = sdr["Address"].ToString();
        //            CL.CompanyLogo = sdr["CompanyLogo"].ToString();
        //            CL.Country = sdr["Country"].ToString();
        //            CL.State = sdr["State"].ToString();
        //            CL.ZipCode = sdr["Zipcode"].ToString();
        //            CL.City = sdr["City"].ToString();

        //            Entities.Add(CL);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw;
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }

        //    return Entities;
        //}



        //public string SaveUpdateUserLoginDetails(int Mode, int LoginId, string UserId, string Password, string Name, string MobileNo, string EmailID, string Designation, int RoleId, string Address)
        //{
        //    string Result = "0";

        //    try
        //    {
        //        myCon = myDBConectionDAL.AssignConnection();
        //        myCmd = new SqlCommand("spUserLoginInsertUpdate", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        myCmd.Parameters.AddWithValue("@Mode", Mode);
        //        myCmd.Parameters.AddWithValue("@LoginId", LoginId);
        //        myCmd.Parameters.AddWithValue("@UserId", UserId);
        //        myCmd.Parameters.AddWithValue("@Password", Password);
        //        myCmd.Parameters.AddWithValue("@Name", Name);
        //        myCmd.Parameters.AddWithValue("@EmailId", EmailID);
        //        myCmd.Parameters.AddWithValue("@MobileNo", MobileNo);
        //        myCmd.Parameters.AddWithValue("@Designation", Designation);
        //        myCmd.Parameters.AddWithValue("@RoleId", RoleId);
        //        myCmd.Parameters.AddWithValue("@Address", Address);
        //        myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
        //        myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

        //        myDBConectionDAL.OpenConnection();
        //        myCmd.ExecuteNonQuery();

        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    catch (Exception ex)
        //    {
        //        Result = "0";
        //        throw;
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }

        //    return Result;
        //}

        //public string SaveUpdateCurrencyDetails(int Mode, int CurrencyId, string CurrencyName)
        //{
        //    string Result = "0";

        //    try
        //    {
        //        myCon = myDBConectionDAL.AssignConnection();
        //        myCmd = new SqlCommand("spCurrencyInsertUpdate", myCon);
        //        myCmd.CommandType = CommandType.StoredProcedure;
        //        myCmd.Parameters.AddWithValue("@Mode", Mode);
        //        myCmd.Parameters.AddWithValue("@CurrencyId", CurrencyId);
        //        myCmd.Parameters.AddWithValue("@CurrencyName", CurrencyName);

        //        myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
        //        myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

        //        myDBConectionDAL.OpenConnection();
        //        myCmd.ExecuteNonQuery();

        //        Result = myCmd.Parameters["@Message"].Value.ToString();
        //    }
        //    catch
        //    {
        //        Result = "0";
        //        throw;
        //    }
        //    finally
        //    {
        //        myDBConectionDAL.CloseConnection();
        //    }

        //    return Result;
        //}

    }
}

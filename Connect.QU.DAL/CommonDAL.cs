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

        public List<QU.Entities.Location> GetLocationDetails(int CompanyId)
        {
            List<Entities.Location> Entities = new List<Entities.Location>();
            Entities.Location CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetLocations", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;

                if (CompanyId != 0)
                {
                    myCmd.Parameters.AddWithValue("@CompanyId", CompanyId);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Location();

                    //CL.Item = sdr["item"].ToString();
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
        public List<QU.Entities.Requisition> GetRequisitionDetails(int RequisitionId)
        {
            List<Entities.Requisition> Entities = new List<Entities.Requisition>();
            Entities.Requisition CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetRequisitionDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (RequisitionId != 0)
                {
                    myCmd.Parameters.AddWithValue("@RequisitionId", RequisitionId);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Requisition();
                    CL.RequisitionId = Convert.ToInt32(sdr["RequisitionId"]);
                    CL.RequisitionNumber = sdr["RequisitionNumber"].ToString();
                    CL.RequisitionDate = Convert.ToDateTime(sdr["RequisitionDate"]);
                    CL.QuotationId = Convert.ToInt32(sdr["QuotationId"]);
                    CL.RequiredBy = sdr["RequiredBy"].ToString();
                    CL.ApprovedBy = sdr["ApprovedBy"].ToString();
                    CL.PreparedBy = sdr["PreparedBy"].ToString();
                    CL.QuotationNumber = sdr["QNO"].ToString();

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
                    CL.QType = sdr["QType"].ToString();

                    //if (sdr["QType"].ToString() == "1")
                    //{
                    //    CL.QType = "SU";
                    //}
                    //else if (sdr["QType"].ToString() == "2")
                    //{
                    //    CL.QType = "SER";
                    //}
                    //else
                    //{
                    //    CL.QType = "TEN";
                    //}

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
                    CL.IsRequisition = Convert.ToBoolean(sdr["IsRequisition"]);
                    CL.IsExecution = Convert.ToBoolean(sdr["IsExecution"]);

                    if (!string.IsNullOrEmpty(sdr["CurrencyId"].ToString()))
                    {
                        CL.CurrencyId = Convert.ToInt32(sdr["CurrencyId"]);

                    }
                    if (!string.IsNullOrEmpty(sdr["LocationId"].ToString()))
                    {
                        CL.LocationId = Convert.ToInt32(sdr["LocationId"]);
                    }

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
                    CL.ItemLineNumber = sdr["ItemLineNumber"].ToString();
                    CL.DescriptionOfGoods = sdr["DescriptionOfGoods"].ToString();
                    CL.Qty = sdr["Qty"].ToString();
                    CL.Hsn = sdr["Hsn"].ToString();
                    CL.Rate = sdr["Rate"].ToString();
                    CL.Value = sdr["Value"].ToString();
                    CL.Igst = sdr["Igst"].ToString();
                    CL.Amount = sdr["Amount"].ToString();
                    CL.TotalAmount1 = sdr["TotalAmount1"].ToString();
                    CL.ItemId = Convert.ToInt32(sdr["ItemId"]);

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
                    CL.MobileNo = sdr["MobileNo"].ToString();
                    CL.Address = sdr["Address"].ToString();
                    CL.LocationsId = sdr["LocationsId"].ToString();
                    CL.CountryId = Convert.ToInt32(sdr["CountryId"]);
                    CL.StateId = Convert.ToInt32(sdr["StateId"]);
                    CL.ZipCode = sdr["Zipcode"].ToString();
                    CL.CityId = Convert.ToInt32(sdr["CityId"]);

                    CL.BankName = sdr["BankName"].ToString();
                    CL.BankBranch = sdr["BankBranch"].ToString();
                    CL.BankAccountNo = sdr["BankAccountNo"].ToString();
                    CL.BankIfsc = sdr["BankIfsc"].ToString();
                    CL.POC = sdr["POC"].ToString();
                    CL.POCNo = sdr["POCNo"].ToString();

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
                    CL.InStockQuantity = sdr["InStockQuantity"].ToString();
                    CL.Approved = Convert.ToBoolean(sdr["Approved"]);
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
        public List<QU.Entities.TOC> GetQuotationItemDetails(int QID)
        {
            List<Entities.TOC> Entities = new List<Entities.TOC>();
            Entities.TOC CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetQuotationItemDetails", myCon);
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
                    if (!string.IsNullOrEmpty(sdr["ItemLineNumber"].ToString()))
                    {
                        CL.ItemLineNumber = sdr["ItemLineNumber"].ToString();

                    }
                    if (!string.IsNullOrEmpty(sdr["DescriptionOfGoods"].ToString()))
                    {
                        CL.DescriptionOfGoods = sdr["DescriptionOfGoods"].ToString();

                    }

                    if (!string.IsNullOrEmpty(sdr["Quantity"].ToString()))
                    {
                        CL.Qty = sdr["Quantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["HsnCode"].ToString()))
                    {
                        CL.Hsn = sdr["HsnCode"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Rate"].ToString()))
                    {
                        CL.Rate = sdr["Rate"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Value"].ToString()))
                    {
                        CL.Value = sdr["Value"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Igst"].ToString()))
                    {
                        CL.Igst = sdr["Igst"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Amount"].ToString()))
                    {
                        CL.Amount = sdr["Amount"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["TotalAmount1"].ToString()))
                    {
                        CL.TotalAmount1 = sdr["TotalAmount1"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["ItemID"].ToString()))
                    {
                        CL.ItemId = Convert.ToInt32(sdr["ItemID"]);
                    }
                    if (!string.IsNullOrEmpty(sdr["ItemName"].ToString()))
                    {
                        CL.ItemName = sdr["ItemName"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["LastPrice"].ToString()))
                    {
                        CL.LastRate = Convert.ToInt32(sdr["LastPrice"]);
                    }
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
        public List<QU.Entities.TOC> GetQuotationItemDescriptionDetails(int QID, int ItemId)
        {
            List<Entities.TOC> Entities = new List<Entities.TOC>();
            Entities.TOC CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetQuotationItemDescriptionDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (QID != 0)
                {
                    myCmd.Parameters.AddWithValue("@QID", QID);
                }

                if (ItemId != 0)
                {
                    myCmd.Parameters.AddWithValue("@ItemId", ItemId);
                }


                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.TOC();
                    if (!string.IsNullOrEmpty(sdr["ItemLineNumber"].ToString()))
                    {
                        CL.ItemLineNumber = sdr["ItemLineNumber"].ToString();

                    }
                    if (!string.IsNullOrEmpty(sdr["DescriptionOfGoods"].ToString()))
                    {
                        CL.DescriptionOfGoods = sdr["DescriptionOfGoods"].ToString();

                    }

                    if (!string.IsNullOrEmpty(sdr["Quantity"].ToString()))
                    {
                        CL.Qty = sdr["Quantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["HsnCode"].ToString()))
                    {
                        CL.Hsn = sdr["HsnCode"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Rate"].ToString()))
                    {
                        CL.Rate = sdr["Rate"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Value"].ToString()))
                    {
                        CL.Value = sdr["Value"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Igst"].ToString()))
                    {
                        CL.Igst = sdr["Igst"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Amount"].ToString()))
                    {
                        CL.Amount = sdr["Amount"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["TotalAmount1"].ToString()))
                    {
                        CL.TotalAmount1 = sdr["TotalAmount1"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["ItemID"].ToString()))
                    {
                        CL.ItemId = Convert.ToInt32(sdr["ItemID"]);
                    }
                    if (!string.IsNullOrEmpty(sdr["ItemName"].ToString()))
                    {
                        CL.ItemName = sdr["ItemName"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["LastPrice"].ToString()))
                    {
                        CL.LastRate = Convert.ToInt32(sdr["LastPrice"]);
                    }
                    if (!string.IsNullOrEmpty(sdr["InStockQuantity"].ToString()))
                    {
                        CL.InStockQuantity = sdr["InStockQuantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["ItemLineNumber"].ToString()))
                    {
                        CL.ItemLineNumber = sdr["ItemLineNumber"].ToString();
                    }

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
        public List<QU.Entities.TOCRequisition> GetTOCRequisitionDetails(int Requisitionid, int mode)
        {
            List<Entities.TOCRequisition> Entities = new List<Entities.TOCRequisition>();
            Entities.TOCRequisition CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetTOCRequisition", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (Requisitionid != 0)
                {
                    myCmd.Parameters.AddWithValue("@Requisitionid", Requisitionid);
                    myCmd.Parameters.AddWithValue("@Mode", mode);
                }


                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.TOCRequisition();
                    if (!string.IsNullOrEmpty(sdr["DescriptionOfGoods"].ToString()))
                    {
                        CL.DescriptionOfGoods = sdr["DescriptionOfGoods"].ToString();
                    }
                    if (!string.IsNullOrEmpty(Convert.ToInt32(sdr["RequiredQty"]).ToString()))
                    {
                        CL.RequiredQty = Convert.ToInt32(sdr["RequiredQty"]);
                    }
                    if (!string.IsNullOrEmpty(Convert.ToInt32(sdr["InStockQty"]).ToString()))
                    {
                        CL.InStockQty = Convert.ToInt32(sdr["InStockQty"]);
                    }
                    if (!string.IsNullOrEmpty(Convert.ToInt32(sdr["PurchaseQty"]).ToString()))
                    {
                        CL.PurchaseQty = Convert.ToInt32(sdr["PurchaseQty"]);
                    }
                    if (!string.IsNullOrEmpty(Convert.ToInt32(sdr["Rate"]).ToString()))
                    {
                        CL.Rate = Convert.ToInt32(sdr["Rate"]);
                    }
                    if (!string.IsNullOrEmpty(Convert.ToBoolean(sdr["BillAvailable"]).ToString()))
                    {
                        CL.BillAvailable = Convert.ToBoolean(sdr["BillAvailable"]);
                    }
                    if (!string.IsNullOrEmpty(Convert.ToInt32(sdr["Amount"]).ToString()))
                    {
                        CL.Amount = Convert.ToInt32(sdr["Amount"]);
                    }
                    if (!string.IsNullOrEmpty(sdr["POItemNo"].ToString()))
                    {
                        CL.POItemNo = sdr["POItemNo"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["PU"].ToString()))
                    {
                        CL.Quantity = sdr["PU"].ToString();
                    }
                    if (!string.IsNullOrEmpty(Convert.ToInt32(sdr["ItemId"]).ToString()))
                    {
                        CL.ItemId = Convert.ToInt32(sdr["ItemId"]);
                    }
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
        public List<QU.Entities.TOCExecution> GetTOCExecutionDetails(int ExecutionId)
        {
            List<Entities.TOCExecution> Entities = new List<Entities.TOCExecution>();
            Entities.TOCExecution CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetTOCExecution", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (ExecutionId != 0)
                {
                    myCmd.Parameters.AddWithValue("@ExecutionId", ExecutionId);

                }
                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.TOCExecution();
                    if (!string.IsNullOrEmpty(sdr["ItemDescription"].ToString()))
                    {
                        CL.ItemDescription = sdr["ItemDescription"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Unit"].ToString()))
                    {
                        CL.Unit = sdr["Unit"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["UnitPrice"].ToString()))
                    {
                        CL.UnitPrice = sdr["UnitPrice"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Value"].ToString()))
                    {
                        CL.Value = sdr["Value"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["TotalBilledQuantity"].ToString()))
                    {
                        CL.TotalBilledQuantity = sdr["TotalBilledQuantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["TotalBilledValue"].ToString()))
                    {
                        CL.TotalBilledValue = sdr["TotalBilledValue"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["BalanceQuantity"].ToString()))
                    {
                        CL.BalanceQuantity = sdr["BalanceQuantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["BalanceValue"].ToString()))
                    {
                        CL.BalanceValue = sdr["BalanceValue"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["BilledQuantity"].ToString()))
                    {
                        CL.BilledQuantity = sdr["BilledQuantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["BilledValue"].ToString()))
                    {
                        CL.BilledValue = sdr["BilledValue"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["Quantity"].ToString()))
                    {
                        CL.Quantity = sdr["Quantity"].ToString();
                    }
                    if (!string.IsNullOrEmpty(sdr["ItemId"].ToString()))
                    {
                        CL.ItemId = Convert.ToInt32(sdr["ItemId"]);
                    }
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
        public List<QU.Entities.Execution> GetExecutionDetails(int ExecutionId)
        {
            List<Entities.Execution> Entities = new List<Entities.Execution>();
            Entities.Execution CL = null;
            try
            {
                myCon = myDBConectionDAL.AssignConnection();
                myCmd = new SqlCommand("spRetExecutionnDetails", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (ExecutionId != 0)
                {
                    myCmd.Parameters.AddWithValue("@ExecutionId", ExecutionId);
                }

                myDBConectionDAL.OpenConnection();
                SqlDataReader sdr = myCmd.ExecuteReader();
                while (sdr.Read())
                {
                    CL = new Entities.Execution();
                    CL.ExecutionID = Convert.ToInt32(sdr["ExecutionId"]);
                    CL.DocumentNumber = sdr["DocumentNumber"].ToString();

                    CL.Division = sdr["Division"].ToString();
                    CL.VersionNember = sdr["VersionNember"].ToString();
                    CL.SupplierName = sdr["SupplierName"].ToString();
                    CL.CreatedDate = Convert.ToDateTime(sdr["CreatedDate"]);
                    CL.CreatedBy = sdr["CreatedBy"].ToString();
                    CL.QuotationId = Convert.ToInt32(sdr["QuotationId"]);

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
                myCmd.Parameters.AddWithValue("@Approved", cnt.Approved);
                if (cnt.InStockQuantity != "")
                {
                    myCmd.Parameters.AddWithValue("@InStockQuantity", Convert.ToInt32(cnt.InStockQuantity));
                }
                else
                {
                    myCmd.Parameters.AddWithValue("@InStockQuantity", 0);
                }

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
        public string SaveUpdateQuotationDetails(Quotation cnt)
        {

            string Result = null;
            myCon = myDBConectionDAL.AssignConnection();

            //adding TOC
            DataTable dt = new DataTable();
            dt.Columns.Add("TransID");
            dt.Columns.Add("QID");
            dt.Columns.Add("ItemId");
            dt.Columns.Add("ItemLineNumber");
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
                dr["ItemId"] = arr.ItemId;
                dr["ItemLineNumber"] = arr.ItemLineNumber;
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
                myCmd = new SqlCommand("spQuotationDetailsInsertUpdate", myCon);
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
                myCmd.Parameters.AddWithValue("@CurrencyID", cnt.CurrencyId);
                myCmd.Parameters.AddWithValue("@LocationID", cnt.LocationId);
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
        public string SaveUpdateRequisitionDetails(Requisition cnt)
        {

            string Result = null;
            myCon = myDBConectionDAL.AssignConnection();

            //adding TOC
            DataTable dt = new DataTable();

            dt.Columns.Add("TOCRequisitionId");
            dt.Columns.Add("RequisitionId");
            dt.Columns.Add("QuotationId");
            dt.Columns.Add("ItemId");
            dt.Columns.Add("ItemName");
            dt.Columns.Add("DescriptionOfGoods");
            dt.Columns.Add("RequiredQty");
            dt.Columns.Add("InStockQty");
            dt.Columns.Add("PurchaseQty");
            dt.Columns.Add("Rate");
            dt.Columns.Add("Amount");
            dt.Columns.Add("BillAvailable");
            dt.Columns.Add("POItemNo");
            dt.Columns.Add("CreatedBy");
            dt.Columns.Add("CreatedDate");
            dt.Columns.Add("UpdatedBy");
            dt.Columns.Add("UpdatedDate");
            foreach (var arr in cnt.TableOfContent)
            {

                DataRow dr = dt.NewRow();

                dr["TOCRequisitionId"] = cnt.TOCRequisitionId;
                dr["RequisitionId"] = cnt.RequisitionId;
                dr["QuotationId"] = cnt.QuotationId;
                dr["ItemId"] = arr.ItemId;
                dr["ItemName"] = arr.DescriptionOfGoods;//arr.ItemName;
                dr["DescriptionOfGoods"] = arr.DescriptionOfGoods;
                dr["RequiredQty"] = arr.RequiredQty;
                dr["InStockQty"] = arr.InStockQty;
                dr["PurchaseQty"] = arr.PurchaseQty;
                dr["Rate"] = arr.Rate;
                dr["Amount"] = arr.Amount;
                dr["BillAvailable"] = arr.BillAvailable;
                dr["POItemNo"] = arr.POItemNo;
                dr["CreatedBy"] = cnt.UserId;
                dr["CreatedDate"] = DateTime.Now;
                dr["UpdatedBy"] = cnt.UserId;
                dr["UpdatedDate"] = DateTime.Now;
                dt.Rows.Add(dr);
            }

            //adding Toc ends here

            try
            {
                myCmd = new SqlCommand("spRequisitionDetailsInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (cnt.RequisitionId != 0)
                {
                    myCmd.Parameters.AddWithValue("@RequisitionId", cnt.RequisitionId);
                }
                if (cnt.QuotationId != 0)
                {
                    myCmd.Parameters.AddWithValue("@QuotationId", cnt.QuotationId);
                }
                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@RequisitionNumber", cnt.RequisitionNumber);
                myCmd.Parameters.AddWithValue("@RequisitionDate", DateTime.Now);// cnt.RequisitionDate);
                myCmd.Parameters.AddWithValue("@RequiredBy", cnt.RequiredBy);
                myCmd.Parameters.AddWithValue("@ApprovedBy", cnt.ApprovedBy);
                myCmd.Parameters.AddWithValue("@PreparedBy", cnt.PreparedBy);
                myCmd.Parameters.AddWithValue("@TOCRequisitionId", cnt.TOCRequisitionId);
                myCmd.Parameters.AddWithValue("@CreatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@UpdatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@tblTOCRequisition", dt);

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
        public string SaveUpdateExecutionDetails(Execution cnt)
        {

            string Result = null;
            string Message = "";
            myCon = myDBConectionDAL.AssignConnection();

            //adding TOC
            DataTable dt = new DataTable();

            dt.Columns.Add("ExecutionId");
            dt.Columns.Add("QuotationId");
            dt.Columns.Add("ItemDescription");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Unit");
            dt.Columns.Add("UnitPrice");
            dt.Columns.Add("Value");
            dt.Columns.Add("TotalBilledQuantity");
            dt.Columns.Add("TotalBilledValue");
            dt.Columns.Add("BalanceQuantity");
            dt.Columns.Add("BalanceValue");
            dt.Columns.Add("BilledQuantity");
            dt.Columns.Add("BilledValue");
            dt.Columns.Add("CreatedBy");
            dt.Columns.Add("CreatedDate");
            dt.Columns.Add("UpdatedBy");
            dt.Columns.Add("UpdatedDate");
            dt.Columns.Add("ItemId");
            foreach (var arr in cnt.ExecutionItem)
            {

                DataRow dr = dt.NewRow();
                dr["ExecutionId"] = cnt.ExecutionID;
                dr["QuotationId"] = cnt.QuotationId;
                dr["ItemDescription"] = arr.ItemDescription;
                dr["Quantity"] = arr.Quantity;
                dr["Unit"] = arr.Unit;
                dr["UnitPrice"] = arr.UnitPrice;
                dr["Value"] = arr.Value;
                dr["TotalBilledQuantity"] = arr.TotalBilledQuantity;
                dr["TotalBilledValue"] = arr.TotalBilledValue;
                dr["BalanceQuantity"] = arr.BalanceQuantity;
                dr["BalanceValue"] = arr.BalanceValue;
                if (!string.IsNullOrEmpty(arr.BilledQuantity))
                {
                    dr["BilledQuantity"] = arr.BilledQuantity.Remove(0, 1);
                }
                else
                {
                    dr["BilledQuantity"] = 0;
                }
                if (!string.IsNullOrEmpty(arr.BilledValue))
                {
                    dr["BilledValue"] = arr.BilledValue.Remove(0, 1);
                }
                else
                {
                    dr["BilledValue"] = 0;
                }
                dr["CreatedBy"] = cnt.UserId;
                dr["CreatedDate"] = DateTime.Now;
                dr["UpdatedBy"] = cnt.UserId;
                dr["UpdatedDate"] = DateTime.Now;
                dr["ItemId"] = arr.ItemId;
                dt.Rows.Add(dr);
            }

            //adding Toc ends here

            try
            {
                myCmd = new SqlCommand("spExecutionDetailsInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (cnt.ExecutionID != 0)
                {
                    myCmd.Parameters.AddWithValue("@ExecutionId", cnt.ExecutionID);
                }
                myCmd.Parameters.AddWithValue("@Mode", cnt.Mode);
                myCmd.Parameters.AddWithValue("@QuotationId", cnt.QuotationId);
                myCmd.Parameters.AddWithValue("@DocumentNumber", cnt.DocumentNumber);
                myCmd.Parameters.AddWithValue("@Division", cnt.Division);
                myCmd.Parameters.AddWithValue("@VersionNumber", cnt.VersionNember);
                myCmd.Parameters.AddWithValue("@SupplierName", cnt.SupplierName);
                myCmd.Parameters.AddWithValue("@CreatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@UpdatedBy", cnt.UserId);
                myCmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
                myCmd.Parameters.AddWithValue("@tblTOCExecution", dt);

                myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;

                myDBConectionDAL.OpenConnection();
                myCmd.ExecuteNonQuery();
                Result = myCmd.Parameters["@Message"].Value.ToString();

                //update itemmaster table
                myCmd = new SqlCommand("spInStockInsertUpdate", myCon);
                myCmd.CommandType = CommandType.StoredProcedure;
                if (Convert.ToInt32(Result) != 0)
                {
                    myCmd.Parameters.AddWithValue("@ExecutionId", Convert.ToInt32(Result));
                    myCmd.Parameters.Add("@Message", SqlDbType.VarChar, 100);
                    myCmd.Parameters["@Message"].Direction = ParameterDirection.Output;
                    myCmd.ExecuteNonQuery();
                }

                Message = myCmd.Parameters["@Message"].Value.ToString();
                //ends here
            }
            catch (Exception ex)
            {
                Message = myCmd.Parameters["@Message"].Value.ToString();
            }
            finally
            {
                myDBConectionDAL.CloseConnection();
            }
            return Message;
        }
    }
}

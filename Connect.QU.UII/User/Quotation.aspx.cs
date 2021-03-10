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


namespace Connect.QU.UII.User
{
    public partial class Quotation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static QU.Entities.QuotationTypeDetails GetQuotationDetailsOnQuotationType(int QuotationType)
        {
            return new QU.BAL.CommonBAL().GetQuotationDetailsOnQuotationType(QuotationType);
        }
        [WebMethod]
        public static List<QU.Entities.ItemDetails> GetItemDetails(int ItemID, string ItemName)
        {
            return new QU.BAL.CommonBAL().GetItemDetails(ItemID, ItemName);
        }

        [WebMethod]
        public static List<QU.Entities.CompanyDetails> GetCompanyDetailsNew(int CompanyID, string CompanyName)
        {
            return new QU.BAL.CommonBAL().GetCompanyDetailsNew(CompanyID, CompanyName);
        }
     
        [WebMethod]
        public static string EmailQuotationDetails(string EmailId, string Name, string Title, int ID)
        {
            List<QU.Entities.TOC> TableOfContent = new QU.BAL.CommonBAL().GetTOCDetails(ID);
            List<QU.Entities.Quotation> quotationData = new QU.BAL.CommonBAL().GetQuotationDetails(ID);
            DataTable dt = new DataTable();
            dt.Columns.Add("Name OF Product/Services");
            dt.Columns.Add("HSN/SAC");
            dt.Columns.Add("Qty");
            dt.Columns.Add("Unit Price");
            dt.Columns.Add("Value Without Tax");
            dt.Columns.Add("Igst %");
            dt.Columns.Add("Igst Amount");
            dt.Columns.Add("Total");
            foreach (var arr in TableOfContent)
            {
                for (var i = 0; i < 1; i++)//arr.Length; i++)
                {
                    DataRow dr = dt.NewRow();
                    dr["Name OF Product/Services"] = arr.DescriptionOfGoods;
                    dr["HSN/SAC"] = arr.Hsn;
                    dr["Qty"] = arr.Qty;
                    dr["Unit Price"] = arr.Rate;
                    dr["Value Without Tax"] = arr.Value;
                    dr["Igst %"] = arr.Igst;
                    dr["Igst Amount"] = arr.Amount;
                    dr["Total"] = arr.TotalAmount1;
                    dt.Rows.Add(dr);
                }
            }
            var quoteNo = quotationData[0].QNo.ToString();
            var QTypeValue = quotationData[0].QType.ToString();
            var QType = "SALE";
            if (QTypeValue == "2")
            {
                QType = "SERVICE";
            }
            else if (QTypeValue == "3")
            {
                QType = "TENDER";
            }
            var customerDetails = "Company Name :" + quotationData[0].QToCompanyName.ToString() + " Address : " + quotationData[0].QToAddress.ToString() + " Contect Person : " + quotationData[0].QToContactPerson.ToString();
            var finantialYear = quotationData[0].FinantialYear.ToString();
            var quotationDate = quotationData[0].CreatedDate.ToString();
            var paymentTerms = quotationData[0].PaymentTerms.ToString();
            var partyGstNo = quotationData[0].QToGSTINNo.ToString();
            var projectName = quotationData[0].ProjectName.ToString();
            var validity = quotationData[0].ValidityOfQuote.ToString();
            var place = quotationData[0].PlaceOfSupply.ToString();
            var totalInWords = quotationData[0].TotalAmountWords.ToString();
            var freigt = quotationData[0].Freight.ToString();
            var grandTotal = quotationData[0].TotalAmountDigit.ToString();
            var taxableAmount = quotationData[0].TaxableAmount.ToString();
            var ifsc = quotationData[0].BankBranchIFSC.ToString();
            var bankName = quotationData[0].BankName.ToString();
            var branchName = quotationData[0].BranchName.ToString();
            var accountNo = quotationData[0].BankAccountNo.ToString();
            var gstPaybaleOnReverseCharge = quotationData[0].TaxableAmount.ToString();
            var authorisedSignatory = quotationData[0].SignatureData.ToString();
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    string companyName = "Connect Compusys";
                    int orderNo = 2303;
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table  width='100%' cellspacing='0' cellpadding='0' border='1'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Connect Compusys Pvt Ltd</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td rowspan='2'><b> Corporate Office : </b> Flat No. 57 Navjeevan Apartment Pocket 6/3 , Sector 1A, Dwarka NEW DELHI – 110 045:");
                    sb.Append("</td><td><table><tr><td><b> Phone : </b> +91-8800722000 </td></tr><tr><td><b> Email : </b> anju@connect.co.in </td></tr></table>");
                    sb.Append("<b> Site : </b> www.connect.in</td></tr></table>");
                    //gstin qtype
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='0' border='1'>");
                    sb.Append("<tr><td><b> GSTIN No : </b>");
                    sb.Append("07AAACC4708J1ZS");
                    sb.Append("</td><td><b> Quotation Type : </b>");
                    sb.Append(QType);   //Quotation Type
                    sb.Append(" </td></tr></table>");
                    //space
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    //customer details new
                    sb.Append("<table border='1'><tr><td ><b>Customer Details : </b>");
                    sb.Append(customerDetails);   //customer details 1
                    sb.Append("</td><td><table border='1'><tr><td><b>Finantial year : </b>" + finantialYear + "</td></tr><tr><td><b>Quote No : </b>" + quoteNo + "</td></tr></table><b> Date : </b>");
                    sb.Append(quotationDate);                    //Finantial year
                    sb.Append("</td><td><b>Payment Terms (MSME Vendor) : </b>");
                    sb.Append(paymentTerms);     //PaymentTerms
                    sb.Append(" </td></tr></table>");
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='0' border='1'><tr><td ><b> Party GSTIN No : </b>");
                    sb.Append(partyGstNo);   //customer details 1
                    sb.Append("</td><td><b> Project Name : </b>");
                    sb.Append(projectName);
                    sb.Append("</td><td><table  width='100%' cellspacing='0' cellpadding='0' border='1'><tr><td><b> Validity : </b>" + validity + "</td></tr></table><b> Place : </b>");
                    sb.Append(place);                    //Finantial year
                    sb.Append("</td></tr></table>");
                    //space
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2' style='background-color: #18B5F0'><b>Goods And Services : </b>");
                    sb.Append("</td></tr></table>");
                    //DT Table
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td style='height:100px;width:30px'>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("</table>");
                    sb.Append("<table border='1'><tr><td colspan = '2'><b>Total in Words : </b>" + totalInWords + "</td> <td colspan = '2'><b>Freigt : </b>" + freigt + "</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>Grand Total : </b>" + grandTotal + "</td> <td colspan = '2'><b>Taxable amount : </b>" + taxableAmount + "</td></tr></table>");
                    //space
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2' style='background-color: #18B5F0'><b>Bank Details</b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2'><b>Bank Name : </b>" + bankName + "</td> <td colspan = '2'><b>Branch : </b>" + branchName + "</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>IFSC : </b>" + ifsc + "</td> <td colspan = '2'><b>Account No : </b>" + accountNo + "</td></tr></table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    //T&C
                    sb.Append("<table border='1'><tr><td colspan = '2'  style='background-color: #18B5F0'><b>Terms and conditionn</b> ");
                    sb.Append("</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b></b> ");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("</td></tr> </table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td><b>GST Paybale on Reverse Charge : </b>");
                    sb.Append(gstPaybaleOnReverseCharge);
                    sb.Append("</td><td><b>Authorised Signatory : </b>");
                    sb.Append(authorisedSignatory);
                    sb.Append(" </td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    try
                    {
                        using (MemoryStream memoryStream = new MemoryStream())
                        {
                            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                            pdfDoc.Open();
                            htmlparser.Parse(sr);
                            pdfDoc.Close();
                            byte[] bytes = memoryStream.ToArray();
                            memoryStream.Close();
                            MailMessage mm = new MailMessage("pravesh.kr01@gmail.com", "pravesh.kr04@gmail.com");
                            mm.Subject = "Quotation PDF";
                            mm.Body = "Quotation PDF Attachment";
                            mm.Attachments.Add(new Attachment(new MemoryStream(bytes), "QuotationPDF.pdf"));
                            mm.IsBodyHtml = true;
                            SmtpClient smtp = new SmtpClient();
                            smtp.Host = "smtp.gmail.com";
                            smtp.EnableSsl = true;
                            NetworkCredential NetworkCred = new NetworkCredential();
                            NetworkCred.UserName = "pravesh.kr01@gmail.com";
                            NetworkCred.Password = "LoveShivani";
                            smtp.UseDefaultCredentials = true;
                            smtp.Credentials = NetworkCred;
                            smtp.Port = 587;
                            smtp.Send(mm);
                        }
                    }
                    catch (Exception ex)
                    {
                        throw;
                    }
                }
            }
            return "Successfully sent the Mail";
        }

        [WebMethod]
        public static List<QU.Entities.Quotation> GetQuotationDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetQuotationDetails(QID);
        }

        [WebMethod]
        public static List<QU.Entities.Currency> GetCurrencyDetails(int CurrencyId, string CurrencyName)
        {
            return new QU.BAL.CommonBAL().GetCurrencyDetails(CurrencyId, CurrencyName);
        }

        [WebMethod]
        public static List<QU.Entities.TOC> GetTOCDetails(int QID)
        {
            return new QU.BAL.CommonBAL().GetTOCDetails(QID);
        }

        [WebMethod]
        public static string SaveUpdateQuotationDetails(Connect.QU.Entities.Quotation cnt)
        {
            Random RN = new Random();
            string TOCID = Convert.ToString(RN.Next(10, 1000000));
            cnt.User_ID = HttpContext.Current.User.Identity.Name.ToString();
            cnt.QFromCompanyName = "CONNECT COMPUSYS PVT. LTD";
            cnt.QFromAddress = "Flat No. 57 Navjeevan Apartment Pocket 6/3 Sector 1A, Dwarka NEW DELHI – 110 045 ";
            cnt.QFromContactNo = "8800722000";
            cnt.QFromContactPerson = "Anju Pachnanda";
            cnt.QFromEmailID = "anju@connect.co.in";
            return new QU.BAL.CommonBAL().SaveUpdateQuotationDetails(cnt);
        }

        [WebMethod]
        public static string ExportToPDF(int QID)
        {
            List<QU.Entities.TOC> TableOfContent = new QU.BAL.CommonBAL().GetTOCDetails(QID);
            List<QU.Entities.Quotation> quotationData = new QU.BAL.CommonBAL().GetQuotationDetails(QID);
            string Result = "";
            DataTable dt = new DataTable();
            dt.Columns.Add("Name OF Product/Services");
            dt.Columns.Add("HSN/SAC");
            dt.Columns.Add("Qty");
            dt.Columns.Add("Unit Price");
            dt.Columns.Add("Value Without Tax");
            dt.Columns.Add("Igst %");
            dt.Columns.Add("Igst Amount");
            dt.Columns.Add("Total");
            foreach (var arr in TableOfContent)
            {
                for (var i = 0; i < 1; i++)//arr.Length; i++)
                {
                    DataRow dr = dt.NewRow();
                    dr["Name OF Product/Services"] = arr.DescriptionOfGoods;
                    dr["HSN/SAC"] = arr.Hsn;
                    dr["Qty"] = arr.Qty;
                    dr["Unit Price"] = arr.Rate;
                    dr["Value Without Tax"] = arr.Value;
                    dr["Igst %"] = arr.Igst;
                    dr["Igst Amount"] = arr.Amount;
                    dr["Total"] = arr.TotalAmount1;
                    dt.Rows.Add(dr);
                }
            }
            var quoteNo = quotationData[0].QNo.ToString();
            var QTypeValue = quotationData[0].QType.ToString();
            var QType = "SALE";
            if (QTypeValue == "2")
            {
                QType = "SERVICE";
            }
            else if (QTypeValue == "3")
            {
                QType = "TENDER";
            }
            var customerDetails = "Company Name :" + quotationData[0].QToCompanyName.ToString() + " Address : " + quotationData[0].QToAddress.ToString() + " Contect Person : " + quotationData[0].QToContactPerson.ToString();
            var finantialYear = quotationData[0].FinantialYear.ToString();
            var quotationDate = quotationData[0].CreatedDate.ToString();
            var paymentTerms = quotationData[0].PaymentTerms.ToString();
            var partyGstNo = quotationData[0].QToGSTINNo.ToString();
            var projectName = quotationData[0].ProjectName.ToString();
            var validity = quotationData[0].ValidityOfQuote.ToString();
            var place = quotationData[0].PlaceOfSupply.ToString();
            var totalInWords = quotationData[0].TotalAmountWords.ToString();
            var freigt = quotationData[0].Freight.ToString();
            var grandTotal = quotationData[0].TotalAmountDigit.ToString();
            var taxableAmount = quotationData[0].TaxableAmount.ToString();
            var ifsc = quotationData[0].BankBranchIFSC.ToString();
            var bankName = quotationData[0].BankName.ToString();
            var branchName = quotationData[0].BranchName.ToString();
            var accountNo = quotationData[0].BankAccountNo.ToString();
            var gstPaybaleOnReverseCharge = quotationData[0].TaxableAmount.ToString();
            var authorisedSignatory = quotationData[0].SignatureData.ToString();
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    string companyName = "Connect Compusys";
                    int orderNo = 2303;
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table  width='100%' cellspacing='0' cellpadding='0' border='1'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Connect Compusys Pvt Ltd</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td rowspan='2'><b> Corporate Office : </b> Flat No. 57 Navjeevan Apartment Pocket 6/3 , Sector 1A, Dwarka NEW DELHI – 110 045:");
                    sb.Append("</td><td><table><tr><td><b> Phone : </b> +91-8800722000 </td></tr><tr><td><b> Email : </b> anju@connect.co.in </td></tr></table>");
                    sb.Append("<b> Site : </b> www.connect.in</td></tr></table>");
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='0' border='1'>");
                    sb.Append("<tr><td><b> GSTIN No : </b>");
                    sb.Append("07AAACC4708J1ZS");
                    sb.Append("</td><td><b> Quotation Type : </b>");
                    sb.Append(QType);   //Quotation Type
                    sb.Append(" </td></tr></table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td ><b>Customer Details : </b>");
                    sb.Append(customerDetails);   //customer details 1
                    sb.Append("</td><td><table border='1'><tr><td><b>Finantial year : </b>" + finantialYear + "</td></tr><tr><td><b>Quote No : </b>" + quoteNo + "</td></tr></table><b> Date : </b>");
                    sb.Append(quotationDate);                    //Finantial year
                    sb.Append("</td><td><b>Payment Terms (MSME Vendor) : </b>");
                    sb.Append(paymentTerms);     //PaymentTerms
                    sb.Append(" </td></tr></table>");
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='0' border='1'><tr><td ><b> Party GSTIN No : </b>");
                    sb.Append(partyGstNo);   //customer details 1
                    sb.Append("</td><td><b> Project Name : </b>");
                    sb.Append(projectName);
                    sb.Append("</td><td><table  width='100%' cellspacing='0' cellpadding='0' border='1'><tr><td><b> Validity : </b>" + validity + "</td></tr></table><b> Place : </b>");
                    sb.Append(place);                    //Finantial year
                    sb.Append("</td></tr></table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2' style='background-color: #18B5F0'><b>Goods And Services : </b>");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td style='height:100px;width:30px'>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("</table>");
                    sb.Append("<table border='1'><tr><td colspan = '2'><b>Total in Words : </b>" + totalInWords + "</td> <td colspan = '2'><b>Freigt : </b>" + freigt + "</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>Grand Total : </b>" + grandTotal + "</td> <td colspan = '2'><b>Taxable amount : </b>" + taxableAmount + "</td></tr></table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2' style='background-color: #18B5F0'><b>Bank Details</b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2'><b>Bank Name : </b>" + bankName + "</td> <td colspan = '2'><b>Branch : </b>" + branchName + "</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>IFSC : </b>" + ifsc + "</td> <td colspan = '2'><b>Account No : </b>" + accountNo + "</td></tr></table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td colspan = '2'  style='background-color: #18B5F0'><b>Terms and conditionn</b> ");
                    sb.Append("</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b></b> ");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
                    sb.Append("</td></tr> </table>");
                    sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
                    sb.Append("</td></tr></table>");
                    sb.Append("<table border='1'><tr><td><b>GST Paybale on Reverse Charge : </b>");
                    sb.Append(gstPaybaleOnReverseCharge);
                    sb.Append("</td><td><b>Authorised Signatory : </b>");
                    sb.Append(authorisedSignatory);
                    sb.Append(" </td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    try
                    {
                        using (MemoryStream memoryStream = new MemoryStream())
                        {
                            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                            pdfDoc.Open();
                            htmlparser.Parse(sr);
                            pdfDoc.Close();
                            memoryStream.Close();
                            byte[] bytes = memoryStream.ToArray();
                            return Convert.ToBase64String(bytes, 0, bytes.Length);
                        }
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    return Result = "Data Export Successfully";
                }
            }
        }
        [WebMethod]
        public static List<QU.Entities.Location> GetLocationDetails(int CompanyID)
        {
            return new QU.BAL.CommonBAL().GetLocationDetails(CompanyID);
        }


        //private static void DrawLine(PdfWriter writer, float x1, float y1, float x2, float y2, Color color)
        //{
        //    PdfContentByte contentByte = writer.DirectContent;
        //    contentByte.SetColorStroke(color);
        //    contentByte.MoveTo(x1, y1);
        //    contentByte.LineTo(x2, y2);
        //    contentByte.Stroke();
        //}
        //private static PdfPCell PhraseCell(Phrase phrase, int align)
        //{
        //    PdfPCell cell = new PdfPCell(phrase);
        //    cell.BorderColor = Color.WHITE;
        //    cell.VerticalAlignment = PdfCell.ALIGN_TOP;
        //    cell.HorizontalAlignment = align;
        //    cell.PaddingBottom = 2f;
        //    cell.PaddingTop = 0f;
        //    return cell;
        //}
        //private static PdfPCell ImageCell(string path, float scale, int align)
        //{
        //    iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(HttpContext.Current.Server.MapPath(path));
        //    image.ScalePercent(scale);
        //    PdfPCell cell = new PdfPCell(image);
        //    cell.BorderColor = Color.WHITE;
        //    cell.VerticalAlignment = PdfCell.ALIGN_TOP;
        //    cell.HorizontalAlignment = align;
        //    cell.PaddingBottom = 0f;
        //    cell.PaddingTop = 0f;
        //    return cell;
        //}

        //[WebMethod]
        //public static string EmailQuotationDetails_Working(string EmailId, string Name, string Title)
        //{
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("S No");
        //    dt.Columns.Add("Name OF Product/Services");
        //    dt.Columns.Add("HSN/SAC");
        //    dt.Columns.Add("Qty");
        //    dt.Columns.Add("Unit Price");
        //    dt.Columns.Add("Value Without Tax");
        //    dt.Columns.Add("Igst %");
        //    dt.Columns.Add("Igst Amount");
        //    dt.Columns.Add("Total");
        //    string[] TableOfContent = { "1" };
        //    foreach (var arr in TableOfContent)
        //    {
        //        for (var i = 0; i < 1; i++)//arr.Length; i++)
        //        {
        //            DataRow dr = dt.NewRow();
        //            dr["S No"] = i;
        //            dr["Name OF Product/Services"] = "sfd";
        //            dr["HSN/SAC"] = 1;
        //            dr["Qty"] = DateTime.Now;
        //            dr["Unit Price"] = 1;
        //            dr["Value Without Tax"] = DateTime.Now;
        //            dr["Igst %"] = "1";
        //            dr["Igst Amount"] = DateTime.Now;
        //            dr["Total"] = "1";
        //            dt.Rows.Add(dr);
        //        }
        //    }
        //    using (StringWriter sw = new StringWriter())
        //    {
        //        using (HtmlTextWriter hw = new HtmlTextWriter(sw))
        //        {
        //            string companyName = "Connect Compusys";
        //            int orderNo = 2303;
        //            StringBuilder sb = new StringBuilder();
        //            sb.Append("<table  width='100%' cellspacing='0' cellpadding='0' border='1'>");
        //            sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Connect Compusys Pvt Ltd</b></td></tr>");
        //            sb.Append("<tr><td colspan = '2'></td></tr>");
        //            sb.Append("<tr><td rowspan='2'><b>Corporate Office:</b> Flat No. 57 Navjeevan Apartment Pocket 6/3 , Sector 1A, Dwarka NEW DELHI – 110 045:");
        //            sb.Append("</td><td><table><tr><td>Phone: +91-8800722000 </td></tr><tr><td>Email: anju@connect.co.in </td></tr></table>");
        //            sb.Append("Site: www.connect.in</td></tr></table>");
        //            //gstin qtype
        //            sb.Append("<table width='100%' cellspacing='0' cellpadding='0' border='1'>");
        //            sb.Append("<tr><td><b>GSTIN No:</b>");
        //            sb.Append("07AAACC4708J1ZS");
        //            sb.Append("</td><td><b>Q Type: </b>");
        //            sb.Append("QType");   //Quotation Type
        //            sb.Append(" </td></tr></table>");
        //            //space
        //            sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
        //            sb.Append("</td></tr></table>");
        //            //customer details new
        //            sb.Append("<table border='1'><tr><td ><b>Customer Details:</b>");
        //            sb.Append("CustomerDetails 1 customerdeails fdkfjkdjfkjkadfljsdk  df dkf dkfkd fd f  d fd f d fd  fd fd f df d fd fdf");   //customer details 1
        //            sb.Append("</td><td><table border='1'><tr><td>Finantial year:</td></tr><tr><td>Quote No:</td></tr></table><b>Date: </b>");
        //            sb.Append(DateTime.Now);                    //Finantial year
        //            sb.Append("</td><td><b>PaymentTerms (MSME Vendor) :</b>");
        //            sb.Append("PaymentTerms");     //PaymentTerms
        //            sb.Append(" </td></tr></table>");
        //            sb.Append("<table width='100%' cellspacing='0' cellpadding='0' border='1'><tr><td ><b>Party Gst no:</b>");
        //            sb.Append("gfgfgfgfgfgfgfgfgfgffgfg");   //customer details 1
        //            sb.Append("</td><td><b>Project Name :</b>");
        //            sb.Append("ssfsfsfsfsfsf");
        //            sb.Append("</td><td><table  width='100%' cellspacing='0' cellpadding='0' border='1'><tr><td>validity:</td></tr></table><b>place: </b>");
        //            sb.Append(DateTime.Now);                    //Finantial year
        //            sb.Append("</td></tr></table>");
        //            //space
        //            sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
        //            sb.Append("</td></tr></table>");
        //            sb.Append("<table border='1'><tr><td colspan = '2'><b>Goods And Services :</b> ");
        //            sb.Append("</td></tr></table>");
        //            //DT Table
        //            sb.Append("<table border = '1'>");
        //            sb.Append("<tr>");
        //            foreach (DataColumn column in dt.Columns)
        //            {
        //                sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
        //                sb.Append(column.ColumnName);
        //                sb.Append("</th>");
        //            }
        //            sb.Append("</tr>");
        //            foreach (DataRow row in dt.Rows)
        //            {
        //                sb.Append("<tr>");
        //                foreach (DataColumn column in dt.Columns)
        //                {
        //                    sb.Append("<td style='height:100px;width:30px'>");
        //                    sb.Append(row[column]);
        //                    sb.Append("</td>");
        //                }
        //                sb.Append("</tr>");
        //            }
        //            sb.Append("</table>");
        //            sb.Append("<table border='1'><tr><td colspan = '2'><b>Total in Words:</b></td> <td colspan = '2'><b>Freigt:</b></td></tr>");
        //            sb.Append("<tr><td colspan = '2'><b>Grand Total:    </b></td> <td colspan = '2'><b>Taxable amount:</b></td></tr></table>");
        //            //space
        //            sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
        //            sb.Append("</td></tr></table>");
        //            sb.Append("<table border='1'><tr><td colspan = '2'><b>Bank Details</b> ");
        //            sb.Append("</td></tr></table>");
        //            sb.Append("<table border='1'><tr><td colspan = '2'><b>Bank Name:</b></td> <td colspan = '2'><b>Branch :</b></td></tr>");
        //            sb.Append("<tr><td colspan = '2'><b>IFSC:</b></td> <td colspan = '2'><b>Account No:</b></td></tr></table>");
        //            sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
        //            sb.Append("</td></tr></table>");
        //            //T&C
        //            sb.Append("<table border='1'><tr><td colspan = '2'><b>Terms and conditionn</b> ");
        //            sb.Append("</td></tr>");
        //            sb.Append("<tr><td colspan = '2'><b></b> ");
        //            sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
        //            sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
        //            sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
        //            sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
        //            sb.Append("1. All Disputes are Subject to Delhi Jurisdiction Only");
        //            sb.Append("</td></tr> </table>");
        //            sb.Append("<table><tr><td colspan = '2'><b>                                                                           </b> ");
        //            sb.Append("</td></tr></table>");
        //            sb.Append("<table border='1'><tr><td><b>GST Paybale on Reverse Charge:</b>");
        //            sb.Append("NA");
        //            sb.Append("</td><td><b>Authorised Signatory: </b>");
        //            sb.Append("Authorised Signatory");
        //            sb.Append(" </td></tr>");
        //            sb.Append("</table>");
        //            sb.Append("<br />");
        //            StringReader sr = new StringReader(sb.ToString());
        //            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        //            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        //            try
        //            {
        //                using (MemoryStream memoryStream = new MemoryStream())
        //                {
        //                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
        //                    pdfDoc.Open();
        //                    htmlparser.Parse(sr);
        //                    pdfDoc.Close();
        //                    byte[] bytes = memoryStream.ToArray();
        //                    memoryStream.Close();
        //                    MailMessage mm = new MailMessage("pravesh.kr01@gmail.com", "pravesh.kr04@gmail.com");
        //                    mm.Subject = "Quotation PDF";
        //                    mm.Body = "Quotation PDF Attachment";
        //                    mm.Attachments.Add(new Attachment(new MemoryStream(bytes), "QuotationPDF.pdf"));
        //                    mm.IsBodyHtml = true;
        //                    SmtpClient smtp = new SmtpClient();
        //                    smtp.Host = "smtp.gmail.com";
        //                    smtp.EnableSsl = true;
        //                    NetworkCredential NetworkCred = new NetworkCredential();
        //                    NetworkCred.UserName = "pravesh.kr01@gmail.com";
        //                    NetworkCred.Password = "LoveShivani";
        //                    smtp.UseDefaultCredentials = true;
        //                    smtp.Credentials = NetworkCred;
        //                    smtp.Port = 587;
        //                    smtp.Send(mm);
        //                }

        //            }
        //            catch (Exception ex)
        //            {

        //                throw;
        //            }
        //        }
        //    }
        //    return "Successfully sent the Mail";
        //}
    }
}
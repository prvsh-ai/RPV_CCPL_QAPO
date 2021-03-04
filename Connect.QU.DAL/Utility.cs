using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.DAL
{
    public class Utility
    {
       public DataTable ConvertToDataTable<T>(List<T> models)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);
            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            try
            {
                foreach (PropertyInfo prop in Props)
                {
                    dataTable.Columns.Add(prop.Name);
                }
                foreach (T item in models)
                {
                    var values = new object[Props.Length];
                    for (int i = 0; i < Props.Length; i++)
                    {
                        values[i] = Props[i].GetValue(item, null);
                    }
                    dataTable.Rows.Add(values);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dataTable;
        }

        public string GenerateExcel(DataTable dataTable, string path)
        {
            string Result = "";
            try
            {
                DataSet dataSet = new DataSet();
                
                dataSet.Tables.Add(dataTable);

                // create a excel app along side with workbook and worksheet and give a name to it  
                Microsoft.Office.Interop.Excel.Application excelApp = new Microsoft.Office.Interop.Excel.Application();
                Microsoft.Office.Interop.Excel.Workbook excelWorkBook = excelApp.Workbooks.Add();
                Microsoft.Office.Interop.Excel._Worksheet xlWorksheet = excelWorkBook.Sheets[1];
                Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
                foreach (DataTable table in dataSet.Tables)
                {
                    //Add a new worksheet to workbook with the Datatable name  
                    Microsoft.Office.Interop.Excel.Worksheet excelWorkSheet = excelWorkBook.Sheets.Add();
                    excelWorkSheet.Name = table.TableName;                    
                    // add all the columns  
                    for (int i = 1; i < table.Columns.Count + 1; i++)
                    {
                        excelWorkSheet.Cells[1, i] = table.Columns[i - 1].ColumnName;
                       
                    }

                    excelWorkSheet.Range[excelWorkSheet.Cells[1, 1], excelWorkSheet.Cells[1, table.Columns.Count]].Interior.Color =
                           System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.Yellow);
                    excelWorkSheet.Range[excelWorkSheet.Cells[1, 1], excelWorkSheet.Cells[1, table.Columns.Count]].Font.Bold = true;
                    excelWorkSheet.Range[excelWorkSheet.Cells[1, 1], excelWorkSheet.Cells[1, table.Columns.Count]].Font.Size = 12;
                    excelWorkSheet.Range[excelWorkSheet.Cells[1, 1], excelWorkSheet.Cells[table.Rows.Count, table.Columns.Count]].EntireColumn.AutoFit();

                   

                    // add all the rows  
                    for (int j = 0; j < table.Rows.Count; j++)
                    {
                        for (int k = 0; k < table.Columns.Count; k++)
                        {
                            excelWorkSheet.Cells[j + 2, k + 1] = table.Rows[j].ItemArray[k].ToString();
                            Microsoft.Office.Interop.Excel.Range range = excelWorkSheet.UsedRange;
                            Microsoft.Office.Interop.Excel.Range cell = excelWorkSheet.Cells[j + 2, k + 1];
                            //Microsoft.Office.Interop.Excel.Range borders = cell.Borders;

                        }
                    }
                    Microsoft.Office.Interop.Excel.Range tRange = excelWorkSheet.UsedRange;
                    tRange.Borders.LineStyle = Microsoft.Office.Interop.Excel.XlLineStyle.xlContinuous;
                    tRange.Borders.Weight = Microsoft.Office.Interop.Excel.XlBorderWeight.xlThin;

                }
                // excelWorkBook.Save(); -> this is save to its default location  
                excelWorkBook.SaveAs(path); // -> this will do the custom  
                excelWorkBook.Close();
                excelApp.Quit();
                Result = "File Downloaded Successfully";
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Result;

        }

    }
}

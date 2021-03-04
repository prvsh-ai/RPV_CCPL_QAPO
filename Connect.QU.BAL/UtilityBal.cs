using Connect.QU.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Connect.QU.BAL
{
    public class UtilityBal
    {
        public static DataTable ConvertToDataTable<T>(List<T> models)
        {
            return new Utility().ConvertToDataTable(models);
        }

        public static string GenerateExcel(DataTable dataTable, string path)
        {
           return new Utility().GenerateExcel(dataTable, path);
        }
    }
}

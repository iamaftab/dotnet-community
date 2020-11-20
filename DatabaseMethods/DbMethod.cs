using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseMethods
{
    public static class DbMethod
    {
        public static int GenerateId(string idColumn, string tableName)
        {
            string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
            int id = 0;
            string query = $"SELECT count({idColumn}) FROM {tableName}";
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                int idcount = (int)cmd.ExecuteScalar();
                id = idcount == 0 ? 1 : (idcount + 1);
            }
            return id;
        }
    }
}

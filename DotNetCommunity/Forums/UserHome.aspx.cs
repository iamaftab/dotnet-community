using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetCommunity.UserManage
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
                string query = "SELECT Name FROM Login WHERE LoginID = @id";

                using(SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("id", (int)Session["LoginId"]);
                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        LblUserName.Text = (string)rdr["Name"];
                    }
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetCommunity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("LoginId");
            usernameTxtBox.Focus();

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
            string query = "SELECT * FROM Login where Username = @name and Password = @pass";

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", usernameTxtBox.Text);
                cmd.Parameters.AddWithValue("@pass", passwordTxtBox.Text);
                conn.Open();
                int i = cmd.ExecuteScalar() != null ? ((int)cmd.ExecuteScalar()) : 0;
                if(i != 0 )
                {
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        Session["LoginId"] = rdr["LoginId"];
                    }
                    Response.Redirect("./Forums/UserHome");
                } 
                else
                {
                    LblErrorMsg.Text = "Invalid Password. </br> Please enter correct password.";
                    passwordTxtBox.Text = "";
                    LblErrorMsg.ForeColor = Color.Red;
                    passwordTxtBox.Focus();
                }
            }
        }
    }
}
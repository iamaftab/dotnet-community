using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetCommunity
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nameTxtBox.Focus();
            string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
            string query = "SELECT count(LoginId) FROM Login";
            using(SqlConnection conn= new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                int idcount = (int)cmd.ExecuteScalar();
                int id = idcount == 0 ? 1 : (idcount + 1);
                loginId_lbl.Text = id.ToString();
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
            string query = "Insert into Login Values(@loginId, @name, @username, @password, @sceQuestion, @answer, @status)";
            string status = "disable";
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@loginId", loginId_lbl.Text);
                cmd.Parameters.AddWithValue("@name", nameTxtBox.Text);
                cmd.Parameters.AddWithValue("@username", usernameTxtBox.Text);
                cmd.Parameters.AddWithValue("@password", passwordTxtBox.Text);
                cmd.Parameters.AddWithValue("@sceQuestion", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@answer", answerTxtBox.Text);
                cmd.Parameters.AddWithValue("@status", status);
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("./Login");
        }
    }
}
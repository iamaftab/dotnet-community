using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseMethods;

namespace DotNetCommunity.Forums
{
    public partial class PostAQuery : System.Web.UI.Page
    {
        readonly string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
            else
            {
                int id = DbMethod.GenerateId("questionId", "Forums");
                qIdLbl.Text = id.ToString();
            }
        }

        protected void PostqueryBtn_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO Forums VALUES(@qId, @question, @loginId)";
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("qId", qIdLbl.Text);
                cmd.Parameters.AddWithValue("question", qtxtBox.Text);
                cmd.Parameters.AddWithValue("loginId", (int)Session["LoginId"]);
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("ViewAllAnsweredQuestion");
        }
    }
}
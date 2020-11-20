using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetCommunity.Forums
{
    public partial class ViewAllAnsweredQuestion : System.Web.UI.Page
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
                string query = "Select F.Question, FR.Reply, L.Name AS \"Posted By\" From Forums F Inner Join Forum_Reply FR On F.QuestionId = FR.QuestionId Inner Join Login L On FR.LoginId = L.LoginId";
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    gvAllAnsweredQuestion.DataSource = cmd.ExecuteReader();
                    gvAllAnsweredQuestion.DataBind();
                }
            }
        }
    }
}
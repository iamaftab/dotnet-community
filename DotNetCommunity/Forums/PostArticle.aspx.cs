using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseMethods;
using DotNetCommunity.Forums;

namespace DotNetCommunity.Forums
{
    public partial class PostArticle : System.Web.UI.Page
    {
        readonly string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
            else
            {
                int id = DbMethod.GenerateId("ArticleId", "Article");
                LblArtiId.Text = id.ToString();
            }
        }

        protected void BtnPostArticle_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string query = "INSERT INTO Article VALUES(@aId, @aType, @aDesc, @cDate, @logId)";
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("aId", LblArtiId.Text);
                cmd.Parameters.AddWithValue("aType", TxtArtiType.Text);
                cmd.Parameters.AddWithValue("aDesc", TxtDesc.Text);
                cmd.Parameters.AddWithValue("cdate", date);
                cmd.Parameters.AddWithValue("logId", (int)Session["LoginId"]);
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("ViewAllArticle");
        }
    }
}
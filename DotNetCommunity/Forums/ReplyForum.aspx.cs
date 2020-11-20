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
    public partial class ReplyForum : System.Web.UI.Page
    {
        readonly string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
        int rId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
            else
            {
                LblQuestion.Text = Request.QueryString["question"].ToString();
                string query = "SELECT count(ReplyId) FROM Forum_Reply";
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    int idcount = (int)cmd.ExecuteScalar();
                    rId = idcount == 0 ? 1 : (idcount + 1);
                }
            }
        }

        protected void BtnPostReply_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO Forum_Reply VALUES(@rId, @reply, @qId, @logId)";
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("rId", rId);
                cmd.Parameters.AddWithValue("reply", TxtAnswer.Text);
                cmd.Parameters.AddWithValue("qId", Request.QueryString["qId"]);
                cmd.Parameters.AddWithValue("logId", (int)Session["LoginId"]);
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Redirect("ViewAllAnsweredQuestion");
                }
            }

        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetCommunity.Forums
{
    public partial class SearchArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
            string query = "Select A.ArticleType, A.ArticleDesc, A.CDate AS \"Posted Date\", L.Name AS \"Posted By\" From Article A Inner Join Login L On A.LoginId = L.LoginId Where A.ArticleType = @searchKey";
            using(SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("searchKey", TxtSearch.Text);
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (!rdr.HasRows)
                {
                    GvArticle.DataSource = null;
                    GvArticle.DataBind();
                    LblErrorMsg.Text = $"No '{TxtSearch.Text}' keyword is found. Please try again!";
                    LblErrorMsg.ForeColor = Color.Red;
                }
                else
                {
                    LblErrorMsg.Text = "";
                    GvArticle.DataSource = rdr;
                    GvArticle.DataBind();
                }
            }
        }
    }
}
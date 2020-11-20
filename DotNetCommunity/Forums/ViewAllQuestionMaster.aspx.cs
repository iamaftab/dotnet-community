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
    public partial class ViewAllQuestionMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvRow = GridView1.SelectedRow;
            Response.Redirect("ReplyForum.aspx?qId=" + gvRow.Cells[0].Text + "&question=" + gvRow.Cells[1].Text);
        }
    }
}
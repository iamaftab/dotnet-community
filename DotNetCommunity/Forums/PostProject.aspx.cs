using DatabaseMethods;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetCommunity.Forums
{
    public partial class PostProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["LoginId"] == null)
            {
                Response.Redirect("../Login");
            }
            else
            {
                int id = DbMethod.GenerateId("ProjectId", "Project");
                LblPojectId.Text = id.ToString();
            }
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (FileUploadId.HasFile)
            {
                FileUploadId.SaveAs(Server.MapPath("~/Uploaded_Projects/" + FileUploadId.FileName));
            }
            else
            {
                LblErrorMsg.Text = "Please select a file";
                LblErrorMsg.ForeColor = Color.Red;
            }

            string CS = ConfigurationManager.ConnectionStrings["communityDB"].ConnectionString;
            string query = "INSERT INTO Project VALUES(@pId, @pType, @filename, @fileType, @logId)";
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("pId", LblPojectId.Text);
                cmd.Parameters.AddWithValue("pType", TxtProjectType.Text);
                cmd.Parameters.AddWithValue("filename", FileUploadId.FileName);
                cmd.Parameters.AddWithValue("fileType", Path.GetExtension(FileUploadId.FileName).ToUpper());
                cmd.Parameters.AddWithValue("logId", Session["LoginId"]);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
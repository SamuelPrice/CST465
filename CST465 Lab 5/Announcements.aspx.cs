using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_Lab_5
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PostButton_Click(object sender, EventArgs e)
        {
            TextBox titleTextBox = (TextBox)LoginView.FindControl("TitleTextBox");
            TextBox bodyTextBox = (TextBox)LoginView.FindControl("bodyTextBox");
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlCommand command = new SqlCommand("INSERT INTO Announcements (UserId, Title, Body) VALUES (@UserId, @Title, @Body)", connection);
            command.Parameters.AddWithValue("@UserId", Membership.GetUser().ProviderUserKey.ToString());
            command.Parameters.AddWithValue("@Title", titleTextBox.Text);
            command.Parameters.AddWithValue("@Body", bodyTextBox.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void TitleText_Click(object sender, EventArgs e)
        {
            LinkButton arg = (LinkButton)sender;
            Response.Redirect("Announcement.aspx?Announcement=" + arg.CommandArgument.ToString());
        }
    }
}
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
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT Title, Body, Name FROM Announcements JOIN UserProfile ON UserProfile.UserId=Announcements.UserId WHERE AnnouncementId = @Id", connection);
            command.Parameters.AddWithValue("@Id", Request.QueryString.Get("Announcement"));
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                TitleLabel.Text = reader[0].ToString();
                BodyLabel.Text = reader[1].ToString();
                NameLabel.Text = reader[2].ToString();
            }
            reader.Close();
            connection.Close();

            SqlDataSource dataSource = new SqlDataSource(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString, "SELECT Name, Comment, DatePosted FROM Comments JOIN UserProfile ON UserProfile.UserId=Comments.UserId WHERE AnnouncementId=@Id");
            dataSource.SelectParameters.Add("Id", Request.QueryString.Get("Announcement"));

            Repeater.DataSource = dataSource;
            Repeater.DataBind();

            
        }

        protected void PostButton_Click(object sender, EventArgs e)
        {
            TextBox commentTextBox = (TextBox)LoginView.FindControl("CommentTextBox");
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlCommand command = new SqlCommand("INSERT INTO Comments VALUES (@UserId, @Comment, @AnnouncementId)", connection);
            connection.Open();
            command.Parameters.AddWithValue("@UserId", Membership.GetUser().ProviderUserKey.ToString());
            command.Parameters.AddWithValue("@Comment", commentTextBox.Text);
            command.Parameters.AddWithValue("@AnnouncementId", Request.QueryString.Get("Announcement"));
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}
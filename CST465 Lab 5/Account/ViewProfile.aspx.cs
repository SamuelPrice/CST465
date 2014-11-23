using CST465_Lab_5;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfileData profile = (ProfileData)Session["Profile"];
        if (profile != null)
        {
            Name.Text = profile.name;
            Email.Text = profile.email;
            UserType.Text = profile.userType;
            Hobby.Text = profile.hobby;
            Band.Text = profile.band;
            Biography.Text = profile.biography;
            CoursePrefix.Text = profile.coursePrefix;
            CourseNumber.Text = profile.courseNumber;
            CourseDescription.Text = profile.courseDescription;
        }
    }
}
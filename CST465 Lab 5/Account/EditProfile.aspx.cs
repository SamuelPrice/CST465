using CST465_Lab_5;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Save_Click(object sender, EventArgs e)
    {
        ProfileData profile = new ProfileData();
        profile.name = Name.Text;
        profile.email = Email.Text;
        profile.userType = UserType.Text;
        profile.hobby = Hobby.Text;
        profile.band = Band.Text;
        profile.biography = Biography.Text;
        profile.coursePrefix = CoursePrefix.Text;
        profile.courseNumber = CourseNumber.Text;
        profile.courseDescription = CourseDescription.Text;
        Session["Profile"] = profile;
        Response.Redirect("~/ViewProfile.aspx");
    }
}
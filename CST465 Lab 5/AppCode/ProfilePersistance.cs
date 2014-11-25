using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;

namespace CST465_Lab_5
{
    public class ProfilePersistance
    {
        public static void SaveProfile(ProfileData profile)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlCommand command = new SqlCommand("UserProfile_InsertUpdate", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@UserId", Membership.GetUser().ProviderUserKey.ToString());
            command.Parameters.AddWithValue("@Name", profile.name);
            command.Parameters.AddWithValue("@Email", profile.email);
            command.Parameters.AddWithValue("@UserType", profile.userType);
            command.Parameters.AddWithValue("@Hobbies", profile.hobby);
            command.Parameters.AddWithValue("@FavoriteBands", profile.band);
            command.Parameters.AddWithValue("@Biography", profile.biography);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }

        public static ProfileData LoadProfile()
        {
            ProfileData profile = new ProfileData();
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlCommand command = new SqlCommand("SELECT Name, Email, UserType, Hobbies, FavoriteBands, Biography FROM UserProfile WHERE UserId = '" + Membership.GetUser().ProviderUserKey.ToString() + "'", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                profile.name = reader["Name"].ToString();
                profile.email = reader["Email"].ToString();
                profile.userType = reader["UserType"].ToString();
                profile.hobby = reader["Hobbies"].ToString();
                profile.band = reader["FavoriteBands"].ToString();
                profile.biography = reader["Biography"].ToString();
            }
            reader.Close();
            connection.Close();
            return profile;
        }
    }
}
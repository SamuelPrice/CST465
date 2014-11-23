using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CST465_Lab_5
{
    public class ProfilePersistance
    {
        public void SaveProfile(ProfileData profile)
        {
            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;

        }

        public ProfileData LoadProfile()
        {

            return null;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_Lab_5
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //foreach (string role in Roles.GetAllRoles())
            //{
            //    RoleDropDownList.Items.Add(new ListItem(role));
            //}
        }

        protected void CreateRoleButton_Click(object sender, EventArgs e)
        {
            if (!Roles.RoleExists(RoleNameTextBox.Text))
            {
                Roles.CreateRole(RoleNameTextBox.Text);
            }
        }

        protected void AssociateUserButton_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(UserDropDownList.SelectedValue, RoleDropDownList.SelectedValue);
        }
    }
}
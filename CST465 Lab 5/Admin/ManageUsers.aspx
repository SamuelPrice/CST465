<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="CST465_Lab_5.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage Users</h1>
    <asp:SqlDataSource ID="UsersDataSource" ConnectionString="<%$ ConnectionStrings:DB %>" SelectCommandType="Text" SelectCommand="SELECT UserName FROM aspnet_Users" runat="server" />
    <fieldset>
        <legend>Add Roles</legend>
        <asp:Label runat="server" AssociatedControlID="RoleNameTextBox">Role Name</asp:Label>
        <asp:TextBox runat="server" ID="RoleNameTextBox"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Create Role" ID="CreateRoleButton" OnClick="CreateRoleButton_Click"/>
    </fieldset>
    <fieldset>
        <legend>Role Membership</legend>
        <asp:Label runat="server" AssociatedControlID="UserDropDownList">User</asp:Label>
        <asp:DropDownList runat="server" ID="UserDropDownList" DataValueField="UserName" DataSourceID="UsersDataSource" />
        <br />
        <asp:Label runat="server" AssociatedControlID="RoleDropDownList">Role</asp:Label>
        <asp:DropDownList runat="server" ID="RoleDropDownList"/>
        <br />
        <asp:Button runat="server" ID="AssociateUserButton" Text="Associate User" OnClick="AssociateUserButton_Click" />
    </fieldset>
</asp:Content>

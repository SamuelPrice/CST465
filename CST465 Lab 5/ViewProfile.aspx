<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="ViewProfile" Codebehind="ViewProfile.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View Your Profile</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>View Your Profile</h1>
    <span class="fieldTitle">Name:</span>
    <asp:Literal ID="Name" runat="server"/>
    <br />
    <span class="fieldTitle">Email:</span>
    <asp:Literal ID="Email" runat="server"/>
    <br />
    <span class="fieldTitle">User Type:</span>
    <asp:Literal ID="UserType" runat="server"/>
    <br />
    <span class="fieldTitle">Hobby:</span>
    <asp:Literal ID="Hobby" runat="server"/>
    <br />
    <span class="fieldTitle">Band:</span>
    <asp:Literal ID="Band" runat="server"/>
    <br />
    <span class="fieldTitle">Biography:</span>
    <asp:Literal ID="Biography" runat="server"/>
    <br />
    <span class="fieldTitle">Course Prefix:</span>
    <asp:Literal ID="CoursePrefix" runat="server"/>
    <br />
    <span class="fieldTitle">Course Number:</span>
    <asp:Literal ID="CourseNumber" runat="server"/>
    <br />
    <span class="fieldTitle">Course Description:</span>
    <asp:Literal ID="CourseDescription" runat="server"/>
</asp:Content>


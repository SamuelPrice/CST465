<%@ Page Title="Edit Your Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="EditProfile" Codebehind="EditProfile.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Edit Your Profile</h1>
    <asp:Label ID="NameLabel" runat="server" AssociatedControlID="Name">Name:</asp:Label>
    <asp:TextBox ID="Name" runat="server"/>
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Name" Display="Dynamic" ControlToValidate="Name" runat="server"/>
    <br />
    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Email:</asp:Label>
    <asp:TextBox ID="Email" runat="server"/>
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter an Email" Display="Dynamic" ControlToValidate="Email" runat="server"/>
    <br />
    <asp:label ID="UserTypeLabel" runat="server" AssociatedControlID="UserType">User Type:</asp:label>
    <asp:DropDownList ID="UserType" runat="server"> 
        <asp:ListItem Value="0">--Select</asp:ListItem>
        <asp:ListItem Value="1">Student</asp:ListItem>
        <asp:ListItem Value="2">Faculty/Staff</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Select a User Type" InitialValue="0" Display="Dynamic" ControlToValidate="UserType" runat="server" />
    <br />
    <asp:label ID="HobbyLabel" runat="server" AssociatedControlID="Hobby">Hobby:</asp:label>
    <asp:TextBox ID="Hobby" runat="server" />
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Hobby" Display="Dynamic" ControlToValidate="Hobby" runat="server"/>
    <br />
    <asp:label ID="BandLabel" runat="server" AssociatedControlID="Band">Band:</asp:label>
    <asp:TextBox ID="Band" runat="server" />
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Band" Display="Dynamic" ControlToValidate="Band" runat="server"/>
    <br />
    <asp:label ID="BiographyLabel" runat="server" AssociatedControlID="Biography">Biography:</asp:label>
    <asp:TextBox TextMode="MultiLine" ID="Biography" runat="server" />
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Biography" Display="Dynamic" ControlToValidate="Biography" runat="server"/>
    <br />
    <asp:Table runat="server">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell><asp:Label ID="CoursePrefixLabel" AssociatedControlID="CoursePrefix" runat="server">Course Prefix</asp:Label></asp:TableHeaderCell>
            <asp:TableHeaderCell><asp:Label ID="CourseNumberLabel" AssociatedControlID="CourseNumber" runat="server">Course Number</asp:Label></asp:TableHeaderCell>
            <asp:TableHeaderCell><asp:Label ID="CourseDescriptionLabel" AssociatedControlID="CourseDescription" runat="server">Course Description</asp:Label></asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell><asp:TextBox ID="CoursePrefix" runat="server"/></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="CourseNumber" runat="server"/></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="CourseDescription" runat="server"/></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Course Prefix" Display="Dynamic" ControlToValidate="CoursePrefix" runat="server"/>
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Course Number" Display="Dynamic" ControlToValidate="CourseNumber" runat="server"/>
    <asp:RequiredFieldValidator ValidationGroup="Validation" ErrorMessage="Please Enter a Course Description" Display="Dynamic" ControlToValidate="CourseDescription" runat="server"/>
    <br />
    <asp:Button ID="Save" runat="server" ValidationGroup="Validation" Text="Save" OnClick="Save_Click" />
</asp:Content>


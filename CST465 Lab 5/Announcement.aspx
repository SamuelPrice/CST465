<%@ Page Title="Announcement" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="CST465_Lab_5.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function toggle() { $('#FirstDiv').toggle(); $('#HiddenDiv').toggle(); }
    </script>
    <h1>Announcement</h1>
    <asp:Label runat="server" ID="NameLabel" />
    <br />
    <asp:Label runat="server" ID="TitleLabel" />
    <br />
    <asp:Label runat="server" ID="BodyLabel" />
    <h2>Comments</h2>
    <asp:UpdatePanel runat="server" ID="updatePanel">
        <ContentTemplate>
            <asp:Repeater runat="server" ID="Repeater">
                <ItemTemplate>
                    <%# Eval("Name") %>:
                    <%# Eval("Comment") %>
                    <br />
                    <%# Eval("DatePosted") %>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            </ContentTemplate>
        </asp:UpdatePanel>
    <br />
    <div id="FirstDiv" onclick="toggle()">
        Post a new Comment
    </div>
    <div id="HiddenDiv">
    <asp:LoginView runat="server" ID="LoginView">
        <AnonymousTemplate>
            <asp:Label runat="server" Text="You must login to post comments" />
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:Label runat="server" Text="Comment:" AssociatedControlID="CommentTextBox" />
            <asp:TextBox runat="server" TextMode="MultiLine" ID="CommentTextBox" />
            <asp:RequiredFieldValidator runat="server" ValidationGroup="Validation" ErrorMessage="Please Enter a Messasge" Display="Dynamic" ControlToValidate="CommentTextBox" />
            <br />
            <asp:Button runat="server" ID="PostButton" Text="Post" OnClick="PostButton_Click" OnClientClick="toggle()" ValidationGroup="Validation"/>
        </LoggedInTemplate>
    </asp:LoginView>
        </div>
</asp:Content>

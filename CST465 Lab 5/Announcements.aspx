<%@ Page Title="Announcements" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="CST465_Lab_5.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
            function toggle() { $('#FirstDiv').toggle(); $('#HiddenDiv').toggle();}
    </script>
    <h1>Announcements</h1>

    <asp:SqlDataSource ID="Data" ConnectionString="<%$ ConnectionStrings:DB %>" SelectCommandType ="Text" SelectCommand="SELECT AnnouncementId, Title, DatePosted FROM Announcements" runat="server" />

    <asp:UpdatePanel runat="server" ID="updatePanel">
        <ContentTemplate>
            <asp:Repeater runat="server" DataSourceID="Data">
                <ItemTemplate>
                    <asp:LinkButton Text='<%# Eval("Title") %>' runat="server" ID="TitleText" OnClick="TitleText_Click" CommandArgument='<%# Eval("AnnouncementId") %>' /> 
                    <br />
                    <%# Eval("DatePosted") %>
                    <br />
                    <br /> 
                </ItemTemplate>
            </asp:Repeater>    
            <asp:UpdateProgress runat="server" id="updateProgress"  DynamicLayout="true" AssociatedUpdatePanelID="updatePanel">
                <ProgressTemplate>
                    <asp:Image ID="imgWaitIcon" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/ajax-loader.gif" />
                    Processing...
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>    

    <br />
    <br />
    <h2>Make an announcement</h2>
    <div id="FirstDiv" onclick="toggle()">
        Add New Announcement
    </div>
    <div id="HiddenDiv">
        <asp:LoginView runat="server" ID="LoginView">
            <AnonymousTemplate>
                <asp:Label runat="server" Text="You must login to post announcements" />
            </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:Label runat="server" Text="Title:" AssociatedControlID="TitleTextBox" />
                <asp:TextBox runat="server" ID="TitleTextBox" />
                <asp:RequiredFieldValidator runat="server" ValidationGroup="Validation" ErrorMessage="Please Enter a Title" Display="Dynamic" ControlToValidate="TitleTextBox" />
                <br />
                <asp:Label runat="server" Text="Body:" AssociatedControlID="BodyTextBox" />
                <asp:TextBox runat="server" TextMode="MultiLine" ID="BodyTextBox" />
                <asp:RequiredFieldValidator runat="server" ValidationGroup="Validation" ErrorMessage="Please Enter a Messasge" Display="Dynamic" ControlToValidate="BodyTextBox" />
                <br />
                <asp:Button runat="server" ID="PostButton" Text="Post" OnClick="PostButton_Click" OnClientClick="toggle()" ValidationGroup="Validation"/>
            </LoggedInTemplate>
        </asp:LoginView>
    </div>
</asp:Content>
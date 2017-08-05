<%@ Page Title="Add new user" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="SignMeUp.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

    <br />
    Email:<br />
    <asp:TextBox ID="txtEmail" runat="server" MaxLength="60" TextMode="Email" ToolTip="In SignMeUp, your username is an Email address. "></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    Password:<br />
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required." ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    First Name: <br />
    <asp:TextBox ID="txtFirstName" runat="server" MaxLength="20"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    Last Name: <br />
    <asp:TextBox ID="txtLastName" runat="server" MaxLength="20"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field is required." ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator><br />
    Home Office: <br />
    <asp:DropDownList ID="dropdownHomeOffice" runat="server">
        <asp:ListItem>Please Select</asp:ListItem>
        <asp:ListItem>Accomack</asp:ListItem>
        <asp:ListItem>North Hampton </asp:ListItem>
        <asp:ListItem>Virginia Beach</asp:ListItem>
        <asp:ListItem>Portsmouth</asp:ListItem>
        <asp:ListItem>Norfolk</asp:ListItem>
    </asp:DropDownList>
    <!-- TO DO : GET THE INITIAL VALUE STYTAX RIGHT!! -->
    <asp:RequiredFieldValidator ID="HomeOfficeValidator" runat="server" ErrorMessage="Please select one." ControlToValidate="dropdownHomeOffice" InitValue="0" ></asp:RequiredFieldValidator>

    
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Register" OnClick="btnSubmit_Click" />

     <div  id="bot-box">
            <p class="happyBotBubble"> Please remember your password! If you forget it, you will have to create a new account and your old data will be lost! <a href="manageOvertime.aspx">here.</a></p>
            <img src="images/happyRobot.jpg" alt="Helper Bot" />
        </div>

</asp:Content>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SignMeUp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
    <div class="login-box">
        <table class="login-table">
        <tr> <td>Username</td>
        <td><asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox><br /><br /></td>
        </tr>

       <tr><td>Password</td>
         <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br /></td>
        </tr>
        </table>
       <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    
        

    </div>       
</div>
</asp:Content>

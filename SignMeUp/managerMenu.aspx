<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="managerMenu.aspx.cs" Inherits="SignMeUp.manageOvertime1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div  style="text-align:center; padding:20px;">
           <img src="images/happyRobot.jpg" alt="Helper Bot" />
        </div>

    <h2>
        <a href="addOvertime.aspx">Post New Overtime Opportunities </a>    
    </h2>

    <h2>
        <a href="manageOvertime.aspx">Delete/Cancel Overtime Opportunities </a>    
    </h2>

    <h2>
        <a href="hireWorkers.aspx"> Select Magistrates for Existing Opportunities and Send Notification Emails </a>
    </h2>


</asp:Content>

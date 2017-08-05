<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="addOvertime.aspx.cs" Inherits="SignMeUp.addOvertime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/happyBot.js"></script>

    <h2>Enter New Overtime Opportunity</h2>
    <p>Where is the overtime?</p>
    <asp:DropDownList ID="dropdownLocation" runat="server">
        <asp:ListItem>Please Select</asp:ListItem>
        <asp:ListItem>Accomack</asp:ListItem>
        <asp:ListItem>North Hampton </asp:ListItem>
        <asp:ListItem>Virginia Beach</asp:ListItem>
        <asp:ListItem>Portsmouth</asp:ListItem>
        <asp:ListItem>Norfolk</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="LocationValidator" runat="server" ErrorMessage="Please select one." ControlToValidate="dropdownLocation" InitialValue="0"></asp:RequiredFieldValidator>

    <p>What date is the overtime?</p>
    <asp:TextBox ID="OvertimeDate" runat="server" MaxLength="20" TextMode="Date" ToolTip="MM/DD/YYYY"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OvertimeDate" ErrorMessage="Please complete this field." ForeColor ="red"></asp:RequiredFieldValidator>
    
    <p>When does it start?</p>
    <asp:TextBox ID="HoursBegin" runat="server" TextMode="Time" MaxLength="20" OnTextChanged="HoursBegin_TextChanged" ToolTip="HH:MM AM"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="HoursBegin" ErrorMessage="Please complete this field." ForeColor="red"></asp:RequiredFieldValidator>

    <p>When does it end?</p>
    <asp:TextBox ID="HoursEnd" runat="server" TextMode="Time" MaxLength="20" ToolTip="HH:MM AM"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HoursEnd" ErrorMessage="Please complete this field." ForeColor="red"></asp:RequiredFieldValidator>
    
    <p>When is the last day that people have to express their interest? </p>
    <asp:TextBox ID="Deadline" runat="server" MaxLength="20" TextMode="DateTimeLocal"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Deadline" ErrorMessage="Please complete this field." ForeColor="red"></asp:RequiredFieldValidator>
    
    <br />

    <asp:Button ID="btnNewOvertime" runat="server" CssClass="btn btn-primary" Text="Add Overtime" OnClick="btnNewOvertime_Click" />

    <div id="bot-box">
        <button id="btnBot-close" class="btn btn-default text-right">x</button>
        <p>Adding overtime here adds it to the "Current Opportunities" list on this site.  If you would like me to send an email anouncing the opportunities to the region, just click <a href="send.aspx">here.</a></p>

        <img src="images/happyRobot.jpg" alt="Helper Bot" />

    </div>
    <br />
    <br />

</asp:Content>

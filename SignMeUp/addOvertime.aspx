<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addOvertime.aspx.cs" Inherits="SignMeUp.addOvertime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <script src="Scripts/happyBot.js"></script>
      
  <h2> Enter New Overtime Opportunity</h2>
    <p>Where is the overtime?</p>
    <asp:DropDownList ID="Location" runat="server">
        <asp:ListItem>Please Select</asp:ListItem>
        <asp:ListItem>Accomack</asp:ListItem>
        <asp:ListItem>North Hampton </asp:ListItem>
        <asp:ListItem>Virginia Beach</asp:ListItem>
        <asp:ListItem>Portsmouth</asp:ListItem>
        <asp:ListItem>Norfolk</asp:ListItem>
    </asp:DropDownList>

    <p> What date is the overtime?</p>
        <asp:TextBox ID="OvertimeDate" runat="server" MaxLength="20" TextMode="Date" ToolTip="MM/DD/YYYY" ></asp:TextBox>
    <p> When does it start?</p>
    <asp:TextBox ID="HoursBegin" runat="server" TextMode="Time" MaxLength="20" OnTextChanged="HoursBegin_TextChanged" ToolTip="HH:MM AM"></asp:TextBox>
    <p> When does it end?</p>
      <asp:TextBox ID="HoursEnd" runat="server" TextMode="Time" MaxLength="20" ToolTip="HH:MM AM"></asp:TextBox>
    <p> When is the last day that people have to express their interest? (The cut off time will always be 5:00PM on this date).</p>
    <asp:TextBox ID="Deadline" runat="server" MaxLength="20" TextMode="Date" ToolTip="MM/DD/YYYY" ></asp:TextBox><br /><br />
    <asp:Button ID="btnNewOvertime" runat="server" CssClass="btn btn-primary" Text="Add Overtime" OnClick="btnNewOvertime_Click"  />
    
    <div ID="bot-box">
        <button id="btnBot-close" class="btn btn-primary">x</button>
      <p> Adding overtime here adds it to the "Current Opportunities" list on this site.  If you would like me to send an email anouncing the opportunities to the region, just click <a href="send.aspx">here.</a></p>
      
                <img src="images/happyRobot.jpg" alt="Helper Bot" />

    </div>
    <br />
    <br />

</asp:Content>

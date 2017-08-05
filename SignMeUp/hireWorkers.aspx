<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="hireWorkers.aspx.cs" Inherits="SignMeUp.manageOvertime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

    &nbsp;<p>&nbsp;</p>
    <h2> Ready to Hire</h2>
    <div class="bot-box">
        &nbsp;<p>The following overtime opportunities have closed, but the volunteering employees have not yet been selected. I arranged them first by matching jurisdiction, then prioritized those who haven't worked in a while. Please select one to hire them. </p>
    </div>
        <div runat ="server" id="FillThisOvertime">
            <!-- The system will auto fill this area with overtime that has its end date expired. -->
        </div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        
     
    <div>
       

        </div>
    <p>
        <br />
    </p>
    <p>
        Who would you like to hire? 
    </p>
        <br />
    <br />

    <p> Once you are ready, press the button below and I'll send an email to the person selected to notify them they are working. I will also send a differrent email to those not selected informing them of that. </p>
    <asp:Button ID="Button1" runat="server" Text="Hire selected emloyee and send emails" /><br />
    
    <p>By the way, here are the emails I intend to send. To change this, please click the check box and I'll send the new language from now on.</p>
    
    <div id="emailTexts">
        <p>Email to the selected canidate:</p>
        <asp:TextBox ID="TextBox1" runat="server" Height="105px" ReadOnly="True" Rows="7" TextMode="MultiLine" Width="489px">You have been seleted to work the overtime on 3/3/2017 at 9:00AM until 3:00 PM. Please remember to log your hours when you are done.  </asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Click here to edit this text." />
        <br />
        <p>Email to the non-selected canidate:</p>
        <asp:TextBox ID="TextBox2" runat="server" Height="105px" ReadOnly="True" Rows="7" TextMode="MultiLine" Width="489px">We appreciate you volunteering to work outside your duty hours, but unfortunately, this overtime opportunity has been filled. We decide who to hire based on their home jurisdiction, the last date they were selected, and other factors.</asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Click here to edit this text." />
    </div>

    <div  id="bot-box">
            <p> Hello Ms. Smith!<br /><br />
            If you're here to manage overtime opportunities, please click <a href="manageOvertime.aspx">here.</a></p>
            <img src="images/happyRobot.jpg" alt="Helper Bot" />
        </div>

    </div>

</asp:Content>

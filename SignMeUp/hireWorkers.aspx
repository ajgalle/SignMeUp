<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hireWorkers.aspx.cs" Inherits="SignMeUp.manageOvertime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

    &nbsp;<p>&nbsp;</p>
    <h2> Ready to Hire</h2>
    <div class="bot-box">
        &nbsp;<p>The following overtime opportunities have closed, but the volunteering employees have not yet been selected. I arranged them first by matching jurisdiction, then prioritized those who haven't worked in a while. Please select one to hire them. </p>
    </div>
        <div id="FillThisOvertime">
            <!-- The system will auto fill this area with overtime that has its end date expired. -->
        </div>
    <div>
       

        <img src="images/vabeach.jpg" alt="va beach" />
    </div>
    <p>Location: Virginia Beach<br />
       Time: 10:00 PM - 2:00 AM</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="HomeOffice" HeaderText="HomeOffice" SortExpression="HomeOffice" />
                <asp:BoundField DataField="LastOT" HeaderText="LastOT" SortExpression="LastOT" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
    </p>
    <p>
        Who would you like to hire? 
    </p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"></asp:RadioButtonList>  
 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mymsdatabaseConnectionString %>" SelectCommand="SELECT [Name], [HomeOffice], [LastOT] FROM [availableWorkers]"></asp:SqlDataSource>
    <br />

    <p> Once you are ready, press the button below and I'll send an email to the person selected to notify them they are working. I will also send a differrent email to those not selected informing them of that. </p>
    <asp:Button ID="Button1" runat="server" Text="Hire selected emloyee and send emails" /><br />
    
    <p>By the way, here are the emails I intend to send. To change this, please click the check box and I'll send the new language from now on.</p>
    
    <div id="emailTexts">
        <p>Email to the selected canidate:</p>
        <asp:TextBox ID="TextBox1" runat="server" Height="105px" ReadOnly="True" Rows="7" TextMode="MultiLine" Width="489px">You have been seleted to work the overtime on 3/3/2017 at 9:00AM until 3:00 PM. Please remember to log your hours when you are done.  </asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Click here to edit this text." />
        <br />
        <p>Email to the non-selected canidate:</p>
        <asp:TextBox ID="TextBox2" runat="server" Height="105px" OnTextChanged="TextBox2_TextChanged" ReadOnly="True" Rows="7" TextMode="MultiLine" Width="489px">We appreciate you volunteering to work outside your duty hours, but unfortunately, this overtime opportunity has been filled. We decide who to hire based on their home jurisdiction, the last date they were selected, and other factors.</asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Click here to edit this text." />
    </div>
    <div  id="bot-box">
            <p> Hello Ms. Smith!<br /><br />
            If you're here to manage overtime opportunities, please click <a href="manageOvertime.aspx">here.</a></p>
            <img src="images/happyRobot.jpg" alt="Helper Bot" />
        </div>

    </div>

</asp:Content>

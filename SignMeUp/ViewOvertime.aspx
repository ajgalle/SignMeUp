<%@ Page Title="Current Overtime Opportunities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewOvertime.aspx.cs" Inherits="SignMeUp.ViewOvertime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid centered">
    <h2>Current Opportunities</h2>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="OvertimeDate" HeaderText="OvertimeDate" SortExpression="OvertimeDate" />
                <asp:BoundField DataField="HoursBegin" HeaderText="HoursBegin" SortExpression="HoursBegin" />
                <asp:BoundField DataField="HoursEnd" HeaderText="HoursEnd" SortExpression="HoursEnd" />
                <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SignMeUpLocalConnectionString %>" SelectCommand="SELECT [OvertimeDate], [HoursBegin], [HoursEnd], [Deadline], [Location] FROM [Overtime] ORDER BY [OvertimeID] DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>



       <div  id="bot-box">
            <p> Hello Chief Tsai!<br /><br />
            If you're here to manage overtime opportunities, please click <a href="manageOvertime.aspx">here.</a></p>
            <img src="images/happyRobot.jpg" alt="Helper Bot" />
        </div>

        <br />
        <asp:Button ID="requestOvertime" runat="server" CssClass="btn-primary" Text="Submit Requested Ovetime" />
        <br />
            <p>
                <asp:CheckBox ID="understood" runat="server" OnCheckedChanged="understood_CheckedChanged" />
                I understand <a href="faq.aspx">how overtime works.</a></p>
    </div>



</asp:Content>
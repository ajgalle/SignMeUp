<%@ Page Title="Current Overtime Opportunities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewOvertime.aspx.cs" Inherits="SignMeUp.ViewOvertime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid centered">
        <h2>Current Opportunities</h2>

        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" GridLines="None" ShowHeader="False">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>

                        <table class="table table-hover" style="border: 1px solid grey; margin:20px; padding:5px; background-color: white">
                                <tr>                            
                                <td style="width: 200px;">
                                    <asp:Image ID="imgOvertime" ImageURL='<%# Eval("PhotoPath") %>' runat="server" /><br />
                                     <div class="text-center" style="padding:10px;">    <asp:CheckBox runat="server" /> <p style="color:blue"> Check here to sign up! </p></div>
                                </td>
                                                            
                             <td style="width: 200px">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>Location:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblLocation" runat="server" Text='<%#Eval("Location") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Overtime Date:</b>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblOvertimeDate" runat="server" Text='<%#Eval("OvertimeDate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b> Start Time: </b>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStartTime" runat="server" Text='<%#Eval("HoursBegin") %>'></asp:Label>
                                            </td>
                                            <tr>
                                                <td>
                                                    <b>End Time: </b>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("HoursEnd") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        <tr>
                                            <td>
                                                <b>Deadline to apply: </b>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Deadline") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        </table>
                    </ItemTemplate>
 
                                      
                </asp:TemplateField>
            </Columns>
        </asp:GridView>



            <div id="bot-box">
                <p id="bot-bubble">
                Hello Management Team Member!<br />
                <br />
                If you're here to manage overtime opportunities, please click <a href="manageOvertime.aspx">here.</a>
            </p>
            <img src="images/happyRobot.jpg" alt="Helper Bot" />
        </div>

        <br />
        <asp:Button ID="requestOvertime" runat="server" CssClass="btn-primary" Text="Submit Requested Ovetime" />
        <br />
        <p>
            <asp:CheckBox ID="understood" runat="server" OnCheckedChanged="understood_CheckedChanged" />
            I understand <a href="faq.aspx">how overtime works.</a>
        </p>
    </div>



</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="view_request.aspx.cs" Inherits="view_request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#" class="scrollto">HBS</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

           <nav id="nav-menu-container">

        <ul class="nav-menu">
          <li><a href="admin_home.aspx">Home</a></li>
 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Student <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="view_request.aspx">View Request</a></li>
                <li><a href="student_details_view.aspx">Student Details</a></li>
                <li><a href="student_removal.aspx">Student Removal</a></li>

              </ul>
            </li>
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Billing<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="billing.aspx">Billing</a></li>
                <li><a href="dometry_billing.aspx">Dometry Billing</a></li>                              
                <li><a href="bill_details.aspx">Bill Details</a></li>
                <li><a href="dometry_billing_details.aspx">Dometry Bill Details</a></li>


              </ul>
            </li>
 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Fees<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="fees_addition.aspx">Fees Addition</a></li>
                <li><a href="fees_details_view.aspx">Fees Details</a></li>
                <li><a href="fees_reporting.aspx">Fees Reporting</a></li>

              </ul>
            </li>
 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dues<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="dues_details_addition.aspx">Dues Updation</a></li>
                <li><a href="dues_details.aspx">Dues Details</a></li>
                  <li><a href="dues_billing.aspx">Dues Billing</a></li>
                <li><a href="dues_reporting.aspx">Dues Reporting</a></li>

              </ul>
            </li>
          <li><a href="grivance.aspx">Grivances</a></li>
 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="change_admin_password.aspx">Change Password</a></li>
                <li><a href="index.aspx"><asp:LinkButton ID="LinkButton1" runat="server">Log out</asp:LinkButton></a></li>

              </ul>
            </li>
        
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
                        <br/>
                        <br/>
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;">Request List</h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:#bcce98; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                       <br/>
                  
       
                        <br/>
                        <br/>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" OnRowCommand="GridView1_RowCommand" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" CellSpacing="2" Height="128px" Width="902px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                            <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                                            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                                            <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
                                            <asp:BoundField DataField="room_type" HeaderText="Room Type" SortExpression="room_type" />
                                            <asp:TemplateField HeaderText="Click on">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="view" CommandArgument='<%# Eval("id") %>'>View</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                                    </asp:GridView>
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hbms_dbConnectionString %>" SelectCommand="SELECT * FROM [student_tab] WHERE ([test_confirm] = @test_confirm) ORDER BY [name]">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="pending" Name="test_confirm" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                        <br/>
                 
                        <br/>
                        <br/>
                                         
                        <br/>
                        <br/>
                 
                        <br/>
                        <br/>
                                            <br/>
                    </p>
                </div>
</asp:Content>


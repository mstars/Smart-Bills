<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="grivance.aspx.cs" Inherits="grivance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#" class="scrollto">HBS</a></h1>
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
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;">Grivances</h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:#bcce98; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                       <br/>
                        <br/>
                        <br/>
                        <br/>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="892px">
                            <Columns>
                                <asp:BoundField DataField="g_id" HeaderText="Grivance Id" InsertVisible="False" ReadOnly="True" SortExpression="g_id" />
                                <asp:BoundField DataField="complaint" HeaderText="Complaint" SortExpression="complaint" />
                                <asp:BoundField DataField="g_date" HeaderText="Date of submission" SortExpression="g_date" />
                                <asp:BoundField DataField="student_name" HeaderText="Name of student" SortExpression="student_name" />
                                <asp:TemplateField HeaderText="Click here">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="view" CommandArgument='<%# Eval("g_id") %>'>View</asp:LinkButton>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hbms_dbConnectionString %>" SelectCommand="SELECT * FROM [grivance_tab] WHERE ([verification] = @verification)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="pending" Name="verification" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br/>
                        <br/>
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


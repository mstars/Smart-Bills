<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="fees_addition.aspx.cs" Inherits="fees_addition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 175px;
            text-align: right;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 175px;
            height: 26px;
        }
        .auto-style5 {
            width: 161px;
            height: 26px;
        }
    </style>
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
          <li ><a href="admin_home.aspx">Home</a></li>
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
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;">Fees Addition</h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                            <p class="container"  style="margin-top: 10px;border: 1px #bcce98; color:#808080;  padding-left:5%; padding-right:5%; font-family:Century";">
      
               
                                <table class="w-100">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style1">Room type&nbsp;&nbsp; </td>
                                        <td class="auto-style2">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Single</asp:ListItem>
                                                <asp:ListItem>Double</asp:ListItem>
                                                <asp:ListItem>Dormetry</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3"></td>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style5"></td>
                                        <td class="auto-style3"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style1">Mess rate&nbsp;&nbsp; </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style1">Water and power&nbsp;&nbsp; </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style1">Room rent&nbsp;&nbsp; </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style1">Total&nbsp;&nbsp; </td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" CssClass="btn-light" runat="server" Text="Sum up" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" CssClass="btn-outline-secondary" OnClick="Button1_Click" Text="Update" />
                                        </td>
                                    </tr>
                                </table>


                        <br/>
                        <br/>
                        <br/>
                                            <br/>
                    </p>
                </div>
</asp:Content>


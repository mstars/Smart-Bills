<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="dues_billing.aspx.cs" Inherits="dues_billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style33 {
            text-align: left;
        width: 183px;
    }
        .auto-style34 {
        width: 183px;
    }
        .auto-style37 {
        width: 287px;
    }
    .auto-style38 {
        width: 470px;
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
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;">Billing</h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:.7%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style37">&nbsp;</td>
                                <td class="auto-style34">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style38"></td>
                                <td class="auto-style37">Due Number :
                                    <asp:Label ID="bill_no" runat="server" style="text-align: left"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    &nbsp;</td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" placeholder="Name/Id" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                                </td>
                                <td class="auto-style34">
                                    <asp:Button ID="Button1" runat="server" CssClass="btn-light" Text="Reset" OnClick="Button1_Click"  />
                                </td>
                                <td>
                                    <asp:Label ID="fNf" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td class="auto-style34">
                                    <asp:Label ID="name" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style38"></td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label5" runat="server" Text="No of months"></asp:Label>
                                </td>
                                <td class="auto-style34">
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>1 month</asp:ListItem>
                                        <asp:ListItem>3 months</asp:ListItem>
                                        <asp:ListItem>6 months</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style19"></td>
                            </tr>
                            <tr>
                                <td class="auto-style38"></td>
                                <td class="auto-style37">
                                    &nbsp;</td>
                                <td class="auto-style34">
                                    &nbsp;</td>
                                <td class="auto-style15">
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38"></td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label3" runat="server" Text="Total Amount"></asp:Label>
                                </td>
                                <td class="auto-style34">
                                    <asp:Label ID="rupee" runat="server" Text=" ₹"></asp:Label>
                                    <asp:Label ID="total_amount" runat="server"></asp:Label>
                                    <asp:Label ID="qwerty" runat="server" Text="/-"></asp:Label>
                                </td>
                                <td class="auto-style27">
                                    <asp:Button ID="Button2" runat="server" CssClass="btn-light" Text="Pay Due" OnClick="Button2_Click"  />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style37">&nbsp;</td>
                                <td class="auto-style34">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
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


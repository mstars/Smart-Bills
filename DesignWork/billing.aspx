<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="billing.aspx.cs" Inherits="billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 168px;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style4 {
            width: 168px;
            height: 44px;
        }
        .auto-style5 {
            width: 138px;
            height: 44px;
        }
        .auto-style7 {
            height: 44px;
        }
        .auto-style12 {
            width: 168px;
            height: 54px;
        }
        .auto-style13 {
            width: 138px;
            height: 54px;
        }
        .auto-style15 {
            height: 54px;
        }
        .auto-style16 {
            width: 168px;
            height: 41px;
        }
        .auto-style17 {
            width: 138px;
            height: 41px;
        }
        .auto-style19 {
            height: 41px;
        }
        .auto-style20 {
            width: 168px;
            height: 40px;
        }
        .auto-style21 {
            width: 138px;
            height: 40px;
        }
        .auto-style23 {
            height: 40px;
        }
        .auto-style24 {
            width: 168px;
            height: 56px;
        }
        .auto-style25 {
            width: 138px;
            height: 56px;
        }
        .auto-style27 {
            height: 56px;
        }
        .auto-style28 {
            width: 168px;
            height: 58px;
        }
        .auto-style29 {
            width: 138px;
            height: 58px;
        }
        .auto-style31 {
            height: 58px;
        }
    .auto-style32 {
        width: 143px;
    }
    .auto-style33 {
        width: 143px;
        height: 44px;
            text-align: left;
        }
    .auto-style34 {
        width: 143px;
        height: 41px;
    }
    .auto-style35 {
        width: 143px;
        height: 54px;
    }
    .auto-style36 {
        width: 143px;
        height: 56px;
    }
    .auto-style37 {
        width: 143px;
        height: 40px;
    }
    .auto-style38 {
        width: 143px;
        height: 58px;
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
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style32">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bill Number</td>
                                <td class="auto-style33">
                                    <asp:Label ID="bill_no" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" placeholder="Name/Id" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                </td>
                                <td class="auto-style32">
                                    <asp:Button ID="Button1" runat="server" CssClass="btn-light" Text="Reset" OnClick="Button1_Click" />
                                </td>
                                <td>
                                    <asp:Label ID="fNf" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style32">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16"></td>
                                <td class="auto-style17">
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td class="auto-style34">
                                    <asp:Label ID="name" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style19"></td>
                            </tr>
                            <tr>
                                <td class="auto-style12"></td>
                                <td class="auto-style13">
                                    <asp:Label ID="Label5" runat="server" Text="No of months"></asp:Label>
                                </td>
                                <td class="auto-style35">
                                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>1 month</asp:ListItem>
                                        <asp:ListItem>3 months</asp:ListItem>
                                        <asp:ListItem>6 months</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style15">
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24"></td>
                                <td class="auto-style25">
                                    <asp:Label ID="Label4" runat="server" Text="Deduction"></asp:Label>
                                </td>
                                <td class="auto-style36">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="94px" AutoPostBack="True">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style27"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label2" runat="server" Text="Deduction"></asp:Label>
                                </td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="TextBox2" runat="server">0</asp:TextBox>
                                </td>
                                <td class="auto-style23">
                                    <asp:Button ID="Button3" runat="server" CssClass="btn-light" Text="Deduct" OnClick="Button3_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28"></td>
                                <td class="auto-style29">
                                    <asp:Label ID="Label3" runat="server" Text="Total Amount"></asp:Label>
                                </td>
                                <td class="auto-style38">
                                    <asp:Label ID="rupee" runat="server" Text=" ₹"></asp:Label>
                                    <asp:Label ID="total_amount" runat="server"></asp:Label>
                                    <asp:Label ID="qwerty" runat="server" Text="/-"></asp:Label>
                                </td>
                                <td class="auto-style31">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style32">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" CssClass="btn-light" Text="Pay Bill" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                        <br/>
                        <br/>
      <br/>
                    </p>
                </div>
</asp:Content>


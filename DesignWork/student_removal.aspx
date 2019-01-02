<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="student_removal.aspx.cs" Inherits="student_removal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 164px;
        }
        .auto-style3 {
            height: 26px;
            width: 164px;
        }
        .auto-style4 {
            width: 164px;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style7 {
            width: 164px;
            height: 31px;
            text-align: right;
        }
        .auto-style9 {
            height: 31px;
            text-align: center;
        }
        .auto-style10 {
            height: 44px;
        }
        .auto-style11 {
            text-align: right;
            height: 44px;
        }
        .auto-style12 {
            text-align: center;
            height: 44px;
        }
        .auto-style14 {
            text-align: right;
            height: 43px;
        }
        .auto-style15 {
            height: 43px;
        }
        .auto-style16 {
            height: 43px;
            text-align: center;
        }
        .auto-style19 {
            text-align: center;
            height: 53px;
        }
        .auto-style20 {
            text-align: right;
            height: 53px;
        }
        .auto-style21 {
            height: 39px;
        }
        .auto-style22 {
            text-align: right;
            height: 39px;
        }
        .auto-style23 {
            height: 39px;
            text-align: center;
        }
        .auto-style24 {
            height: 40px;
        }
        .auto-style25 {
            text-align: right;
            height: 40px;
        }
        .auto-style26 {
            height: 40px;
            text-align: center;
        }
        .auto-style27 {
            height: 44px;
            width: 187px;
        }
        .auto-style28 {
            height: 43px;
            width: 187px;
        }
        .auto-style29 {
            text-align: center;
            height: 53px;
            width: 187px;
        }
        .auto-style30 {
            height: 39px;
            width: 187px;
        }
        .auto-style31 {
            height: 40px;
            width: 187px;
        }
        .auto-style32 {
            height: 39px;
            text-align: center;
            width: 187px;
        }
        .auto-style33 {
            width: 165px;
        }
        .auto-style34 {
            height: 26px;
            width: 165px;
        }
        .auto-style35 {
            width: 167px;
        }
        .auto-style36 {
            height: 26px;
            width: 187px;
        }
        .auto-style37 {
            width: 187px;
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
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;">Student Removal</h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style4">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="161px" OnTextChanged="TextBox1_TextChanged1" CssClass="border-secondary" placeholder="Name/Id" AutoPostBack="True"></asp:TextBox>
                                </td>
                                <td class="auto-style5">
                                    <asp:Button ID="Button3" cssClass="btn-light" runat="server" Height="27px" Text="Reset" Width="75px" OnClick="Button3_Click" />
                                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"></td>
                                <td>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style37">
                                    <asp:Label ID="fNf" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style34"></td>
                                <td class="auto-style35"></td>
                                <td class="auto-style33">
                                    <asp:Button ID="Button2" CssClass="btn-light" runat="server" Text="Remove" OnClick="Button2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37">&nbsp;</td>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style7">
                                    &nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="   Name :"></asp:Label>
                                    </td>
                                <td class="auto-style9">
                                    <asp:Label ID="name" runat="server" Text="Name_Label"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" CssClass="img-thumbnail" runat="server" Height="98px" Width="158px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label2" runat="server" Text="Course :"></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    <asp:Label ID="course" runat="server" Text="Course_Label"></asp:Label>
                                </td>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style28"></td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label3" runat="server" Text="Date of Birth :"></asp:Label>
                                </td>
                                <td class="auto-style16">
                                    <asp:Label ID="dob" runat="server" Text="DOB_Label"></asp:Label>
                                </td>
                                <td class="auto-style15"></td>
                            </tr>
                            <tr>
                                <td class="auto-style29"></td>
                                <td class="auto-style20">&nbsp;<asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
                                </td>
                                <td class="auto-style19">
                                    <asp:Label ID="address" runat="server" Text="Address_Label"></asp:Label>
                                </td>
                                <td class="auto-style19"></td>
                            </tr>
                            <tr>
                                <td class="auto-style30"></td>
                                <td class="auto-style22">&nbsp;<asp:Label ID="Label5" runat="server" Text="Phone :"></asp:Label>
                                    &nbsp; </td>
                                <td class="auto-style23">
                                    <asp:Label ID="phone" runat="server" Text="Phone_Label"></asp:Label>
                                </td>
                                <td class="auto-style21"></td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style25">
                                    <asp:Label ID="Label6" runat="server" Text="Email ID :"></asp:Label>
                                </td>
                                <td class="auto-style26">
                                    <asp:Label ID="email" runat="server" Text="Email_Label"></asp:Label>
                                </td>
                                <td class="auto-style24"></td>
                            </tr>
                            <tr>
                                <td class="auto-style32"></td>
                                <td class="auto-style22">
                                    <asp:Label ID="Label7" runat="server" Text="Type of Room :"></asp:Label>
                                </td>
                                <td class="auto-style23">
                                    <asp:Label ID="room_type" runat="server" Text="Room_type_Label"></asp:Label>
                                </td>
                                <td class="auto-style23"></td>
                            </tr>
                            <tr>
                                <td class="auto-style37">&nbsp;</td>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"></td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
              
                   
                          
                        </table>
                 


                                            <br/>
                    </p>
                </div>
</asp:Content>


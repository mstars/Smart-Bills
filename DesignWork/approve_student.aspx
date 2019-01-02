<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="approve_student.aspx.cs" Inherits="approve_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
            text-align: right;
        }
        .auto-style2 {
            width: 188px;
            text-align: center;
        }
        .auto-style3 {
            height: 34px;
        }
        .auto-style4 {
            width: 198px;
            text-align: right;
            height: 34px;
        }
        .auto-style5 {
            width: 188px;
            text-align: center;
            height: 34px;
        }
        .auto-style9 {
            height: 79px;
        }
        .auto-style10 {
            width: 198px;
            text-align: right;
            height: 79px;
        }
        .auto-style11 {
            width: 188px;
            text-align: center;
            height: 79px;
        }
        .auto-style18 {
            height: 69px;
        }
        .auto-style19 {
            width: 198px;
            text-align: right;
            height: 69px;
        }
        .auto-style20 {
            width: 188px;
            text-align: center;
            height: 69px;
        }
        .auto-style21 {
            height: 93px;
        }
        .auto-style22 {
            width: 198px;
            text-align: right;
            height: 93px;
        }
        .auto-style23 {
            width: 188px;
            text-align: center;
            height: 93px;
        }
        .auto-style24 {
            height: 92px;
        }
        .auto-style25 {
            width: 198px;
            text-align: right;
            height: 92px;
        }
        .auto-style26 {
            width: 188px;
            text-align: center;
            height: 92px;
        }
        .auto-style27 {
            height: 80px;
        }
        .auto-style28 {
            width: 198px;
            text-align: right;
            height: 80px;
        }
        .auto-style29 {
            width: 188px;
            text-align: center;
            height: 80px;
        }
        .auto-style30 {
            height: 74px;
        }
        .auto-style31 {
            width: 198px;
            text-align: right;
            height: 74px;
        }
        .auto-style32 {
            width: 188px;
            text-align: center;
            height: 74px;
        }
        .auto-style33 {
            height: 26px;
        }
        .auto-style34 {
            width: 198px;
            text-align: right;
            height: 26px;
        }
        .auto-style35 {
            width: 188px;
            text-align: center;
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
          <li class="menu-active"><a href="admin_home.aspx">Home</a></li>
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
                        <br/>
                        <br/>
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;"><a href="view_request.aspx">Request List </a>> Approve Student </h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style33"></td>
                                <td class="auto-style34"></td>
                                <td class="auto-style35"></td>
                                <td class="auto-style33">
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3"></td>
                                <td class="auto-style4">Name&nbsp;:&nbsp; </td>
                                <td class="auto-style5">
                                    <asp:Label ID="name" runat="server" Text="Name_Label"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" CssClass="img-thumbnail" runat="server" Height="98px" Width="158px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style22">Course&nbsp;:&nbsp; </td>
                                <td class="auto-style23">
                                    <asp:Label ID="course" runat="server" Text="Course_Label"></asp:Label>
                                </td>
                                <td class="auto-style21"></td>
                            </tr>
                            <tr>
                                <td class="auto-style24"></td>
                                <td class="auto-style25">Date of birth&nbsp;:&nbsp; </td>
                                <td class="auto-style26">
                                    <asp:Label ID="dob" runat="server" Text="DOB_Label"></asp:Label>
                                </td>
                                <td class="auto-style24"></td>
                            </tr>
                            <tr>
                                <td class="auto-style9"></td>
                                <td class="auto-style10">Address :&nbsp;&nbsp; </td>
                                <td class="auto-style11">
                                    <asp:Label ID="address" runat="server" Text="Address_Label"></asp:Label>
                                </td>
                                <td class="auto-style9"></td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
                                <td class="auto-style28">Phone :&nbsp;&nbsp; </td>
                                <td class="auto-style29">
                                    <asp:Label ID="phone" runat="server" Text="Phone_Label"></asp:Label>
                                </td>
                                <td class="auto-style27"></td>
                            </tr>
                            <tr>
                                <td class="auto-style30"></td>
                                <td class="auto-style31">Email&nbsp;:&nbsp; </td>
                                <td class="auto-style32">
                                    <asp:Label ID="email" runat="server" Text="Email_Label"></asp:Label>
                                </td>
                                <td class="auto-style30"></td>
                            </tr>
                            <tr>
                                <td class="auto-style18"></td>
                                <td class="auto-style19">Type of Room&nbsp;:&nbsp; </td>
                                <td class="auto-style20">
                                    <asp:Label ID="room_type" runat="server" Text="Room_type_Label"></asp:Label>
                                </td>
                                <td class="auto-style18"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn-outline-secondary" Text="Confirm" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" CssClass="btn-outline-secondary" Text="Reject" OnClick="Button2_Click" />
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


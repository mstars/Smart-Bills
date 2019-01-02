<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="student_details_hview.aspx.cs" Inherits="student_details_hview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            text-align: right;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            text-align: center;
        }
        .auto-style4 {
            height: 47px;
        }
        .auto-style5 {
            text-align: right;
            height: 47px;
        }
        .auto-style6 {
            height: 47px;
            text-align: center;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            text-align: right;
            height: 50px;
        }
        .auto-style12 {
            height: 50px;
            text-align: center;
        }
        .auto-style13 {
            height: 77px;
            text-align: center;
        }
        .auto-style14 {
            text-align: right;
            height: 77px;
        }
        .auto-style15 {
            height: 41px;
        }
        .auto-style16 {
            text-align: right;
            height: 41px;
        }
        .auto-style17 {
            height: 41px;
            text-align: center;
        }
        .auto-style19 {
            height: 49px;
        }
        .auto-style20 {
            text-align: right;
            height: 49px;
        }
        .auto-style21 {
            height: 49px;
            text-align: center;
        }
        .auto-style22 {
            height: 62px;
        }
        .auto-style23 {
            text-align: right;
            height: 62px;
        }
        .auto-style24 {
            height: 62px;
            text-align: center;
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
      </nav><!-- #nav-menu-container --> </div>
                        <br/>
                        <br/>
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;"><a href="student_details_view.aspx">Complete List </a>> Student Details </h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
 
               
                        <table class="w-100">
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1">
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
                                <td class="text-right">Name&nbsp;:&nbsp; </td>
                                <td class="text-center">
                                    <asp:Label ID="name" runat="server" Text="Name_Label"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" CssClass="img-thumbnail" runat="server" Height="98px" Width="158px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">Course&nbsp;:&nbsp; </td>
                                <td class="auto-style6">
                                    <asp:Label ID="course" runat="server" Text="Course_Label"></asp:Label>
                                </td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                                <td class="auto-style11">Date of birth&nbsp;:&nbsp; </td>
                                <td class="auto-style12">
                                    <asp:Label ID="dob" runat="server" Text="DOB_Label"></asp:Label>
                                </td>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style13"></td>
                                <td class="auto-style14">Address&nbsp;&nbsp; :&nbsp; </td>
                                <td class="auto-style13">
                                    <asp:Label ID="address" runat="server" Text="Address_Label"></asp:Label>
                                </td>
                                <td class="auto-style13"></td>
                            </tr>
                            <tr>
                                <td class="auto-style15"></td>
                                <td class="auto-style16">Phone :&nbsp; </td>
                                <td class="auto-style17">
                                    <asp:Label ID="phone" runat="server" Text="Phone_Label"></asp:Label>
                                </td>
                                <td class="auto-style15"></td>
                            </tr>
                            <tr>
                                <td class="auto-style19"></td>
                                <td class="auto-style20">Email&nbsp;:&nbsp; </td>
                                <td class="auto-style21">
                                    <asp:Label ID="email" runat="server" Text="Email_Label"></asp:Label>
                                </td>
                                <td class="auto-style19"></td>
                            </tr>
                            <tr>
                                <td class="auto-style22"></td>
                                <td class="auto-style23">Type of Room&nbsp;:&nbsp; </td>
                                <td class="auto-style24">
                                    <asp:Label ID="room_type" runat="server" Text="Room_type_Label"></asp:Label>
                                </td>
                                <td class="auto-style22"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>

                                            <br/>
                    </p>
                </div>
</asp:Content>


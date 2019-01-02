<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="dues_details_hview.aspx.cs" Inherits="dues_details_hview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 140px;
        }
        .auto-style2 {
            width: 165px;
        }
        .auto-style3 {
            width: 170px;
            text-align: right;
        }
        .auto-style4 {
            width: 185px;
        }
        .auto-style5 {
            width: 194px;
            text-align: right;
        }
        .auto-style6 {
            width: 204px;
        }
        .auto-style7 {
            width: 221px;
        }
        .auto-style8 {
            width: 241px;
            text-align: right;
        }
        .auto-style9 {
            width: 258px;
        }
        .auto-style10 {
            width: 267px;
        }
        .auto-style11 {
            width: 288px;
            text-align: right;
        }
        .auto-style12 {
            width: 303px;
        }
        .auto-style13 {
            width: 308px;
        }
        .auto-style14 {
            width: 310px;
            text-align: right;
        }
        .auto-style15 {
            width: 311px;
        }
        .auto-style16 {
            width: 312px;
        }
        .auto-style17 {
            width: 313px;
            text-align: right;
        }
        .auto-style18 {
            width: 314px;
        }
        .auto-style19 {
            width: 315px;
        }
        .auto-style20 {
        width: 345px;
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
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;"><a href="dues_details.aspx">Complete List </a>> Dues Details </h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:#000000; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                       <br/>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style33">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp; Bill Number&nbsp; :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="bill_no" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                    &nbsp;
                                    :</td>
                                <td class="auto-style9">
                                    <asp:Label ID="name" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label5" runat="server" Text="Date of pay"></asp:Label>
                                    &nbsp;
                                    :</td>
                                <td class="auto-style12">
                                    <asp:Label ID="date_pay" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style14">
                                    &nbsp; </td>
                                <td class="auto-style15">
                                    &nbsp;</td>
                                <td class="auto-style13"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style1">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style17">
                                    <asp:Label ID="Label3" runat="server" Text="Total Amount"></asp:Label>
                                    &nbsp;
                                    :</td>
                                <td class="auto-style18">
                                    <asp:Label ID="rupee" runat="server" Text=" ₹"></asp:Label>
                                    <asp:Label ID="total_amount" runat="server"></asp:Label>
                                    <asp:Label ID="qwerty" runat="server" Text="/-"></asp:Label>
                                </td>
                                <td class="auto-style16"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style21">
                                    &nbsp;</td>
                                <td class="auto-style32">
                                    &nbsp;</td>
                                <td class="auto-style23">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="text-right">
                                    &nbsp;</td>
                                <td class="auto-style32">
                                    &nbsp;</td>
                                <td class="auto-style31">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style33">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br/>
         
      
                   
                        
                       
                    </p>
                </div>
</asp:Content>


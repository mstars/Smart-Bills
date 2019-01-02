<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="bill_details_hview.aspx.cs" Inherits="bill_details_hview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    .auto-style2 {
            height: 26px;
            text-align: center;
            width: 219px;
        }
    .auto-style3 {
        height: 26px;
        text-align: right;
            width: 219px;
        }
    .auto-style4 {
        height: 40px;
    }
    .auto-style5 {
        height: 40px;
        text-align: right;
            width: 219px;
        }
    .auto-style6 {
        height: 40px;
        text-align: left;
            width: 256px;
        }
    .auto-style7 {
        height: 35px;
    }
    .auto-style8 {
        height: 35px;
        text-align: right;
            width: 219px;
        }
    .auto-style9 {
        height: 35px;
        text-align: left;
            width: 256px;
        }
    .auto-style10 {
        height: 43px;
    }
    .auto-style11 {
        height: 43px;
        text-align: right;
            width: 219px;
        }
    .auto-style12 {
        height: 43px;
        text-align: left;
            width: 256px;
        }
    .auto-style13 {
        height: 39px;
    }
    .auto-style14 {
        height: 39px;
        text-align: right;
            width: 219px;
        }
    .auto-style15 {
        height: 39px;
        text-align: left;
            width: 256px;
        }
    .auto-style16 {
        height: 38px;
    }
    .auto-style17 {
        height: 38px;
        text-align: right;
            width: 219px;
        }
    .auto-style18 {
        height: 38px;
        text-align: left;
            width: 256px;
        }
        .auto-style19 {
            height: 26px;
            text-align: left;
            width: 256px;
        }
        .auto-style20 {
            text-align: right;
            width: 232px;
        }
        .auto-style21 {
            text-align: right;
            width: 219px;
        }
        .auto-style22 {
            height: 26px;
            width: 232px;
        }
        .auto-style23 {
            height: 40px;
            width: 411px;
        }
        .auto-style24 {
            height: 35px;
            width: 232px;
        }
        .auto-style25 {
            height: 43px;
            width: 232px;
        }
        .auto-style26 {
            height: 39px;
            width: 232px;
        }
        .auto-style27 {
            height: 38px;
            width: 232px;
        }
        .auto-style28 {
            width: 232px;
        }
        .auto-style29 {
            height: 40px;
            width: 232px;
        }
        .auto-style31 {
            text-align: center;
            width: 112px;
        }
        .auto-style32 {
            text-align: center;
            width: 256px;
        }
        .auto-style33 {
            width: 256px;
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
         <li><a href="index.aspx"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="index.aspx">Log out</asp:LinkButton></a></li>

              </ul>
            </li>
        
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
                        <br/>
                        <br/>
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;"><a href="bill_details.aspx">Complete List </a>> Billing Details </h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:2%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>

                        <br/>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style22">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style33">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29"></td>
                                <td class="auto-style5">Bill Number&nbsp; : </td>
                                <td class="auto-style6">
                                    <asp:Label ID="bill_no" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style24"></td>
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
                                <td class="auto-style25"></td>
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
                                <td class="auto-style26"></td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label4" runat="server" Text="Deduction"></asp:Label>
                                    &nbsp;
                                    :</td>
                                <td class="auto-style15">
                                    <asp:Label ID="deduction" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style13"></td>
                            </tr>
                            <tr>
                                <td class="auto-style22"></td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style1">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
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
                                <td class="auto-style28"></td>
                                <td class="auto-style21">
                                    &nbsp;</td>
                                <td class="auto-style32">
                                    &nbsp;</td>
                                <td class="auto-style31">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style22">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style33">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br/>
                        <br/>

                
                    </p>
                </div>
</asp:Content>


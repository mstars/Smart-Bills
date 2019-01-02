<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="grivance_hview.aspx.cs" Inherits="grivance_hview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 592px;
        }
        .auto-style3 {
            height: 26px;
            width: 592px;
        }
        .auto-style4 {
            text-align: right;
            width: 562px;
        }
        .auto-style5 {
            text-align: right;
            width: 592px;
        }
        .auto-style6 {
            width: 426px;
        }
        .auto-style7 {
            height: 26px;
            width: 85px;
        }
        .auto-style8 {
            height: 26px;
            width: 426px;
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
   <li><a href="index.aspx"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="index.aspx">Log out</asp:LinkButton></a></li>

              </ul>
            </li>
        
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
                        <br/>
                        <br/>
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;"><a href="grivance.aspx">Complete List </a>> Grivance Details </h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
               
                        <br/>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;Complaint Id&nbsp; :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="bill_no" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                    &nbsp;
                                    :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="name" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label5" runat="server" Text="Date of Submission"></asp:Label>
                                    &nbsp;
                                    :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="date_pay" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label6" runat="server" Text="Complaint "></asp:Label>
                                    &nbsp; :</td>
                                <td class="auto-style6">
                                    <asp:Label ID="complaint" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style13"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    </td>
                                <td class="auto-style8">
                                    </td>
                                <td class="auto-style1">
                                    <asp:Button ID="Button1" CssClass="btn-light" runat="server" Text="Verify" OnClick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    &nbsp; </td>
                                <td class="auto-style8">
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style2">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style23">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style31">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        
                    </p>
                </div>
</asp:Content>


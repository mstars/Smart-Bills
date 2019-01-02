<%@ Page Title="" Language="C#" MasterPageFile="~/admin_home.master" AutoEventWireup="true" CodeFile="dometry_billing_details_hview.aspx.cs" Inherits="dometry_billing_details_hview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 414px;
            text-align: right;
        }
        .auto-style2 {
            width: 414px;
            text-align: right;
            height: 39px;
        }
        .auto-style3 {
            height: 39px;
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
    </div>
                        <br/>
                        <br/>
                           <h4 style="text-align:left;font-family:'Palatino Linotype';  color:#808080; padding-left:6%;"><a href="dometry_billing_details.aspx">Complete List </a>> Dometry Bill Details </h4>
          </header><!-- #header -->

          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:.5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
                       <br/>
    
   

                    <table class="w-100" style="color:#000000; height: 417px; margin-right: 57px;">
                        <tr>
                           
                            <td class="auto-style1" style="padding-right:1%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bill No :</td>
                            <td class="auto-style42">
                                <asp:Label ID="bill_id" runat="server"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                           
                            <td class="auto-style1" style="padding-right:1%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp; :</td>
                            <td class="auto-style42">
                                <asp:Label ID="name" runat="server"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style1"  style="padding-right:1%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp; :</td>
                            <td class="auto-style44">
                                <asp:Label ID="address" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="padding-right:1%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No of days&nbsp; :</td>
                            <td class="auto-style46">
                                <asp:Label ID="nod" runat="server"></asp:Label>
                            </td>
                        </tr>
                               <tr>
                            <td class="auto-style1" style="padding-right:1%;">Phone Number&nbsp; :</td>
                            <td class="auto-style40">
                                <asp:Label ID="phone" runat="server"></asp:Label>
                                   </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="padding-right:1%;">&nbsp;</td>
                            <td class="auto-style3">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="padding-right:1%;">Total Amount&nbsp; :</td>
                            <td class="auto-style38">
                                    <asp:Label ID="rupee" runat="server" Text=" ₹"></asp:Label>
                                    <asp:Label ID="total_amount" runat="server"></asp:Label>
                                    <asp:Label ID="qwerty" runat="server" Text="/-"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="padding-right:1%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style36">
                                    &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1"style="padding-right:1%;">&nbsp;</td>
                            <td class="auto-style34">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                    </table>
            
     
      
                    </p>
                </div>
</asp:Content>


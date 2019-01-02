<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="student_registration.aspx.cs" Inherits="student_registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 327px;
            text-align: right;
        }
        .auto-style33 {
            height: 47px;
            width: 327px;
            text-align: right;
        }
        .auto-style34 {
            height: 47px;
            text-align: left;
        }
        .auto-style35 {
            height: 45px;
            width: 327px;
            text-align: right;
        }
        .auto-style36 {
            height: 45px;
            text-align: left;
        }
        .auto-style37 {
            height: 48px;
            width: 327px;
            text-align: right;
        }
        .auto-style38 {
            height: 48px;
            text-align: left;
        }
        .auto-style39 {
            height: 52px;
            width: 327px;
            text-align: right;
        }
        .auto-style40 {
            height: 52px;
            text-align: left;
        }
        .auto-style43 {
            height: 4px;
            width: 327px;
            text-align: right;
        }
        .auto-style44 {
            height: 4px;
            text-align: left;
        }
        .auto-style45 {
            height: 56px;
            width: 327px;
            text-align: right;
        }
        .auto-style46 {
            height: 56px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#" class="scrollto">HBS</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="index.aspx">Home</a></li>
          <li><a href="about.aspx">About Us</a></li>
          <li><a href="general_rules.aspx">General Rules</a></li>
          <li><a href="fees_structre.aspx">Fees Structre</a></li>
          <li class="menu-active"><a href="student_registration.aspx">Register</a></li>
          <li><a href="login.aspx">Login</a></li>
        
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
          </header><!-- #header -->

      <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:#bcce98; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century";">
                    <h1 style="text-align:center;color:#bcce98;font-family:'Lucida Sans Unicode';  color:#808080;">Student Registration<asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </h1>
                    <table class="w-100" style="color:#000000; height: 417px; margin-right: 57px;">
                        <tr>
                           
                            <td class="auto-style21" style="padding-right:1%;">Name&nbsp;: </td>
                            <td class="text-left">
                                <br />
                                <asp:TextBox ID="name" runat="server" OnTextChanged="name_TextChanged"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style43"  style="padding-right:1%;">Course :&nbsp; </td>
                            <td class="auto-style44">
                                <br />
                                <asp:DropDownList ID="Course_dropbox" runat="server" Width="92px" OnSelectedIndexChanged="Course_dropbox_SelectedIndexChanged">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>MCA</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                    <asp:ListItem>MSc</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Course_dropbox" ErrorMessage="Select a course" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style45" style="padding-right:1%;">Date of Birth :&nbsp; </td>
                            <td class="auto-style46">
                                <br />
                                <asp:TextBox ID="dob" runat="server" OnTextChanged="dob_TextChanged"></asp:TextBox>
                                <cc1:CalendarExtender ID="dob_CalendarExtender" runat="server" Enabled="True" TargetControlID="dob">
                                </cc1:CalendarExtender>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dob" ErrorMessage="Chose your date of birth" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                               <tr>
                            <td class="auto-style39" style="padding-right:1%;">Address :&nbsp; </td>
                            <td class="auto-style40">
                                <br />
                                <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Width="183px"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="dob">
                                </cc1:CalendarExtender>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="Please enter your full address" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style45" style="padding-right:1%;">Phone Number :&nbsp; </td>
                            <td class="auto-style46">
                                <br />
                                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Please enter your phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rvDigits" runat="server" ControlToValidate="phone"
                                ErrorMessage="Enter numbers only till 10 digit" ValidationGroup="valGroup" ForeColor="Red"
                                ValidationExpression="\d+" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style37" style="padding-right:1%;">Email :&nbsp; </td>
                            <td class="auto-style38">
                                <br />
                                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Please eneter Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style35" style="padding-right:1%;">Type of Room :&nbsp; </td>
                            <td class="auto-style36">
                                <br />
                                <asp:DropDownList ID="room_dropbox" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Single</asp:ListItem>
                                    <asp:ListItem>Double</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="room_dropbox" ErrorMessage="Chose a room type" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style33"style="padding-right:1%;">Upload Photo :&nbsp; </td>
                            <td class="auto-style34">
                                <br />
                                <asp:FileUpload ID="profile_upload" runat="server" />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="profile_upload" ErrorMessage="Chose a file to upload" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="error_label" runat="server" Text="error_label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">&nbsp;</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" CssClass="btn-dark" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                  

                </div>
</asp:Content>


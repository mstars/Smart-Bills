<%@ Page Title="" Language="C#" MasterPageFile="~/student_home.master" AutoEventWireup="true" CodeFile="portfolio.aspx.cs" Inherits="portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 261px;
        }
        .auto-style2 {
            text-align: right;
            width: 261px;
        }
        .auto-style3 {
            width: 277px;
        }
        .auto-style4 {
            text-align: right;
            width: 277px;
            height: 64px;
        }
        .auto-style6 {
            text-align: center;
            width: 337px;
            height: 64px;
        }
        .auto-style7 {
            text-align: right;
            width: 431px;
        }
        .auto-style8 {
            height: 39px;
        }
        .auto-style9 {
            text-align: right;
            width: 431px;
            height: 39px;
        }
        .auto-style10 {
            height: 39px;
            text-align: center;
        }
        .auto-style11 {
            text-align: right;
            width: 431px;
            height: 64px;
        }
        .auto-style12 {
            height: 48px;
        }
        .auto-style14 {
            height: 48px;
            text-align: center;
        }
        .auto-style15 {
            text-align: right;
            width: 431px;
            height: 42px;
        }
        .auto-style16 {
            text-align: right;
            width: 431px;
            height: 48px;
        }
        .auto-style20 {
            text-align: center;
            height: 42px;
        }
        .auto-style21 {
            text-align: right;
            width: 431px;
            height: 55px;
        }
        .auto-style22 {
            height: 55px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
             
 
               
                        <table class="w-100">
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style7"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1">
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3"></td>
                                <td class="auto-style7">Name&nbsp;:&nbsp; </td>
                                <td class="text-center">
                                    <asp:Label ID="name" runat="server" Text="Name_Label"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" CssClass="img-thumbnail" runat="server" Height="98px" Width="158px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style11">Course&nbsp;:&nbsp; </td>
                                <td class="auto-style6">
                                    <asp:Label ID="course" runat="server" Text="Course_Label"></asp:Label>
                                </td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style12"></td>
                                <td class="auto-style16">Date of birth&nbsp;:&nbsp; </td>
                                <td class="auto-style14">
                                    <asp:Label ID="dob" runat="server" Text="DOB_Label"></asp:Label>
                                </td>
                                <td class="auto-style12"></td>
                            </tr>
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style21">Address&nbsp;&nbsp; :&nbsp; </td>
                                <td class="auto-style22">
                                    <asp:Label ID="address" runat="server" Text="Address_Label"></asp:Label>
                                </td>
                                <td class="auto-style21"></td>
                            </tr>
                            <tr>
                                <td class="auto-style15"></td>
                                <td class="auto-style15">Phone :&nbsp; </td>
                                <td class="auto-style20">
                                    <asp:Label ID="phone" runat="server" Text="Phone_Label"></asp:Label>
                                </td>
                                <td class="auto-style15"></td>
                            </tr>
                            <tr>
                                <td class="auto-style14"></td>
                                <td class="auto-style16">Email&nbsp;:&nbsp; </td>
                                <td class="auto-style14">
                                    <asp:Label ID="email" runat="server" Text="Email_Label"></asp:Label>
                                </td>
                                <td class="auto-style14"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8"></td>
                                <td class="auto-style9">Type of Room&nbsp;:&nbsp; </td>
                                <td class="auto-style10">
                                    <asp:Label ID="room_type" runat="server" Text="Room_type_Label"></asp:Label>
                                </td>
                                <td class="auto-style8"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>

                   
                        <br/>
                          <br/>
                        
                                            <br/>
                    </p>
                </div>

</asp:Content>


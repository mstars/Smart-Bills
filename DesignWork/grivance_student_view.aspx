<%@ Page Title="" Language="C#" MasterPageFile="~/student_home.master" AutoEventWireup="true" CodeFile="grivance_student_view.aspx.cs" Inherits="grivance_student_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 461px;
            text-align: right;
        }
        .auto-style2 {
        width: 533px;
    }
        .auto-style3 {
            width: 461px;
            text-align: right;
            height: 118px;
        }
        .auto-style4 {
            width: 533px;
            height: 118px;
        text-align: left;
    }
        .auto-style5 {
            height: 118px;
        }
        .auto-style6 {
            width: 461px;
            text-align: right;
            height: 67px;
        }
        .auto-style7 {
            width: 533px;
            height: 67px;
        text-align: left;
    }
        .auto-style8 {
            height: 67px;
        }
        .auto-style9 {
            width: 461px;
            text-align: right;
            height: 63px;
        }
        .auto-style10 {
            width: 533px;
            height: 63px;
        text-align: left;
    }
        .auto-style11 {
            height: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:black; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
      
                       <br/>
                        <br/>

                        <br/>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style9">Grievance Id&nbsp; :&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style10">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="g_id" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style11"></td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Subject&nbsp; :&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style7">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="145px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the subject" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Content&nbsp; :&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the complaint" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button1" runat="server" CssClass="btn-light" Text="Submit" OnClick="Button1_Click" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
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
                    </p>
                </div>
</asp:Content>


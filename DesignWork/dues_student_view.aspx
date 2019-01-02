<%@ Page Title="" Language="C#" MasterPageFile="~/student_home.master" AutoEventWireup="true" CodeFile="dues_student_view.aspx.cs" Inherits="dues_student_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
          <div class="container" style="margin-top: 10px;border: 1px solid #bcce98; color:#bcce98; padding-top:5%; padding-left:5%; padding-right:5%; font-family:Century"; height:"100%";">
 
                    <p>
      
                       <br/>
                        <marquee style="font-family:'Century Schoolbook';" onMouseOver="this.stop();" onMouseOut="this.start();">
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                        
                        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                        </marquee>
                        <br/>
                        <br/>
                        <br/>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="due_id" DataSourceID="SqlDataSource1" Width="817px">
                            <Columns>
                                <asp:BoundField DataField="due_id" HeaderText="Due Id" InsertVisible="False" ReadOnly="True" SortExpression="due_id" />
                                <asp:BoundField DataField="date" HeaderText="Payed On" SortExpression="date" />
                                <asp:BoundField DataField="amount" HeaderText="Total Amount" SortExpression="amount" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hbms_dbConnectionString %>" SelectCommand="SELECT * FROM [due_billing_tab] WHERE ([name] = @name)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label1" Name="name" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
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


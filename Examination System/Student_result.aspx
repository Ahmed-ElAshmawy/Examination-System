<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster - Copy.master" AutoEventWireup="true" CodeFile="Student_result.aspx.cs" Inherits="Student_result" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp; Student Name&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="St_name" DataValueField="St_id" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="170px" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Students" TypeName="Student"></asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Student_Result" TypeName="Student">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="St_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
                            </asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>



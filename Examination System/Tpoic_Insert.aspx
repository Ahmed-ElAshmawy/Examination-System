﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Tpoic_Insert.aspx.cs" Inherits="Tpoic_Insert" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Crs_name" DataValueField="Crs_id">
</asp:DropDownList>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Courses" TypeName="Course"></asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Top_id" DataSourceID="ObjectDataSource2" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:TemplateField HeaderText="Top_id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Top_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Top_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Top_name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Top_name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Enter Name</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Top_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Crs_id">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Crs_name" DataValueField="Crs_id" SelectedValue='<%# Bind("Crs_id") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Crs_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
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
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" InsertMethod="insert_Topic" SelectMethod="topic_crs" TypeName="Topic">
                <InsertParameters>
                    <asp:Parameter Name="Top_id" Type="Int32" />
                    <asp:Parameter Name="Top_name" Type="String" />
                    <asp:Parameter Name="Crs_id" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="crs_id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
    </asp:ObjectDataSource>
    <table style="width:100%;">
        <tr>
            <td style="width: 90px">Topic Id</td>
            <td style="width: 284px">
                <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="V"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">Enter Id</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="1000" MinimumValue="1" Type="Integer" ValidationGroup="V">Integer</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 90px">Topic Name</td>
            <td style="width: 284px">
                <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="V"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">Enter Name</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 90px">&nbsp;</td>
            <td style="width: 284px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Insert" ValidationGroup="V" />
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <p>
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
</p>
                            </asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</asp:Content>



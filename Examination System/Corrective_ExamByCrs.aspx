﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster - Copy.master" AutoEventWireup="true" CodeFile="Corrective_ExamByCrs.aspx.cs" Inherits="Corrective_ExamByCrs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="395px">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="Crs_name" DataValueField="Crs_id" AppendDataBoundItems="True" Height="22px">
                <asp:ListItem Value="0">Choose Course</asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectAll_Courses" TypeName="Course"></asp:ObjectDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" AllowPaging="True" PageSize="5">
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
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Corrective_Exam_ByCrs" TypeName="Course">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Crs_id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
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



<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Exam_Criteria.aspx.cs" Inherits="Exam_Criteria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td style="width: 109px">Course Name</td>
        <td style="width: 276px">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Crs_name" DataValueField="Crs_id" ValidationGroup="V">
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Courses" TypeName="Course"></asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 109px">MCQ No</td>
        <td style="width: 276px">
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="V"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="10" MinimumValue="0" Type="Integer" ValidationGroup="V">Integer</asp:RangeValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 109px">T/F No</td>
        <td style="width: 276px; margin-left: 40px">
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="V"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" MaximumValue="10" MinimumValue="0" Type="Integer" ValidationGroup="V">Integer</asp:RangeValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 109px">Exam Id</td>
        <td style="width: 276px">
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="V"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RangeValidator" MaximumValue="20" MinimumValue="0" Type="Integer" ValidationGroup="V">Integer</asp:RangeValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 109px">Duration</td>
        <td style="width: 276px">
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="V"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" MaximumValue="15" MinimumValue="1" Type="Integer" ValidationGroup="V">Integer</asp:RangeValidator>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate" ValidationGroup="V" />
        </td>
    </tr>
    <tr>
        <td style="width: 109px">&nbsp;</td>
        <td style="width: 276px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource2">
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="EXAM_show" TypeName="EXAM" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox4" Name="Ex_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
</asp:Content>


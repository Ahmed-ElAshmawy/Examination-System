<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="665px" style="margin-bottom: 222px">
        <table style="width:100%; height: 104px;">
            <tr>
                <td style="width: 123px; height: 28px">User Name</td>
                <td style="height: 28px; width: 197px">
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="V1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ValidationGroup="V1">*</asp:RequiredFieldValidator>
                </td>
                <td style="height: 28px"></td>
            </tr>
            <tr>
                <td style="width: 123px">Pass</td>
                <td style="width: 197px">
                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="V1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ValidationGroup="V1">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 123px">Role</td>
                <td style="width: 197px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" ValidationGroup="V1">
                        <asp:ListItem>Instructor</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="V1" />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>


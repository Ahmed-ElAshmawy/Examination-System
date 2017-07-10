<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_Student.aspx.cs" Inherits="Register_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" Height="216px" Width="526px">
            <table style="width:100%;">
                <tr>
                    <td style="width: 103px">Student ID</td>
                    <td style="width: 180px">
                        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="V2"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" MaximumValue="1000" MinimumValue="0" Type="Integer" ValidationGroup="V2">Integer</asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 103px">Student Name</td>
                    <td style="width: 180px">
                        <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="V2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 103px">Age</td>
                    <td style="width: 180px">
                        <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="V2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" MaximumValue="40" MinimumValue="20" Type="Integer" ValidationGroup="V2">Integer</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 103px">Dept ID</td>
                    <td style="width: 180px">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Dept_name" DataValueField="Dept_id" ValidationGroup="V2">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Departments" TypeName="Department"></asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 103px">&nbsp;</td>
                    <td style="width: 180px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" ValidationGroup="V2" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_instructor.aspx.cs" Inherits="Register_instructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel3" runat="server" Height="152px">
            <table style="width:100%;">
                <tr>
                    <td style="width: 137px">Instructor ID</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="V2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="RangeValidator" MaximumValue="1000" MinimumValue="1" Type="Integer" ValidationGroup="V2">Integer</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 137px">Instructor Name</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="V2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 137px">Salary</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" ValidationGroup="V2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" ValidationGroup="V2">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="RangeValidator" MaximumValue="50000" MinimumValue="1" Type="Integer" ValidationGroup="V2">Integer</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 137px">Dept ID</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Dept_name" DataValueField="Dept_id" ValidationGroup="V2">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Departments" TypeName="Department"></asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 137px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insert" ValidationGroup="V2" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Anonymous.master" AutoEventWireup="true" CodeBehind="ContactUs_Anonimous.aspx.cs" Inherits="ExamOnline.ContactUs_Anonimous" %>

<script runat="server">

    protected void Button_Contact_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <table style="width: 100%; height: 253px;">
        <tr>
            <td style="width: 97px">Name:</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_name" runat="server" Height="26px" Width="228px" ValidationGroup="b"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_name" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">E-Mail:</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_Email" runat="server" Height="26px" Width="228px" ValidationGroup="b"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_Email" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_Email" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationGroup="b">UnAvailable Mail</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">Subject:</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_Subject" runat="server" Height="26px" Width="228px" ValidationGroup="b"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_Subject" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">Message:</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_message" runat="server" Height="74px" TextMode="MultiLine" Width="229px" ValidationGroup="b"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_message" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">&nbsp;</td>
            <td style="width: 274px">
                           <asp:Button ID="Button_Contact" runat="server" CssClass="login" Text="Send" style="left: 3px; top: 0px; position: relative; z-index: 1;" ValidationGroup="b" OnClick="Button_Contact_Click"  />
                            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

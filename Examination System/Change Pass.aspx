<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Change Pass.aspx.cs" Inherits="Change_Pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Links" Runat="Server">
    <p>
        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Change Pass.aspx">Change Password</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Course.aspx">Course</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Instructors Per Course.aspx">Instructors per course</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Topic Per Course.aspx">Display Topics per Course</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Topic_Update.aspx">Topic Update</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Topic_Delete.aspx">Topic Delete</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Tpoic_Insert.aspx">Topic Insert</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Select All Instructor.aspx">Select all instructors</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/departments_Managers.aspx">Select all department and it’s manager </asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Course Average Grade.aspx">Display course with average grade</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Instructors Salary.aspx">Salary of All Instructors</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Display all Quetions data.aspx">Course All Questions Data</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Exam_Criteria.aspx">Generate Exam</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Report1.aspx">Report 1</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Report2.aspx">Report 2</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Report3.aspx">Report 3</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Report4.aspx">Report 4</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Report5.aspx">Report 5</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Report6t.aspx">Report 6</asp:HyperLink>
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <table style="width: 100%; height: 253px;">
        <tr>
            <td style="width: 97px">UserName:</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_userName" runat="server" Height="26px" Width="228px" ValidationGroup="b"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_userName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">Old Password</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_oldPass" runat="server" Height="26px" Width="228px" ValidationGroup="b"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_oldPass" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">New Password</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_NewPass" runat="server" Height="26px" Width="228px" ValidationGroup="b" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_NewPass" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_NewPass" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="^[\s\S]{7,}$" ValidationGroup="b">mut be more than 7 characters or numbers</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">RePaassword</td>
            <td style="width: 274px">
                <asp:TextBox ID="TextBox_Repassword" runat="server" Height="26px" Width="228px" ValidationGroup="b" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_Repassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="b" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_NewPass" ControlToValidate="TextBox_Repassword" Display="Dynamic" ErrorMessage="notmatch" ForeColor="Red" ValidationGroup="b">notmatch</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 97px">&nbsp;</td>
            <td style="width: 274px">
                           <asp:Button ID="Button_Change" runat="server" CssClass="login" Text="Chnage" style="left: 3px; top: 0px; position: relative; z-index: 1;" ValidationGroup="b" OnClick="Button_Change_Click"/>
                            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 97px">&nbsp;</td>
            <td style="width: 274px">
                           <asp:Label ID="Label_Result" runat="server" ForeColor="Red" Text="your acount are not valid ,enter user name and password again " Visible="False"></asp:Label>
                            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


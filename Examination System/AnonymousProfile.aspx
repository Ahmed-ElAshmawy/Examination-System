<%@ Page Title="" Language="C#" MasterPageFile="~/Anonymous.master" AutoEventWireup="true" CodeFile="AnonymousProfile.aspx.cs" Inherits="AnonymousProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 185px;">
                <tr>
                    <td style="width: 66px">UserName:</td>
                    <td style="width: 156px">
                        <asp:TextBox ID="TextBox_UserName" runat="server" BorderColor="#106FB8" Width="96px" BorderStyle="Solid" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_UserName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ToolTip="plz enter Your UserName" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 66px">Password</td>
                    <td style="width: 156px">
                        <asp:TextBox ID="TextBox_Password" runat="server" BorderColor="#106FB8" Width="96px" BorderStyle="Solid" TextMode="Password" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Password" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ToolTip="plz enter Your PassWord" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button_Login" runat="server" CssClass="login" Text="LogIn" ValidationGroup="a" OnClick="Button_Login_Click"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" Font-Underline="True" NavigateUrl="~/Change Pass.aspx" Text="Change Password Password"></asp:HyperLink>
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <h2>Welcome to Education</h2>
      <p> Free CSS Templates are provided by TemplateMo.com for everyone. You may download, edit and apply this template for your websites. Credit goes to <a href="#">Public Domain Pictures</a> for photos used in this template. Nam ut libero at lacus feugiat tincidunt vitae sed ipsum.</p>
      <div class="cleaner_h20"></div>
      <div class="image_fl"> <img src="images/images01.jpg" alt=""> </div>
      <div class="section_w250 float_r">
        <ul class="list_01">
          <li>Praesent condimentum magna ut </li>
          <li>Nunc luctus eros eu enim gravida ut </li>
          <li>Phasellus nec ante eget felis </li>
          <li>Morbi pellentesque tellus adipiscing </li>
          <li>Nunc accumsan sagittis sem, ut </li>
          <li>Nunc luctus eros eu enim gravida ut </li>
          <li>Phasellus nec ante eget felis </li>
        </ul>
      </div>
      <div class="cleaner"></div>
</asp:Content>


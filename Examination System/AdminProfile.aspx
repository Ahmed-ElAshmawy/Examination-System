<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminProfile.aspx.cs" Inherits="AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Button ID="Button_Login" runat="server" CssClass="login" Text="Logout" ValidationGroup="a" OnClick="Button_Login_Click" style="left: -3px; top: -1px; width: 127px; height: 37px"  />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
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

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder4">
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
                            </asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>















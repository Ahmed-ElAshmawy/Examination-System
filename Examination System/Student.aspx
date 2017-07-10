
<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="571px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" DataKeyNames="St_id" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="St_id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("St_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("St_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="St_name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("St_name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Enter Name</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("St_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="St_age">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("St_age") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="40" MinimumValue="20" Type="Integer">20-40</asp:RangeValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("St_age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dept_id">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Dept_name" DataValueField="Dept_id" SelectedValue='<%# Bind("Dept_id") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Dept_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Name">
                        <EditItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("St_U_N") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("St_U_N") %>'></asp:Label>
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
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Student" InsertMethod="insert_Student" SelectMethod="SelectAll_Students" TypeName="Student" UpdateMethod="Update_Student">
                <DeleteParameters>
                    <asp:Parameter Name="St_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="St_id" Type="Int32" />
                    <asp:Parameter Name="St_name" Type="String" />
                    <asp:Parameter Name="St_age" Type="Int32" />
                    <asp:Parameter Name="Dept_id" Type="Int32" />
                    <asp:Parameter Name="St_U_N" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="St_id" Type="Int32" />
                    <asp:Parameter Name="St_name" Type="String" />
                    <asp:Parameter Name="St_age" Type="Int32" />
                    <asp:Parameter Name="Dept_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Student Id</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox_sid" runat="server" ValidationGroup="V"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_sid" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">Enter Id</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox_sid" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="1000" MinimumValue="1" Type="Integer" ValidationGroup="V">1-1000</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Student Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox_stname" runat="server" ValidationGroup="V"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_stname" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">Enter Name</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Student Age</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox_stage" runat="server" ValidationGroup="V"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox_stage" ErrorMessage="RangeValidator" MaximumValue="40" MinimumValue="20" Type="Integer" ValidationGroup="V">20-40</asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_stage" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Dept Id</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Dept_name" DataValueField="Dept_id" ValidationGroup="V">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectAll_Departments" TypeName="Department"></asp:ObjectDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Student User Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="V"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="Button_ins" runat="server" OnClick="Button_ins_Click" Text="Insert" ValidationGroup="V" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
                                <p>
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </p>
                            </asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</asp:Content>


<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder_Links">
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
          </asp:Content>




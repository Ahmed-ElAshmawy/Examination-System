<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Topic.aspx.cs" Inherits="Topic" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="386px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Top_id" DataSourceID="ObjectDataSource1" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="Top_id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Top_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Top_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Top_name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Top_name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Enter Name</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Top_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Crs_id">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Crs_name" DataValueField="Crs_id" SelectedValue='<%# Bind("Crs_id") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Crs_id") %>'></asp:Label>
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
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Topic" InsertMethod="insert_Topic" SelectMethod="SelectAll_Topics" TypeName="Topic" UpdateMethod="Update_Topic">
                <DeleteParameters>
                    <asp:Parameter Name="Top_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Top_id" Type="Int32" />
                    <asp:Parameter Name="Top_name" Type="String" />
                    <asp:Parameter Name="Crs_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Top_id" Type="Int32" />
                    <asp:Parameter Name="Top_name" Type="String" />
                    <asp:Parameter Name="Crs_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Topic Id</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="V"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">Enter Id</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="1000" MinimumValue="1" Type="Integer" ValidationGroup="V">Integer</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Topic Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="V"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ValidationGroup="V">Enter Name</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Course</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Crs_name" DataValueField="Crs_id" ValidationGroup="V">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="SelectAll_Courses" TypeName="Course"></asp:ObjectDataSource>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" ValidationGroup="V" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
                                <p>
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
                            </asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
</asp:Content>



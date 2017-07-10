<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Display all Quetions data.aspx.cs" Inherits="Display_all_Quetions_data" %>

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
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Crs_name" DataValueField="Crs_id" AutoPostBack="True">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Courses" TypeName="Course"></asp:ObjectDataSource>
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
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="All_Qus_Data" TypeName="Questions">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="Crs_id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
</asp:Content>


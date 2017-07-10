<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Report1.aspx.cs" Inherits="Report1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
 
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
    
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Crs_name" DataValueField="Crs_id">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll_Courses" TypeName="Course"></asp:ObjectDataSource>
    <asp:Button ID="Button1" runat="server" Text="View report" Width="115px" OnClick="Button1_Click1" />
    <br />
    <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ToolPanelView="None" />
    <br />
   
</asp:Content>


<%@ Page Title="Admin_Home" Language="C#" MasterPageFile="~/lms_master.Master" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="LMS.Admin_Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="sidebar">
        <a  target="iframe_lms" href="Admin Menu Pages/Add_Publication.aspx">Add Publication</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Add_Book.aspx">Add Book</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Book_Report.aspx">Book Report</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Add_Branch.aspx">Add BRANCH</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Add_Student.aspx">Add STUDENT</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Student_Report.aspx">Student Report</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Issue_Book.aspx">Issue Book</a>
        <a  target="iframe_lms" href="Admin Menu Pages/IssueBook_Report.aspx">Issue Report</a>
        <a target="iframe_lms" href="Admin Menu Pages/Return_Book.aspx">Return Book</a>
        <a  target="iframe_lms" href="Admin Menu Pages/Penalty.aspx">Penalty</a>
        <a href="Login.aspx">Logout</a>
    </div>

    <iframe name="iframe_lms" width="900" height="530" runat="server" style="border:none;"></iframe>

</asp:Content>

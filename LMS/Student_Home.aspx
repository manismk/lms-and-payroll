<%@ Page Title="Student_Home" Language="C#" MasterPageFile="~/lms_master.Master" AutoEventWireup="true" CodeBehind="Student_Home.aspx.cs" Inherits="LMS.Student_Home" %>

<asp:content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="sidebar">
        <a href="#about" ><asp:Label ID="welcomelbl" runat="server" ForeColor="Red" /></a>
        <a  target="iframe_lms" href="Student Menu Pages/My_Account.aspx">My Account</a>
        
        <a  target="iframe_lms" href="Student Menu Pages/Penalty_Report.aspx">Penalty Report</a>
        <a   target="iframe_lms" href="Student Menu Pages/Book Reports.aspx">Book Report</a>
        <a href="Login.aspx">Logout</a>
    </div>

    <iframe name="iframe_lms" width="900" height="530" runat="server" style="border:none;"></iframe>
    <asp:Label ID="lblsid" Text="" runat="server" />
</asp:content>

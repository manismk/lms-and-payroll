<%@ Page Title="Login" Language="C#" masterPageFile="~/lms_master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LMS.Login" %>

<asp:content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
           
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="Images/loginimg.jpg" alt="Card image cap">
                <div class="card-body">
                    <div class="content">
                        <asp:Label ID="unamelbl" runat="server" Text="UserName:" /><span style="color:red">*</span><br>
                        <asp:TextBox ID="unametxt" runat="server" CssClass="txtbr" BorderColor="#999999" Height="24px" Width="155px" /><br>
                        <asp:RequiredFieldValidator ID="unameval" cssClass="red" controlToValidate="unametxt" runat="server" ErrorMessage="Please enter the user name!"/>

                        <asp:Label ID="passlbl" runat="server" Text="Password:" /><span style="color:red">*</span><br>
                        <asp:TextBox ID="passtxt" TextMode="Password" runat="server" CssClass="txtbr" BorderColor="#999999" Height="24px" Width="155px" EnableViewState="False" /><br>
                        <asp:RequiredFieldValidator ID="passval" cssClass="red" controlToValidate="passtxt" runat="server" ErrorMessage="Please enter the password!"/><br>

                        <asp:Label ID="urolelbl" runat="server" Text="User Role:" /><span style="color:red">*</span><br>
                        <asp:DropDownList ID="UserRole" runat="server" Width="150px">
                            <asp:ListItem>Select a role</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                        </asp:DropDownList><br>
                        <%--<asp:RequiredFieldValidator ID="uroleval" cssClass="red" controlToValidate="UserRole" runat="server" ErrorMessage="Please select the user role!"/>
                        <br />--%><br>
                        
                        <br>

                        <asp:Button ID="Loginbtn" runat="server" Text="Login" class="btn btn-success btnlft" OnClick="Loginbtn_Click" />
                    </div>
                </div>
            </div>
        </div>

</asp:content>
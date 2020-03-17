<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Book.aspx.cs" Inherits="LMS.Admin_Menu_Pages.Add_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="amu_ss.css" />
    <link href="https://fonts.googleapis.com/css?family=Aclonica&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <h1>Add Book</h1>
            </div>
            <div class="cent">
                <asp:Label ID="bnamelbl" Text="Book Name:" runat="server" />
                &nbsp;
                <asp:TextBox ID="txtbname" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="bnameval" ControlToValidate="txtbname" ErrorMessage="Please enter book name!" runat="server" ForeColor="red"/>
                <br />
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="detaillbl" runat="server" Text="Detail:" />
                &nbsp;
                <asp:TextBox ID="dettxt" TextMode="MultiLine" runat="server" Height="29px" Width="190px" />
                <asp:RequiredFieldValidator ID="detval" ControlToValidate="dettxt" ErrorMessage="Please enter detail!" runat="server" ForeColor="red"/>
                <br />
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="authlbl" runat="server" Text="Author:" />
                &nbsp;
                <asp:TextBox ID="authtxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="authval" ControlToValidate="authtxt" ErrorMessage="Please enter author name!" runat="server" ForeColor="red"/>
                <br />
                <br>
                <asp:Label ID="authlbl0" runat="server" Text="Publication:" />
                &nbsp;
                <asp:DropDownList ID="ddlpub" runat="server" Height="33px">

                </asp:DropDownList>
                <br />
                <br>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:RadioButton ID="itcbx" runat="server" Text="IT" GroupName="dept"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:RadioButton ID="csccbx" runat="server" Text="CSE" GroupName="dept" />
                </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:RadioButton ID="eeecbx" runat="server" Text="EEE" GroupName="dept"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:RadioButton ID="ececbx" runat="server" Text="ECE" GroupName="dept"/>
                </p><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="prlbl" runat="server" Text="Price:" />
                &nbsp;
                <asp:TextBox ID="prtxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="prval" ControlToValidate="prtxt" ErrorMessage="Please enter price!" runat="server" ForeColor="red"/>
                <br />
                <br>
                &nbsp;
                <asp:Label ID="qlbl" runat="server" Text="Quantity:" />
                &nbsp;
                <asp:TextBox ID="qtxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="qval" ControlToValidate="qtxt" ErrorMessage="Please enter quantity!" runat="server" ForeColor="red"/>
                <br />
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="qlbl0" runat="server" Text="Image:" />
                &nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" Font-Size="Medium" Height="27px" Width="260px" EnableTheming="True" />
                <br />
&nbsp;<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="ists" runat="server"></asp:Label>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="abookbtn"  Text="Add" runat="server" class="btn btn-success" OnClick="abookbtn_Click" />
            </div>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Student.aspx.cs" Inherits="LMS.Admin_Menu_Pages.Add_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="amu_ss.css" />
    <link href="https://fonts.googleapis.com/css?family=Aclonica&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <h1>Add Student</h1>
            </div>
            <div class="cent">
                <asp:Label ID="snamelbl" Text="Student Name" runat="server" />
                :&nbsp;&nbsp;
                <asp:TextBox ID="snametxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="snameval" ControlToValidate="snametxt" ErrorMessage="Please enter student name!" runat="server" ForeColor="red"/>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="bn" Text="Branch" runat="server" />
                :&nbsp; <asp:DropDownList ID="branch" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="gd" Text="Gender" runat="server" />
                : <asp:RadioButton ID="male" Text="Male" runat="server" />
                <asp:RadioButton ID="female" Text="Female" runat="server" />

                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="gd0" Text="DOB:" runat="server" />
                &nbsp;
                <asp:TextBox ID="dobtxt" runat="server" CssClass="brmv" /> (Format dd/mm/yyyy)
                <asp:RequiredFieldValidator ID="dobval" ControlToValidate="dobtxt" ErrorMessage="Please enter date of birth!" runat="server" ForeColor="red" Display="Dynamic"/>
                <asp:RegularExpressionValidator ID="dval" ControlToValidate="dobtxt" ForeColor="Red" ValidationExpression="^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$" runat="server" ErrorMessage="Invalid Date!!" Display="Dynamic" /> 
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="mblbl" Text="Mobile" runat="server" />
                :&nbsp; <asp:TextBox ID="mbltxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="mblval" ControlToValidate="mbltxt" ErrorMessage="Please enter mobile number!" runat="server" ForeColor="red"/>
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="address" Text="Address" runat="server" />
                :&nbsp; <asp:TextBox ID="addrtxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="addrval" ControlToValidate="addrtxt" ErrorMessage="Please enter address!" runat="server" ForeColor="red"/>
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="citylbl" Text="City" runat="server" />
                :&nbsp; <asp:TextBox ID="citytxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="cityval" ControlToValidate="citytxt" ErrorMessage="Please enter city!" runat="server" ForeColor="red"/>
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="pinlbl" Text="Pincode" runat="server" />
                :&nbsp; <asp:TextBox ID="pintxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="pinval" ControlToValidate="pintxt" ErrorMessage="Please enter pin code!" runat="server" ForeColor="red"/>


                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Photo"></asp:Label>
                :&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" Width="210px" />
                <br />
                <br />



                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                <asp:Label ID="email" Text="Email" runat="server" />
                :&nbsp; <asp:TextBox ID="emtxt" runat="server" CssClass="brmv" />
                <asp:RequiredFieldValidator ID="emailval" ControlToValidate="emtxt" ErrorMessage="Please enter email!" runat="server" ForeColor="red"/>
                <br />
                <br />

                &nbsp;

                <asp:Label ID="passlbl" Text="Password" runat="server" />
                :&nbsp; <asp:TextBox ID="passtxt" runat="server" CssClass="brmv" TextMode="Password" ViewStateMode="Disabled" />
                <asp:RequiredFieldValidator ID="passval" ControlToValidate="passtxt" ErrorMessage="Please enter password!" runat="server" ForeColor="red"/>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="addstudbtn" runat="server" Text="Add" class="btn btn-success" OnClick="addstudbtn_Click" />
                <br />

            </div>
        </div>
    </form>
</body>
</html>

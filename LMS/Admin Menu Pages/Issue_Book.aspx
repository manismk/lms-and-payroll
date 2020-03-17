<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issue_Book.aspx.cs" Inherits="LMS.Admin_Menu_Pages.Issue_Book" %>

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
    <div class="header">
        <h1>Issue Book</h1>
    </div>
    <form id="form1" runat="server">
        <div>

            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="spublbl" runat="server" Text="Select Publication:"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddlpubc" AutoPostBack="true" runat="server" Height="25px" OnTextChanged="ddlpubc_TextChanged">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="sbooklbl" runat="server" Text="Select Book:"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddlbaname" AutoPostBack="true" runat="server">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="selectbtn" runat="server" Text="Select" class="btn btn-success" OnClick="selectbtn_Click" Width="88px" />
            &nbsp;<br />
            <br />
            <asp:FormView ID="FormView1" CssClass="fv1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" Height="409px" Width="474px" BorderStyle="None" CellSpacing="2" GridLines="Both">
                <EditRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <ItemTemplate>

                    <asp:Table runat="server" ID="displaytable">

                        <asp:TableRow>
                            <asp:TableCell CssClass="tabhead">
                                <asp:Label runat="server" cssClass="mr">View Book Detail</asp:Label>
                                
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Image ID="Image1" Height="300px" runat="server" ImageUrl="~/logback.jpg" AlternateText="Fastlearning logo" ImageAlign="Left" Width="240px" />
                            </asp:TableCell>
                            <asp:TableCell>

                            </asp:TableCell>
                            <asp:TableCell>

                            </asp:TableCell><asp:TableCell>

                            </asp:TableCell><asp:TableCell>

                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Table runat="server">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab3">
                                            <asp:Label runat="server" ID="labname">Book Name:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Book_Name") %>' ></asp:Label>
                                        </asp:TableCell>

                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab4">
                                            <asp:Label runat="server" ID="labclass">Author:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Author") %>' ></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab4">
                                            <asp:Label runat="server" ID="Label1">Publication:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Publication") %>' ></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab3">
                                            <asp:Label runat="server" ID="labaddress">Branch:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Branch") %>' ></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab4">
                                            <asp:Label runat="server" ID="labbasic">Price:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab3">
                                            <asp:Label runat="server" ID="labcity">Total Quantity:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>
                                        </asp:TableCell>

                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab4">
                                            <asp:Label runat="server" ID="labsalary">Available Quantity:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Available_Quantity") %>'></asp:Label>
                                        </asp:TableCell>

                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab3">
                                            <asp:Label runat="server" ID="labpin">Rent Quantity:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Rent_Quantity") %>'></asp:Label>
                                        </asp:TableCell>

                                    </asp:TableRow>

                                    <asp:TableRow>
                                        <asp:TableCell CssClass="lab4">
                                            <asp:Label runat="server" ID="labbank">Detail:</asp:Label>

                                        </asp:TableCell>
                                        <asp:TableCell>
                                <asp:Label runat="server" Text='<%#Eval("Detail") %>'></asp:Label>
                                        </asp:TableCell>

                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>

                    </asp:Table>

                </ItemTemplate>

                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />

            </asp:FormView>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Select Student for issuing book:"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Select Branch:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlbr" AutoPostBack="true" runat="server" OnTextChanged="ddlbr_TextChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Select Student:"></asp:Label>
            &nbsp;&nbsp;<asp:DropDownList ID="ddlsname" AutoPostBack="true" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Days:"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="70px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="dval" runat="server" ControlToValidate="TextBox1" ErrorMessage="Days can't be empty!" ForeColor="red"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Issue Book" class="btn btn-success" Width="93px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>

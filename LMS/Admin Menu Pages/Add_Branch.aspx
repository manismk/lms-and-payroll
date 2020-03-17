<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Branch.aspx.cs" Inherits="LMS.Admin_Menu_Pages.Add_Branch" %>

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
    <form runat="server">
        <div class="header">
            <h1>Add Branch</h1>
        </div>
        <div class="ac">

            <asp:Label ID="addbranch" Text="Branch Name:" runat="server" />&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="brantxt" runat="server" CssClass="brmv" /><asp:RequiredFieldValidator ID="brnameval" ControlToValidate="brantxt" ErrorMessage="Please enter branch name!" runat="server" ForeColor="red"/><br>
            <br>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="abranbtn" Text="Add" runat="server" class="btn btn-success" OnClick="abranbtn_Click" />

            &nbsp;&nbsp;&nbsp;
                <br />

                <br />

                <asp:Label ID="LblStus" runat="server"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" CssClass="gv1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="Id">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" ReadOnly="true" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Branch_Name" HeaderText="Branch_Name" SortExpression="Branch_Name" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll_2" TypeName="LMSDAL.LmsDal" DeleteMethod="DeleteRow_1" UpdateMethod="UpdateBranch">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="Branch_Name" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
            </div>

        </div>

        
    </form>
</body>
</html>


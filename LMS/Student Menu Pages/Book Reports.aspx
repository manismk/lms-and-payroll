<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book Reports.aspx.cs" Inherits="LMS.Student_Menu_Pages.Book_Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Admin Menu Pages/amu_ss.css" />
    <link href="https://fonts.googleapis.com/css?family=Aclonica&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
</head>
<body>
    <form runat="server">
        <div class="header">
            <h1>BOOK Reports</h1>
        </div>
        <div class="ac">
            <asp:Button ID="bbook" Text="Borrow Book" runat="server" class="btn btn-success" OnClick="bbook_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="rbook" Text="Return Book" runat="server" class="btn btn-success" OnClick="rbook_Click"/>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="ObjectDataSource2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Bookname" HeaderText="Bookname" SortExpression="Bookname" />
                    <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                    <asp:BoundField DataField="Idate" HeaderText="Idate" SortExpression="Idate" />
                    <asp:BoundField DataField="Rdate" HeaderText="Rdate" SortExpression="Rdate" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="ReturnBook" TypeName="LMSDAL.LmsDal">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="ssid1" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField  DataField="Bookname" HeaderText="Bookname" />
                    <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                    <asp:BoundField DataField="Idate" HeaderText="Idate" SortExpression="Idate" />
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
            <br />

           

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="BorrowBook" TypeName="LMSDAL.LmsDal">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="ssid" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
        </div>
        <div>
&nbsp;&nbsp;&nbsp;
            </div>
&nbsp;&nbsp;&nbsp;
        <div>

           

        </div>
    </form>
</body>
</html>

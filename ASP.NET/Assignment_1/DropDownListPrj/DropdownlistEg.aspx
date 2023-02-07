<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropdownlistEg.aspx.cs" Inherits="DropDownListPrj.DropdownlistEg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="52px" Width="212px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                <asp:ListItem Text="Mobile" Value="Mobile"></asp:ListItem>
                <asp:ListItem Text="tv" Value="tv"></asp:ListItem>
                <asp:ListItem Text="laptop" Value="laptop"></asp:ListItem>
                <asp:ListItem Text="AC" Value="AC"></asp:ListItem>
                <asp:ListItem Text="fan" Value="fan"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" Width="207px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Image ID="MyImage" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>

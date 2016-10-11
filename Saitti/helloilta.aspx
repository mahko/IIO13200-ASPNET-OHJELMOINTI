<%@ Page Language="C#" AutoEventWireup="true" CodeFile="helloilta.aspx.cs" Inherits="helloilta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hello evening stars</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Hello</h1>
        <p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="sayHello" runat="server" Text="Terve" OnClick="sayHello_Click" />
        <asp:Label ID="lbMessage" runat="server"></asp:Label>
        </p>
        <p>

        </p>
    </div>
    </form>
</body>
</html>

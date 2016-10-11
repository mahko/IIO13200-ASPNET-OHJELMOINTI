<%@ Page Language="C#" AutoEventWireup="true" CodeFile="haetyontekijat.aspx.cs" Inherits="haetyontekijat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hae työntekijät</title>
    <link rel="stylesheet" href="http://w3schools.com/lib/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="nappula">
    <asp:Button ID="btnHae" runat="server" Text="Hae työntekijät" OnClick="btnHae_Click" class="w3-btn w3-green"/>
    </div>
    <div id="esitys" class="w3-green">
        <h2>Työntekijät</h2>
        <asp:GridView ID="gvData" runat="server"></asp:GridView>
    </div>
    <div id="footer">
        <asp:Label ID="lbMessage" runat="server" Text="..." CssClass="w3-footer w3-border-amber"></asp:Label>
    </div>
    </form>
</body>
</html>

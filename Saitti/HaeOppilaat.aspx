<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HaeOppilaat.aspx.cs" Inherits="HaeOppilaat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hae oppilaat</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Oppilaat</h1>
    <div id="nappulat">
    <p>
        <asp:Button ID="btnGet3" runat="server" Text="Hae 3 oppilasta" OnClick="btnGet3_Click"/>
        <asp:Button ID="btnGetAll" runat="server" Text="Hae Kaikki" OnClick="btnGetAll_Click"/>
        <asp:Button ID="btnGet3BL" runat="server" Text="Hae 3 business logiikasta" OnClick="btnGet3BL_Click"/>        
    </p>
    </div>
        <div>
            <asp:GridView ID="gvStudents" runat="server"></asp:GridView>

        </div>
    <div id="footer">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>

    </div>
    </div>
    </form>
</body>
</html>

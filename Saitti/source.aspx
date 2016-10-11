<%@ Page Language="C#" AutoEventWireup="true" CodeFile="source.aspx.cs" Inherits="source" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Source page</h1>
    </div>
    <div>
        Message to send:
        <asp:TextBox runat="server" ID="txtMessage"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="teksti on pakollinen" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList runat="server" ID="ddlMessage" OnSelectedIndexChanged="ddlMessage_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList><br />
        <asp:Button ID="btnQuery" runat="server" text="Query String" OnClick="btnQuery_Click"/><br />
        <asp:Button ID="btnSession" runat="server" Text="Session" OnClick="btnSession_Click" /><br />
        <asp:Button ID="btnCookie" runat="server" Text="Cookie" OnClick="btnCookie_Click" /><br />
        <asp:Button ID="btnPubliic" runat="server" Text="Public Properties" OnClick="btnPubliic_Click" /><br />

    </div>
    </form>
</body>
</html>

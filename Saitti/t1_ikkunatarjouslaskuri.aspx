<%@ Page Language="C#" AutoEventWireup="true" CodeFile="t1_ikkunatarjouslaskuri.aspx.cs" Inherits="t1_ikkunatarjouslaskuri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="header">
            <h1>Ikkunan dimensiot</h1>
        </div>
        <div id="dimensio">
            Leveys(L):<asp:TextBox runat="server" ID="txtWidth"></asp:TextBox>
            <asp:RangeValidator runat="server" ID="rvdWidth" ControlToValidate="txtWidth" MinimumValue="1" MaximumValue="9999" Type="Integer" 
                ErrorMessage="Syötä positiivinen kokonaisnumero" Text="Syötä positiivinen kokonaisnumero väliltä 1-9999"></asp:RangeValidator><br />
            Korkeus(H):<asp:TextBox runat="server" ID="txtHeight"></asp:TextBox>           
            <asp:RangeValidator runat="server" ID="rvdHeight" ControlToValidate="txtHeight" MinimumValue="1" MaximumValue="9999" Type="Integer" 
                ErrorMessage="Syötä positiivinen kokonaisnumero" Text="Syötä positiivinen kokonaisnumero väliltä 1-9999"></asp:RangeValidator><br />
            Karmipuun Leveys(W):<asp:TextBox runat="server" ID="txtFrame"></asp:TextBox>
                        <asp:RangeValidator runat="server" ID="rvdFrame" ControlToValidate="txtFrame" MinimumValue="1" MaximumValue="99" Type="Integer" 
                ErrorMessage="Syötä positiivinen kokonaisnumero" Text="Syötä positiivinen kokonaisnumero väliltä 1-99"></asp:RangeValidator><br />
        </div>
        <div id="nappula">
            <asp:Button ID="btnLaske" runat="server" Text="Laske Tarjoushinta" />

        </div>
        <div id="message">
            Ikkunan Pinta-ala: <asp:Label ID="lblArea" runat="server"></asp:Label> m2<br />
            Karmin Piiri: <asp:Label ID="lblCirc" runat="server"></asp:Label> m<br />
            Tarjoushinta(Ilman ALV): <asp:Label ID="lblPrice" runat="server"></asp:Label> €<br />
        </div>
    </div>
    </form>
</body>
</html>

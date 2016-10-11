<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="citiesmysl.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnHae" runat="server" Text="Hae kaupungit mysql:sta" OnClick="btnHae_Click" />
    <asp:GridView ID="gvMysli" runat="server" /><br />
    datasourcella:<br />
    <asp:SqlDataSource ID="srcMysli" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Mysli%>" 
        SelectCommand="SELECT KayttajaNick, KayttajaSposti FROM Kayttaja" 
        UpdateCommand="UPDATE Kayttaja SET KayttajaNick=@Kayttajanick, KayttajaSposti=@KayttajaSposti WHERE KayttajaId=@KayttajaId" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
    <asp:Label ID="lblMessu" runat="server"></asp:Label>
</asp:Content>


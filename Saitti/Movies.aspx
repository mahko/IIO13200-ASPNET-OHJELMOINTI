<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Movies.aspx.cs" Inherits="Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div> 
        <!-- Datasource määritteleminen-->
        <h1>Movies from XML-file</h1>
        <asp:XmlDataSource ID="srcMovies" runat="server" DataFile="~/App_Data/Movies.xml" XPath="//Movie"></asp:XmlDataSource>
        <asp:GridView ID="gvMovies" DataSourceID="srcMovies" runat="server" HeaderStyle-BackColor="Blue" HeaderStyle-ForeColor="White"></asp:GridView>
        <h1>Elokuvat listattuna</h1>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="srcMovies">
            <HeaderTemplate>
                <table border="1" style="width:80%">
                <tr><td>Nimi</td><td>Ohjaaja</td></tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                   <td><%# Eval("Name") %></td>
                   <td><%# Eval("Director") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate></table></FooterTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>


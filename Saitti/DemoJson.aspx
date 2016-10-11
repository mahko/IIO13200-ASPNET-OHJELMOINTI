<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DemoJson.aspx.cs" Inherits="DemoJson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnGet" runat="server" text="hae JSON teksti" OnClick="btnGet_Click"/><br />
    <asp:Button ID="btnGetPerson" runat="server" text="hae JSON ja muuta olioksi" OnClick="btnGetPerson_Click"/><br />
    <asp:Button ID="btnGetPolitics" runat="server" text="hae JSON ja muuta olio kokoelmaksi" OnClick="btnGetPolitics_Click"/><br />
    <asp:Literal ID="ltResult" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="KisiGuncelle.aspx.cs" Inherits="OkulOdevi.KisiGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Kişi Güncelle</h1>
    <table>
            <tr>
                <td>Departamn</td>
                <td>
                    <asp:DropDownList ID="drpdepartman" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Adı Soyadı</td>
                <td><asp:TextBox ID="txtadisoyadi" runat="server" requied=""></asp:TextBox></td>
            </tr>
            <tr>
                <td>Telefon</td>
                <td><asp:TextBox ID="txttelefon" runat="server" requied=""></asp:TextBox></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td><asp:TextBox ID="txtemail" runat="server" requied=""></asp:TextBox></td>
            </tr>
            <tr>
                <td>Şifre</td>
                <td><asp:TextBox ID="txtsifre" TextMode="Password" runat="server" requied=""></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnguncelle" runat="server" Text="Güncelle" OnClick="btnguncelle_Click" /></td>
            </tr>
        </table>
</asp:Content>

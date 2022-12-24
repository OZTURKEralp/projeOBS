<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Kisiler.aspx.cs" Inherits="OkulOdevi.Kisiler1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Kişliler</h1>
    <table>
            <tr>
                <td>Departman</td>
                <td>Adı Soyadı</td>
                <td>Telefon</td>
                <td>E-mail</td>
                 <%if (Convert.ToInt32(Session["departmanId"]) != 3) { %>
                <td>Düzenle</td>
                <td>Sil</td>
                <%} %>
            </tr>
          <asp:Repeater ID="rptlist" runat="server">
           <ItemTemplate>
            <tr>
                <td><%# Eval("Departmantlar.departmanAdi") %></td>
                <td><%# Eval("adisoyadi") %></td>
                <td><%# Eval("telefon") %></td>
                <td><%# Eval("email") %></td>
                <%if (Convert.ToInt32(Session["departmanId"]) != 3) { %>
                <td><a href="kisiGuncelle.aspx?id=<%# Eval("id") %>">güncelle</a></td>
                <td><a href="kisisil.aspx?id=<%# Eval("id") %>">sil</a></td>
                <%} %>
            </tr>
           </ItemTemplate>
        </asp:Repeater>
        </table>
</asp:Content>

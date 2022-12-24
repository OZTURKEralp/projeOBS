<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Departmanlar.aspx.cs" Inherits="OkulOdevi.Departmanlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Repeater ID="rptlist" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("id") %></td>
                    <td><%# Eval("departmanAdi") %></td>
                </tr>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
</asp:Content>

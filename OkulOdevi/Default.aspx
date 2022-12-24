<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OkulOdevi.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Literal ID="lblmessage" runat="server"></asp:Literal></td>
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
                <td><asp:Button ID="btngirisyap" runat="server" Text="Giriş Yap" OnClick="btngirisyap_Click" /></td>
            </tr>
        </table>
    </form>
</body>
</html>

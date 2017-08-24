<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="HolaWeb.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 155px;
        }
        .auto-style3 {
            width: 155px;
        }
    </style>
</head>
<body>
    <form id="Formu" runat="server">
    <div>
    
    &nbsp;
        <asp:Label ID="lblSaludo" runat="server" Text="Saludo :"></asp:Label>
&nbsp;<asp:TextBox ID="txtSaludo" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSaludo" runat="server" Text="Saludar" OnClick="btnSaludo_Click" />
    
        &nbsp;<asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    
        <br />
        <asp:Panel ID="pnlPersona" runat="server">
            &nbsp;&nbsp;
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre :"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnSaluper" runat="server" Text="Saludar Persona" OnClick="btnSaluper_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnSalunew" runat="server" Text="Saludar Nuevamente" OnClick="btnSalunew_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;
            </asp:Panel>
        <br />
        <br />
&nbsp;
        <br />
        <br />
&nbsp;
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlesServidor.aspx.cs" Inherits="HolaWeb.ControlesServidor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtSimple" runat="server" TextMode="SingleLine"></asp:TextBox>
        <asp:TextBox ID="txtMulti" runat="server" TextMode="MultiLine" Rows="3" Height="0" ></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtReadOnly" runat="server" ReadOnly="true"></asp:TextBox>
        <asp:TextBox ID="txtInactivo" runat="server" Enabled="false"></asp:TextBox>

        <asp:Button ID="btnCargarTextos" runat="server" Text="Cargar Texto" OnClick="btnCargarTextos_Click" />
        <asp:Button ID="btnLimpiarTextos" runat="server" Text="Limpiar Textos" OnClick="btnLimpiarTextos_Click" />
        <asp:Button ID="btnTambienLimpia" runat="server" Text="Tambien Limpia" OnClick="btnLimpiarTextos_Click" />
        <asp:Button ID="btnVerPass" runat="server" Text="Ver Pass" OnClick="btnVerPass_Click" />
        <asp:Button ID="btnHabilitar" runat="server" Text="Habilitar" OnClick="btnHabilitar_Click" />
        <asp:Button ID="btnAumentarLineas" runat="server" Text="Aumentar Lineas" OnClick="btnAumentarLineas_Click" />

        <asp:Panel ID="pnlOpciones" runat="server" >
            <asp:Button ID="optUno" runat="server" Text="Opcion 1" />
            <asp:Button ID="optDos" runat="server" Text="Opcion 2" />
            <asp:Button ID="optTres" runat="server" Text="Opcion 3" />
            <asp:Panel ID="pnLista" runat="server">
                <asp:TextBox ID="txtSeleccionTexto" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtSeleccionValor" runat="server"></asp:TextBox>
                
                <asp:DropDownList ID="ddlLista" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLista_SelectedIndexChanged">
              
                </asp:DropDownList>
                <asp:Button ID="btnCargarLista" runat="server" Text="Cargar Lista" OnClick="btnCargarLista_Click" />
            </asp:Panel>
            <br />
        </asp:Panel>
    </div>
    </form>
</body>
</html>

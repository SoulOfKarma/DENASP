<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario Liquidacion.aspx.cs" Inherits="Liquidacio.Formulario_Liquidacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            width: 693px;
        }
        .auto-style4 {
            width: 149px;
            height: 23px;
        }
        .auto-style5 {
            width: 693px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="Formu" runat="server">
    <div>
    
        
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <div style="text-align:center"><h1><asp:Label ID="lblTitulo" runat="server" Text="Formulario de Pagos"></asp:Label></h1></div>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <div style="text-align:end"><asp:Label ID="lblNombre" runat="server" Text="Nombre :"></asp:Label></div>
                </td>
                <td>
                    <div style="align-content:center"><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></div>
                </td>
                <td>&nbsp;</td>
            </tr>
       
        
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblApellido" runat="server" Text="Apellido :"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblRut" runat="server" Text="Rut :"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblSueldoBruto" runat="server" Text="Sueldo Bruto :"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSueldoBruto" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtTextArea" runat="server" TextMode="MultiLine" Height="138px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblAFP" runat="server" Text="AFP :"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlAFP" runat="server" >
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblSalud" runat="server" Text="Salud :"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlSalud" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    </td>
                <td class="auto-style5">
                    </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblCHKBono" runat="server" Text="Recibe Bono?"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:CheckBox ID="chkBono" runat="server" Text="Chekee si recibe Bono ~" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblBono" runat="server" Text="Bono :" ></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtBono" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <div style="text-align:end"><asp:Label ID="lblSueldoLiquido" runat="server" Text="Sueldo Liquido :"></asp:Label></div>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSueldoLiquido" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnCalcular" runat="server" Text="Calcular Sueldo" OnClick="btnCalcular_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    
    </div>
    </form>
</body>
</html>

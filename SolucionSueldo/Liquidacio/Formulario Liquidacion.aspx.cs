using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace Liquidacio
{
    public partial class Formulario_Liquidacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlAFP.Items.Add(new ListItem("Colmena", "7"));
            ddlAFP.Items.Add(new ListItem("Habitat", "6"));
            ddlAFP.Items.Add(new ListItem("Modelo", "5"));
            ddlAFP.Items.Add(new ListItem("ProVida", "9"));
            ddlSalud.Items.Add(new ListItem("Fonasa","7"));
            ddlSalud.Items.Add(new ListItem("Isapre","9"));
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            Trabajador tra = new Trabajador();

            tra.Nombre = txtNombre.Text;
            tra.Apellido = txtApellido.Text;
            tra.Rut = txtRut.Text;
            int a = Convert.ToInt32(ddlAFP.SelectedValue);
            int b = Convert.ToInt32(ddlSalud.SelectedValue);
            tra.Afp = a;
            tra.Salud = b;
            
            int bono = 0;
            int sueldo = Convert.ToInt32(txtSueldoBruto.Text);
            tra.SueldoBruto = sueldo;
            int adelanto = 0;
            tra.DescuentoAdelantos = adelanto;
            if (chkBono.Checked)
            {
                
                bono = (int)(sueldo * 0.150);
                tra.Bono = bono;
            }
            double c = a;
            double d = b;
            int sueldoLiquido = (int)((sueldo + bono) - ((sueldo * (c / 100)) + (sueldo * (d / 100))));
            tra.SueldoLiquido = sueldoLiquido;

            txtTextArea.Text = tra.ObtenerInformacion();
        }
    }
}
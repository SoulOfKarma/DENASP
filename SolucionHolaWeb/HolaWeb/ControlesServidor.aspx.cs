using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HolaWeb
{
    public partial class ControlesServidor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void cargarTextos()
        {
            this.txtSimple.Text = "Texto  Simple";
            this.txtMulti.Text = "Texto Multiple Lineas \nLinea 2 \nLinea 3";
            this.txtReadOnly.Text = "Solo Lectura";
            this.txtInactivo.Text = "Inactivo";
        }

        private void limpiarTextos()
        {
            this.txtSimple.Text = string.Empty;
            this.txtMulti.Text = string.Empty;
            this.txtReadOnly.Text = string.Empty;
            txtInactivo.Text = string.Empty;
            txtPassword.Text = string.Empty;
        }

        protected void btnCargarTextos_Click(object sender, EventArgs e)
        {
            cargarTextos();
        }

        protected void btnLimpiarTextos_Click(object sender, EventArgs e)
        {
           limpiarTextos();
        }

        protected void btnVerPass_Click(object sender, EventArgs e)
        {
            txtReadOnly.Text = txtPassword.Text;
        }

        protected void btnHabilitar_Click(object sender, EventArgs e)
        {
            txtReadOnly.ReadOnly = false;

            txtSimple.Text = "Read Only";
            txtSimple.ReadOnly = true;

            txtInactivo.Text = "Escrito en inactivo";

            txtInactivo.Enabled = !txtInactivo.Enabled;
            btnHabilitar.Text = (txtInactivo.Enabled ? "Desabilitar" : "Habilitar");
        }

        protected void btnAumentarLineas_Click(object sender, EventArgs e)
        {
            txtMulti.Rows = 6;
        }

        protected void btnCargarLista_Click(object sender, EventArgs e)
        {
            ddlLista.Items.Clear();

            for (int i = 0; i < 10; i++)
            {
                ddlLista.Items.Add(new ListItem("Elemento"," "+i));


            }
        }

        protected void ddlLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtSeleccionTexto.Text = ddlLista.SelectedValue;
            txtSeleccionValor.Text = ddlLista.SelectedItem.ToString();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace HolaWeb
{
    public partial class Inicio : System.Web.UI.Page
    {
        private Persona MiPersona
        {
            get
            {
                if (Session["MiPersona"] == null)
                {
                    Session["MiPersona"] = new Persona();
                }
                return (Persona)Session["MiPersona"];
            }
            set
            {
                Session["MiPersona"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaludo_Click(object sender, EventArgs e)
        {
            txtSaludo.Text = "Manco ¡¡¡¡";
        }

        protected void btnSaluper_Click(object sender, EventArgs e)
        {
            try
            {
                MiPersona.Nombre = txtNombre.Text;
                MiPersona.Apellido = txtApellido.Text;



                txtSaludo.Text = MiPersona.obtenerNombre();
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error";
                
            }
        }

        protected void btnSalunew_Click(object sender, EventArgs e)
        {

            

            txtSaludo.Text = MiPersona.obtenerNombre();
        }
    }
}
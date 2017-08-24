using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HolaWeb
{
    public partial class ControlesHTML : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                verificarCheck();
            }
        }

        private void verificarCheck()
        {
            if (htmlCheckbox.Checked)
            {
                htmlText.Value = "Marcado";
            }
            else
            {
                htmlText.Value = "No Marcado";
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class Trabajador : Liquidacion
    {

        private String nombre;
        private String apellido;
        private String rut;

        

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public string Rut
        {
            get
            {
                return rut;
            }

            set
            {
                rut = value;
            }
        }

        private void Init()
        {
            nombre = string.Empty;
            apellido = string.Empty;
            rut = string.Empty;
        }

        public Trabajador() { Init(); }

        public Trabajador(int sueldoBruto, int sueldoLiquido, int afp, int salud, int bono, int descuentoAdelantos,
            string nombre, string apellido, string rut) 
            : base(sueldoBruto, sueldoLiquido, afp, salud, bono, descuentoAdelantos)
        {
            this.nombre = nombre;
            this.apellido = apellido;
            this.rut = rut;
        }

        public new string ObtenerInformacion()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(base.ObtenerInformacion());
            sb.AppendLine(string.Format("Nombre :{0}", Nombre));
            sb.AppendLine(string.Format("Apellido :{0}", Apellido));
            sb.AppendLine(string.Format("Rut :{0}",Rut));

            return sb.ToString();
        }

        public override string ToString()
        {
            return ObtenerInformacion();
        }
    }
}

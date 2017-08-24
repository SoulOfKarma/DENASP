using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class Persona
    {
        String nombre;
        String apellido;

       

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

        private void Init()
        {
            nombre = string.Empty;
            apellido = string.Empty;
        }

        public Persona() { Init(); }

        public Persona(string nombre, string apellido)
        {
            Nombre = nombre;
            Apellido = apellido;
        }

        public String obtenerNombre()
        {
            StringBuilder sb = new StringBuilder();
           // sb.AppendLine(string.Format("Nombre: {0}", Nombre));
          //  sb.AppendLine(string.Format("Apellido :{0}", Apellido));
            sb.AppendLine(string.Format("{0} {1}", Nombre,Apellido));
            return sb.ToString(); 
        }


    }
}

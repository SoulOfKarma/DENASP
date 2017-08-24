using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class Liquidacion
    {
        private int sueldoBruto;
        private int sueldoLiquido;
        private int afp;
        private int salud;
        private int bono;
        private int descuentoAdelantos;


        public int SueldoBruto
        {
            get
            {
                return sueldoBruto;
            }

            set
            {
                sueldoBruto = value;
            }
        }

        public int SueldoLiquido
        {
            get
            {
                return sueldoLiquido;
            }

            set
            {
                sueldoLiquido = value;
            }
        }

        public int Afp
        {
            get
            {
                return afp;
            }

            set
            {
                afp = value;
            }
        }

        public int Salud
        {
            get
            {
                return salud;
            }

            set
            {
                salud = value;
            }
        }

        public int Bono
        {
            get
            {
                return bono;
            }

            set
            {
                bono = value;
            }
        }

        public int DescuentoAdelantos
        {
            get
            {
                return descuentoAdelantos;
            }

            set
            {
                descuentoAdelantos = value;
            }
        }

        private void Init()
        {
            sueldoBruto = 0;
            sueldoLiquido = 0;
            afp = 0;
            salud = 0;
            bono = 0;
            descuentoAdelantos = 0;
        }

        public Liquidacion() { Init(); }

        public Liquidacion(int sueldoBruto, int sueldoLiquido, int afp, int salud, int bono, int descuentoAdelantos)
        {
            SueldoBruto = sueldoBruto;
            SueldoLiquido = sueldoLiquido;
            Afp = afp;
            Salud = salud;
            Bono = bono;
            DescuentoAdelantos = descuentoAdelantos;
        }

        public string ObtenerInformacion()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(string.Format("Sueldo Bruto :{0}", sueldoBruto));
            sb.AppendLine(string.Format("Sueldo Liquido :{0}", SueldoLiquido));
            sb.AppendLine(string.Format("AFP  :{0}%", Afp));
            sb.AppendLine(string.Format("Salud :{0}%", Salud));
            sb.AppendLine(string.Format("Bono :{0}", Bono));
            sb.AppendLine(string.Format("Descuento Adelantos :{0}", DescuentoAdelantos));
            return sb.ToString();
        }

        public override string ToString()
        {
            return ObtenerInformacion();
        }
    }
}

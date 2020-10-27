using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentLibreria
{
    public static class Excepciones
    {
        public static List<string> ObtenerMensajesExcepcion(Exception Ex)
        {
            List<string> Mensajes = new List<string>();

            Exception Excepcion = Ex;

            while (Excepcion != null)
            {
                Mensajes.Add(Excepcion.Message);

                Excepcion = Excepcion.InnerException;
            }

            return Mensajes;
        }

        public static string ObtenerMensajesExcepcionEnCadenaSencilla(Exception Ex)
        {
            string Mensajes = string.Empty;

            foreach (string Mensaje in ObtenerMensajesExcepcion(Ex))
            {
                Mensajes += (string.IsNullOrEmpty(Mensajes) ? string.Empty : Environment.NewLine) + Mensaje;
            }

            return Mensajes;
        }
    }
}

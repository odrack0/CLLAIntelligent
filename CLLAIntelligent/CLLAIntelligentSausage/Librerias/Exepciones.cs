using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentSausage.Librerias
{
    public static class Excepciones
    {
        public static string ObtenerNombreExcepcion(Exception ex)
        {
            string nombreExepcion = string.Empty;

            Exception excepcion = ex;

            while(excepcion != null)
            {
                nombreExepcion = excepcion.GetType().Name;

                excepcion = excepcion.InnerException;
            }

            return nombreExepcion;
        }

        public static string ObtenerMensajeExepcion(Exception ex)
        {
            string mensajeExepcion = string.Empty;

            Exception excepcion = ex;

            while(excepcion != null)
            {
                mensajeExepcion = excepcion.Message;

                excepcion = excepcion.InnerException;
            }

            return mensajeExepcion;
        }
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

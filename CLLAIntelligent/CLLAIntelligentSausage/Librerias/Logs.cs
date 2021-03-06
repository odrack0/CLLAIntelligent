﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentSausage.Librerias
{
    public static class Logs
    {
        public static void EscribirLog(string Evento)
        {
            string ArchivoLog = @"Logs\" + DateTime.Now.ToString("yyyyMMdd") + ".txt";
            string Hora = DateTime.Now.ToString("HH:mm");
            Directory.CreateDirectory(ArchivoLog.Substring(0, ArchivoLog.LastIndexOf(@"\")));

            StreamWriter SW = new StreamWriter(ArchivoLog, true);

            string evento = Hora + "- " + Evento;
            Console.WriteLine(evento);
            SW.WriteLine(evento);

            SW.Close();
        }

        public static void EscribirLog(Exception ex)
        {
            EscribirLog(Excepciones.ObtenerMensajesExcepcionEnCadenaSencilla(ex));
        }
    }
}

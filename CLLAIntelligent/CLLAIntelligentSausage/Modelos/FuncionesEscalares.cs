using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentSausage.Modelos
{
    public static class FuncionesEscalares
    {
        public static string fnExpedienteDigitalObtenerNomenclaturaArchivoFinalizado(int idExpedienteDigitalProcesamiento, CLLASausageContext db)
        {
            string sqlQuery = "SELECT [dbo].[fnExpedienteDigitalObtenerNomenclaturaArchivoFinalizado] ({0})";
            Object[] parameters = { idExpedienteDigitalProcesamiento };
            string result = db.Database.SqlQuery<string>(sqlQuery, parameters).FirstOrDefault();

            return result;
        }
    }
}

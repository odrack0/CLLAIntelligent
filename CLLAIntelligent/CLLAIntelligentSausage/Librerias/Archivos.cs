using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentSausage.Librerias
{
    public static class Archivos
    {
        public class ArchivoInfo
        {
            public string NombreCompleto { get; set; }
            public string Nombre { get; set; }
            public string Extension { get; set; }
            public bool EsArchivo { get; set; }
            public string DirectorioPadre { get; set; }
            public string RutaCompleta { get; set; }
        }

        public static List<ArchivoInfo> ObtenerElementosDeDirectorioEnProfundidad(string DirecotrioRaiz)
        {
            List<ArchivoInfo> Lista = new List<ArchivoInfo>();

            var sourceDir = new DirectoryInfo(DirecotrioRaiz);

            FileInfo[] Archivos = sourceDir.GetFiles();
            DirectoryInfo[] Directorios = sourceDir.GetDirectories();

            if (Archivos.Count() > 0)
            {
                Array.ForEach(
                    Archivos,
                    f => Lista.Add(
                        new ArchivoInfo
                        {
                            NombreCompleto = f.Name,
                            Nombre = string.IsNullOrEmpty(f.Extension) ? f.Name : f.Name.Replace(f.Extension, string.Empty),
                            Extension = f.Extension,
                            EsArchivo = true,
                            DirectorioPadre = sourceDir.Name,
                            RutaCompleta = f.FullName
                        }));
            }

            if (Directorios.Count() > 0)
            {
                foreach (DirectoryInfo dir in Directorios)
                {
                    Lista.Add(
                        new ArchivoInfo
                        {
                            NombreCompleto = dir.Name,
                            EsArchivo = false,
                            DirectorioPadre = sourceDir.Name,
                            RutaCompleta = dir.FullName
                        });

                    Lista.AddRange(ObtenerElementosDeDirectorioEnProfundidad(dir.FullName));
                }
            }

            return Lista;
        }
    }
}

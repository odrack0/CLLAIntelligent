using CLLAIntelligentSausage.Librerias;
using CLLAIntelligentSausage.Modelos;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace CLLAIntelligentSausage
{
    class Program
    {
        public const string GastosComprobadosRutaOrigen = @"\\10.1.45.252\LaserFiche\FACTURAS PROVEEDORES\";
        public const string GastosComprobadosRutaDestino = @"\\10.1.45.252\LaserFiche\FACTURAS PROVEEDORES\ProcesadoSausage\";
        public static void ProcesaArchivo(ExpedienteDigitalProcesamientoArchivo archivoPendiente, string rutaOrigenAlterna, CLLASausageContext db)
        {
            if (string.IsNullOrEmpty(rutaOrigenAlterna))
            {
                rutaOrigenAlterna = archivoPendiente.ArchivoRutaCompletaOrigen;
            }

            if (File.Exists(rutaOrigenAlterna))
            {
                //Crear directorio destino si no existe

                try
                {
                    Directory.CreateDirectory(archivoPendiente.ArchivoRutaCompletaDestino.Substring(0, archivoPendiente.ArchivoRutaCompletaDestino.LastIndexOf(@"\")));
                }
                catch (Exception ex)
                {
                    EventoBitacoraProcesamientoArchivo(archivoPendiente.IdExpedienteDigitalProcesamientoArchivo, ex, db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora.NO_ES_POSIBLE_CREAR_DIRECTORIO_DESTINO);
                }

                if (!File.Exists(archivoPendiente.ArchivoRutaCompletaDestino))
                {
                    File.Copy(rutaOrigenAlterna, archivoPendiente.ArchivoRutaCompletaDestino);
                }

                //if (archivoPendiente.)
                //{
                //    try
                //    {
                //        File.Delete(archivoOrigen);
                //    }
                //    catch (Exception ex)
                //    {
                //        errores++;
                //        EventoBitacora(idExpedienteDigital, ex, db, CLLASausageModeloDatos.Enumerados.ExpedienteDigitalEventoBitacora.NO_ES_POSIBLE_ELIMINAR_ARCHIVO_EN_ORIGEN);
                //    }
                //}

                //if (!string.IsNullOrEmpty(rutamover))
                //{
                //    string rutaMoverPosProcesamiento =
                //        archivoOrigen.Substring(0, archivoOrigen.LastIndexOf(@"\")) +
                //        @"\" +
                //        rutamover +
                //        archivoOrigen.Substring(archivoOrigen.LastIndexOf(@"\"));
                //    try
                //    {
                //        Directory.CreateDirectory(rutaMoverPosProcesamiento.Substring(0, rutaMoverPosProcesamiento.LastIndexOf(@"\")));
                //    }
                //    catch (Exception ex)
                //    {
                //        errores++;
                //        EventoBitacora(idExpedienteDigital, ex, db, CLLASausageModeloDatos.Enumerados.ExpedienteDigitalEventoBitacora.NO_ES_POSIBLE_CREAR_DIRECTORIO_PROCESADO_ORIGEN);
                //    }

                //    try
                //    {
                //        File.Move(archivoOrigen, rutaMoverPosProcesamiento);
                //    }
                //    catch (Exception ex)
                //    {
                //        errores++;
                //        EventoBitacora(idExpedienteDigital, ex, db, CLLASausageModeloDatos.Enumerados.ExpedienteDigitalEventoBitacora.NO_ES_POSIBLE_MOVER_ARCHIVO_A_DIRECTORIO_PROCESADO_EN_ORIGEN);
                //    }
                //}

                archivoPendiente.Procesado = true;
            }
            else
            {
                EventoBitacoraProcesamientoArchivo(archivoPendiente.IdExpedienteDigitalProcesamientoArchivo, new Exception(archivoPendiente.ArchivoRutaCompletaOrigen), db, CLLAIntelligentSausage.Modelos.Enumerados.ExpedienteDigitalEventoBitacora.FALTA_ARCHIVO_ORIGEN);
            }
        }
        static void EventoBitacora(int idExpedienteDigital, Exception ex, CLLASausageContext db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora evento)
        {
            var expedienteDigitalBitacora = new ExpedienteDigitalBitacora
            {
                IdExpedienteDigital = idExpedienteDigital,
                FechaHora = DateTime.Now,
                IdExpedienteDigitalEventoBitacora = (int)evento,
                Observaciones = Excepciones.ObtenerMensajesExcepcionEnCadenaSencilla(ex)
            };

            db.ExpedienteDigitalBitacora.Add(expedienteDigitalBitacora);
        }

        static void EventoBitacoraProcesamientoArchivo(int idExpedienteDigitalProcesamientoArchivo, Exception ex, CLLASausageContext db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora evento)
        {
            var expedienteDigitalProcesamientoArchivoBitacora = new ExpedienteDigitalProcesamientoArchivoBitacora
            {
                IdExpedienteDigitalProcesamientoArchivo = idExpedienteDigitalProcesamientoArchivo,
                FechaHora = DateTime.Now,
                IdExpedienteDigitalEventoBitacora = (int)evento,
                Observaciones = Excepciones.ObtenerMensajesExcepcionEnCadenaSencilla(ex)
            };

            db.ExpedienteDigitalProcesamientoArchivoBitacora.Add(expedienteDigitalProcesamientoArchivoBitacora);
        }

        public static void AgregarProcesamientoArchivo(int idExpedienteDigital, int idExpedienteDigitalProcesamiento, string archivoRutaCompletaOrigen, string archivoRutaCompletaDestino, string archivoFinalizadoNomenclatura, string archivoFinalizadoRuta, Boolean requerido, CLLASausageContext db)
        {
            var parametroLlavePrimaria = new System.Data.Entity.Core.Objects.ObjectParameter("llaveprimaria", 1);

            db.spExpedienteDigitalInsertaProcesamientoArchivo(
                idExpedienteDigitalProcesamiento,
                archivoRutaCompletaOrigen,
                archivoRutaCompletaDestino,
                requerido,
                parametroLlavePrimaria
            );

            int llavePrimariaProcesamientoArchvo = (int)parametroLlavePrimaria.Value;

            db.spExpedienteDigitalInsertaArchivo(
                idExpedienteDigital,
                llavePrimariaProcesamientoArchvo,
                archivoFinalizadoNomenclatura,
                archivoFinalizadoRuta
                );
        }

        public static string RemplazaMetaDatosRutaArchivo(List<ExpedienteDigitalMetaDato> metaDatosExpedientePedimentoEncabezado, string rutaCompletaArchivo)
        {
            foreach (var metaDatoExpedientePedimentoEncabezado in metaDatosExpedientePedimentoEncabezado)
            {
                if (rutaCompletaArchivo.Contains(metaDatoExpedientePedimentoEncabezado.Nombre))
                {
                    rutaCompletaArchivo = rutaCompletaArchivo.Replace(metaDatoExpedientePedimentoEncabezado.Nombre, metaDatoExpedientePedimentoEncabezado.Valor);
                }
            }

            return rutaCompletaArchivo;
        }

        public static void ProcesaGastosComprobados(CLLASausageContext db)
        {
            var archivosXML = Directory.GetFiles(GastosComprobadosRutaOrigen, "*.xml");

            foreach (var archivoXML in archivosXML)
            {
                ExpedienteDigitalGastoComprobado gastoComprobado = new ExpedienteDigitalGastoComprobado();

                try
                {
                    using (FileStream fileStream = new FileStream(archivoXML, FileMode.Open))
                    {
                        XmlSerializer serializer = new XmlSerializer(typeof(Comprobante));
                        Comprobante comprobante = (Comprobante)serializer.Deserialize(fileStream);

                        //Datos del CFDI
                        gastoComprobado.EmisorNombre = comprobante.Emisor.Nombre;
                        gastoComprobado.EmisorRFC = comprobante.Emisor.Rfc;
                        gastoComprobado.Fecha = comprobante.Fecha;
                        gastoComprobado.Folio = comprobante.Folio;
                        gastoComprobado.SubTotal = comprobante.SubTotal;
                        gastoComprobado.Total = comprobante.Total;

                        //Archivos                    
                        string nombreCompletoArhivoXML = archivoXML.Substring(archivoXML.LastIndexOf(@"\") + 1);
                        string nombreArchivoXML = nombreCompletoArhivoXML.Substring(0, nombreCompletoArhivoXML.LastIndexOf("."));

                        gastoComprobado.RutaArchivoXMLOrigen = archivoXML;
                        gastoComprobado.RutaArchivoXMLDestino = GastosComprobadosRutaDestino + gastoComprobado.Fecha.Substring(0, 4) + "\\" + gastoComprobado.Fecha.Substring(5, 2) + "\\" + nombreCompletoArhivoXML;
                        gastoComprobado.RutaArchivoPDFOrigen = GastosComprobadosRutaOrigen + nombreArchivoXML + ".pdf";
                        gastoComprobado.RutaArchivoPDFDestino = GastosComprobadosRutaDestino + gastoComprobado.Fecha.Substring(0, 4).ToString() + "\\" + gastoComprobado.Fecha.Substring(5, 2) + "\\" + nombreArchivoXML + ".pdf";
                    }

                    Directory.CreateDirectory(gastoComprobado.RutaArchivoXMLDestino.Substring(0, gastoComprobado.RutaArchivoXMLDestino.LastIndexOf("\\")));
                    File.Move(gastoComprobado.RutaArchivoXMLOrigen, gastoComprobado.RutaArchivoXMLDestino);
                    File.Move(gastoComprobado.RutaArchivoPDFOrigen, gastoComprobado.RutaArchivoPDFDestino);


                    db.ExpedienteDigitalGastoComprobado.Add(gastoComprobado);
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    Logs.EscribirLog(ex);
                }
            }
        }
        static void Main(string[] args)
        {
            try
            {
                CLLASausageContext db = new CLLASausageContext();


                ProcesaGastosComprobados(db);

                #region GeneracionDeTablasProcesamiento
                db.Database.CommandTimeout = 600;

                db.spExpedienteDigitalImportaPedimentosYMetadatos();
                db.spExpedienteDigitalImportaFacturasYMetadatos();


                var procesamientosPendientes = db.fnExpedienteDigitalProcesamientoPendiente().ToList();
                foreach (var procesamientoPendiente in procesamientosPendientes)
                {
                    string origenNomenclaura = procesamientoPendiente.OrigenNomenclatura;
                    string destinoNomenclatura = procesamientoPendiente.DestinoNomenclatura;
                    //string archivoFinalizadoNomenclaturaOriginal = db.ExpedienteDigitalObtenerNomenclaturaArchivoFinalizado(procesamientoPendiente.IdExpedienteDigitalProcesamiento);Cambio de EF
                    string archivoFinalizadoNomenclaturaOriginal = FuncionesEscalares.fnExpedienteDigitalObtenerNomenclaturaArchivoFinalizado(procesamientoPendiente.IdExpedienteDigitalProcesamiento, db);
                  
                    var metaDatosExpediente = db.ExpedienteDigitalMetaDato.Where(w => w.IdExpedienteDigital == procesamientoPendiente.IdExpedienteDigital).ToList();
                    var metaDatosGeneralesExpediente = metaDatosExpediente.Where(w => w.Nivel == 1).ToList();
                    Boolean esPedConsolidado = metaDatosExpediente.Where(w => w.Nombre == Modelos.Enumerados.ExpedientedigitalTipoMetaDato.RemNumeroRemesa).ToList().Count == 0 ? false : true;

                    origenNomenclaura = RemplazaMetaDatosRutaArchivo(metaDatosGeneralesExpediente, origenNomenclaura);
                    destinoNomenclatura = RemplazaMetaDatosRutaArchivo(metaDatosGeneralesExpediente, destinoNomenclatura);
                    string archivoFinalizadoNomenclatura = RemplazaMetaDatosRutaArchivo(metaDatosGeneralesExpediente, archivoFinalizadoNomenclaturaOriginal);

                    #region HOTFIXNAMESERVERSX
                    origenNomenclaura = origenNomenclaura.Replace("NAS-EXPDigital", "10.1.45.252");
                    origenNomenclaura = origenNomenclaura.Replace("NAS-EXPDIGITAL", "10.1.45.252");
                    #endregion

                    switch (procesamientoPendiente.IdExpedienteDigitalTipoArchivo)
                    {
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.COVE_ACUSE:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.COVE_IMPRESO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.COVE_XML:
                            var metaDatosCOVE = metaDatosExpediente.Where(w => w.Nombre == Modelos.Enumerados.ExpedientedigitalTipoMetaDato.PedCOVENumeroEDocument).ToList();

                            foreach (var metaDatoCOVE in metaDatosCOVE)
                            {
                                List<ExpedienteDigitalMetaDato> metaDatosPadre = new List<ExpedienteDigitalMetaDato>();
                                metaDatosPadre.Add(metaDatoCOVE);

                                string origen = RemplazaMetaDatosRutaArchivo(metaDatosPadre, origenNomenclaura);
                                string destino = RemplazaMetaDatosRutaArchivo(metaDatosPadre, destinoNomenclatura);
                                string finalizado = RemplazaMetaDatosRutaArchivo(metaDatosPadre, archivoFinalizadoNomenclatura);

                                AgregarProcesamientoArchivo(
                                    procesamientoPendiente.IdExpedienteDigital,
                                    procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                    origen,
                                    destino,
                                    archivoFinalizadoNomenclaturaOriginal,
                                    finalizado,
                                    true,
                                    db
                                    );
                            }
                            break;
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DODA_AVISO_CONSOLIDADO_IMPRESO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DODA_AVISO_CONSOLIDADO_XML_ENVIO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DODA_AVISO_CONSOLIDADO_XML_RESPUESTA:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.REMESA_RELACION_DE_FACTURAS:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.REMESA_SIMPLIFICADO:
                            var metaDatosRemesa = metaDatosExpediente.Where(w => w.Nombre == Modelos.Enumerados.ExpedientedigitalTipoMetaDato.RemNumeroRemesa).ToList();

                            foreach (var metaDatoRemesa in metaDatosRemesa)
                            {
                                List<ExpedienteDigitalMetaDato> metaDatosPadre = new List<ExpedienteDigitalMetaDato>();
                                metaDatosPadre.Add(metaDatoRemesa);

                                string origen = RemplazaMetaDatosRutaArchivo(metaDatosPadre, origenNomenclaura);
                                string destino = RemplazaMetaDatosRutaArchivo(metaDatosPadre, destinoNomenclatura);
                                string finalizado = RemplazaMetaDatosRutaArchivo(metaDatosPadre, archivoFinalizadoNomenclatura);

                                var metaDatosHijos = metaDatosExpediente.Where(w => w.EsHijo == metaDatoRemesa.IdExpedienteDigitalMetaDato).ToList();

                                if (metaDatosHijos.Count > 0)
                                {
                                    origen = RemplazaMetaDatosRutaArchivo(metaDatosHijos, origen);
                                    destino = RemplazaMetaDatosRutaArchivo(metaDatosHijos, destino);
                                }


                                AgregarProcesamientoArchivo(
                                    procesamientoPendiente.IdExpedienteDigital,
                                    procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                    origen,
                                    destino,
                                    archivoFinalizadoNomenclaturaOriginal,
                                    finalizado,
                                    true,
                                    db
                                    );
                            }

                            break;
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DODA_IMPRESO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DODA_XML_ENVIO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DODA_XML_RESPUESTA:
                            if (!esPedConsolidado)
                            {
                                AgregarProcesamientoArchivo(
                                    procesamientoPendiente.IdExpedienteDigital,
                                    procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                    origenNomenclaura,
                                    destinoNomenclatura,
                                    archivoFinalizadoNomenclaturaOriginal,
                                    archivoFinalizadoNomenclatura,
                                    true,
                                    db
                                    );
                            }
                            break;
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DIGITALIZACION_DOCUMENTO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DIGITALIZACION_XML_ENVIO:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DIGITALIZACION_XML_RESPUESTA:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.DIGITALIZACION_ACUSE_IMPRESO:
                            var metaDatosDigitalizacion = metaDatosExpediente.Where(w => w.Nombre == Modelos.Enumerados.ExpedientedigitalTipoMetaDato.PedDigitalizacionNumeroEDocument).ToList();

                            foreach (var metaDatoDigitalizacion in metaDatosDigitalizacion) //MAS DE UN REGISTRO
                            {
                                List<ExpedienteDigitalMetaDato> metaDatosPadre = new List<ExpedienteDigitalMetaDato>();
                                metaDatosPadre.Add(metaDatoDigitalizacion);

                                string origen = RemplazaMetaDatosRutaArchivo(metaDatosPadre, origenNomenclaura);
                                string destino = RemplazaMetaDatosRutaArchivo(metaDatosPadre, destinoNomenclatura);
                                string finalizado = RemplazaMetaDatosRutaArchivo(metaDatosPadre, archivoFinalizadoNomenclatura);

                                var metaDatosHijos = metaDatosExpediente.Where(w => w.EsHijo == metaDatoDigitalizacion.IdExpedienteDigitalMetaDato).ToList();

                                if (metaDatosHijos.Count > 0)
                                {
                                    origen = RemplazaMetaDatosRutaArchivo(metaDatosHijos, origen);
                                    destino = RemplazaMetaDatosRutaArchivo(metaDatosHijos, destino);
                                }


                                AgregarProcesamientoArchivo(
                                    procesamientoPendiente.IdExpedienteDigital,
                                    procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                    origen,
                                    destino,
                                    archivoFinalizadoNomenclaturaOriginal,
                                    finalizado,
                                    true,
                                    db
                                    );
                            }
                            break;
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.MANIFESTACION_DE_VALOR:
                            var metaDato = metaDatosExpediente.Where(w => w.Nombre == Modelos.Enumerados.ExpedientedigitalTipoMetaDato.PedCantidadProveedores).SingleOrDefault();
                            int cantidadProveedores = Convert.ToInt32(metaDato.Valor);

                            for (int i = 0; i < cantidadProveedores; i++)
                            {
                                string origen = origenNomenclaura.Replace("{Consecutivo}", (i + 1).ToString());
                                string destino = destinoNomenclatura.Replace("{Consecutivo}", (i + 1).ToString());
                                string finalizado = archivoFinalizadoNomenclatura.Replace("{Consecutivo}", (i + 1).ToString());

                                AgregarProcesamientoArchivo(
                                    procesamientoPendiente.IdExpedienteDigital,
                                    procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                    origen,
                                    destino,
                                    archivoFinalizadoNomenclaturaOriginal,
                                    finalizado,
                                    true,
                                    db
                                    );
                            }
                            break;
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.GASTO_COMPROBADO_PDF:
                        case (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.GASTO_COMPROBADO_XML:
                            var metaDatosGastosComproados = metaDatosExpediente.Where(w => w.Nombre == Modelos.Enumerados.ExpedientedigitalTipoMetaDato.GastoComprobadoFolio).ToList();

                            foreach (var metaDatoGastoComprobado in metaDatosGastosComproados) //MAS DE UN REGISTRO
                            {
                                List<ExpedienteDigitalMetaDato> metaDatosPadre = new List<ExpedienteDigitalMetaDato>();
                                metaDatosPadre.Add(metaDatoGastoComprobado);

                                var gastoComprobado = db.ExpedienteDigitalGastoComprobado.Where(w => w.Folio == metaDatoGastoComprobado.Valor).FirstOrDefault();

                                if (gastoComprobado != null)
                                {
                                    string origen =
                                        procesamientoPendiente.IdExpedienteDigitalTipoArchivo == (int)Modelos.Enumerados.ExpedienteDigitalTipoArchivo.GASTO_COMPROBADO_PDF ?
                                        gastoComprobado.RutaArchivoPDFOrigen : gastoComprobado.RutaArchivoXMLOrigen;
                                    string destino = RemplazaMetaDatosRutaArchivo(metaDatosPadre, destinoNomenclatura);
                                    string finalizado = RemplazaMetaDatosRutaArchivo(metaDatosPadre, archivoFinalizadoNomenclatura);

                                    AgregarProcesamientoArchivo(
                                        procesamientoPendiente.IdExpedienteDigital,
                                        procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                        origen,
                                        destino,
                                        archivoFinalizadoNomenclaturaOriginal,
                                        finalizado,
                                        true,
                                        db
                                        );
                                }
                            }
                            break;
                        default:
                            if (!origenNomenclaura.Contains("{") || !destinoNomenclatura.Contains("{")) //Se remplazaron correctamento los metadatos
                            {
                                AgregarProcesamientoArchivo(
                                    procesamientoPendiente.IdExpedienteDigital,
                                    procesamientoPendiente.IdExpedienteDigitalProcesamiento,
                                    origenNomenclaura,
                                    destinoNomenclatura,
                                    archivoFinalizadoNomenclaturaOriginal,
                                    archivoFinalizadoNomenclatura,
                                    true,
                                    db
                                    );
                            }
                            break;
                    }

                    db.SaveChanges();
                }
                #endregion
                #region ProcesamientoArchivosPendientes
                var procesamientoArchivosPendientes = db.ExpedienteDigitalProcesamientoArchivo.Where(w => w.Requerido == true && w.Procesado == false).ToList();

                foreach (var archivoPendiente in procesamientoArchivosPendientes)
                {
                    if (archivoPendiente.ArchivoRutaCompletaOrigen.Contains("*"))
                    {
                        string directorio = archivoPendiente.ArchivoRutaCompletaOrigen.Substring(0, archivoPendiente.ArchivoRutaCompletaOrigen.LastIndexOf(@"\"));

                        if (Directory.Exists(directorio))
                        {
                            string busqueda = archivoPendiente.ArchivoRutaCompletaOrigen.Substring(archivoPendiente.ArchivoRutaCompletaOrigen.LastIndexOf(@"\") + 1);

                            var archivosEncontrados = Directory.GetFiles(directorio, busqueda);

                            if (archivosEncontrados.Length > 0)
                            {
                                foreach (var archivoEncontrado in archivosEncontrados)
                                {
                                    ProcesaArchivo(archivoPendiente, archivoEncontrado, db);
                                }
                            }
                            else
                            {
                                EventoBitacoraProcesamientoArchivo(archivoPendiente.IdExpedienteDigitalProcesamientoArchivo, new Exception(archivoPendiente.ArchivoRutaCompletaOrigen), db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora.FALTA_ARCHIVO_ORIGEN);
                            }
                        }
                        else
                        {
                            EventoBitacoraProcesamientoArchivo(archivoPendiente.IdExpedienteDigitalProcesamientoArchivo, new Exception(directorio), db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora.RUTA_RAIZ_ORIGEN_NO_EXISTENTE);
                        }
                    }
                    else
                    {
                        ProcesaArchivo(archivoPendiente, null, db);
                    }

                    db.SaveChanges();
                }
                #endregion
                #region CopiaArchivosProcesadosAFinalizados
                var archivosFinalizadosPendientes = db.fnExpedienteDigitalFinalizadoPendiente().ToList();

                foreach (var archivoFinalizadoPendiente in archivosFinalizadosPendientes)
                {
                    var expedienteDigitalArchivo = db.ExpedienteDigitalArchivo.Where(w => w.IdExpedienteDigitalArchivo == archivoFinalizadoPendiente.IdExpedienteDigitalArchivo).SingleOrDefault();

                    if (expedienteDigitalArchivo == null)
                    {
                        throw new Exception("Existe un problema de integridad en la base de datos");
                    }

                    if (File.Exists(archivoFinalizadoPendiente.RutaCompletaOrigen))
                    {
                        //Crear directorio destino si no existe
                        try
                        {
                            Directory.CreateDirectory(archivoFinalizadoPendiente.RutaCompletaDestino.Substring(0, archivoFinalizadoPendiente.RutaCompletaDestino.LastIndexOf(@"\")));
                        }
                        catch (Exception ex)
                        {
                            EventoBitacora(expedienteDigitalArchivo.IdExpedienteDigital, ex, db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora.NO_ES_POSIBLE_CREAR_DIRECTORIO_DESTINO);
                        }

                        if (!File.Exists(archivoFinalizadoPendiente.RutaCompletaDestino))
                        {
                            File.Copy(archivoFinalizadoPendiente.RutaCompletaOrigen, archivoFinalizadoPendiente.RutaCompletaDestino);
                        }

                        string rutaRaiz = archivoFinalizadoPendiente.RutaCompletaDestino.Substring(0, archivoFinalizadoPendiente.RutaCompletaDestino.LastIndexOf(@"\") + 1);
                        string nombreArchivoCompleto = archivoFinalizadoPendiente.RutaCompletaDestino.Substring(archivoFinalizadoPendiente.RutaCompletaDestino.LastIndexOf(@"\") + 1);
                        string nombreArchivo = nombreArchivoCompleto.Substring(0, nombreArchivoCompleto.LastIndexOf("."));
                        string extensionArchivo = nombreArchivoCompleto.Substring(nombreArchivoCompleto.LastIndexOf(".") + 1);

                        expedienteDigitalArchivo.Finalizado = DateTime.Now;
                        expedienteDigitalArchivo.Ruta = rutaRaiz;
                        expedienteDigitalArchivo.Nombre = nombreArchivo;
                        expedienteDigitalArchivo.Extension = extensionArchivo;
                        expedienteDigitalArchivo.Visible = true;

                        db.SaveChanges();
                    }
                    else
                    {
                        EventoBitacoraProcesamientoArchivo(expedienteDigitalArchivo.IdExpedienteDigital, new Exception(archivoFinalizadoPendiente.RutaCompletaOrigen), db, Modelos.Enumerados.ExpedienteDigitalEventoBitacora.FALTA_ARCHIVO_ORIGEN);
                    }
                }
                #endregion

                db.Dispose();
                
            }
            catch (Exception ex)
            {
                Logs.EscribirLog(ex);
            }
        }
    }
}

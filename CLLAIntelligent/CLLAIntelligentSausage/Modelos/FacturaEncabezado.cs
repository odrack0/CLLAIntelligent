//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CLLAIntelligentSausage.Modelos
{
    using System;
    using System.Collections.Generic;
    
    public partial class FacturaEncabezado
    {
        public int IdFacturaEncabezado { get; set; }
        public int ClaveCuenta { get; set; }
        public string Serie { get; set; }
        public int FacturaNumero { get; set; }
        public System.DateTime FacturaFecha { get; set; }
        public string RFC { get; set; }
        public string RazonSocial { get; set; }
        public string DomicilioFiscal { get; set; }
        public System.DateTime FechaVencimiento { get; set; }
        public int ClaveFacturaStatus { get; set; }
        public Nullable<int> ClaveCuentaAlCancelar { get; set; }
        public Nullable<int> ClaveFacturarA { get; set; }
        public Nullable<int> ClaveCFDFolio { get; set; }
        public Nullable<int> ClaveCFDComprobanteTipo { get; set; }
        public Nullable<int> ClaveCFDLugarExpedicion { get; set; }
        public Nullable<int> ClaveCFDPagoForma { get; set; }
        public Nullable<int> ClaveCFDPagoCondicion { get; set; }
        public Nullable<int> ClaveCFDPagoMetodo { get; set; }
        public string ClaveSATComprobanteTipo { get; set; }
        public string CFDVersion { get; set; }
        public Nullable<System.DateTime> CFDFechaHora { get; set; }
        public string CFDAprobacionNumero { get; set; }
        public string CFDAprobacionAnio { get; set; }
        public string CFDComprobanteTipo { get; set; }
        public string CFDPagoForma { get; set; }
        public string CFDPagoCondicion { get; set; }
        public string CFDPagoMetodo { get; set; }
        public string CertificadoSerie { get; set; }
        public string CertificadoTexto { get; set; }
        public string Sello { get; set; }
        public string EmisorRFC { get; set; }
        public string EmisorRazonSocial { get; set; }
        public string EmisorCalle { get; set; }
        public string EmisorNumeroExterior { get; set; }
        public string EmisorNumeroInterior { get; set; }
        public string EmisorColonia { get; set; }
        public string EmisorLocalidad { get; set; }
        public string EmisorReferenciaDomicilio { get; set; }
        public string EmisorMunicipio { get; set; }
        public string EmisorEntidadFederativa { get; set; }
        public string EmisorNombrePais { get; set; }
        public string EmisorCodigoPostal { get; set; }
        public string ExpedicionCalle { get; set; }
        public string ExpedicionNumeroExterior { get; set; }
        public string ExpedicionNumeroInterior { get; set; }
        public string ExpedicionColonia { get; set; }
        public string ExpedicionLocalidad { get; set; }
        public string ExpedicionReferenciaDomicilio { get; set; }
        public string ExpedicionMunicipio { get; set; }
        public string ExpedicionEntidadFederativa { get; set; }
        public string ExpedicionNombrePais { get; set; }
        public string ExpedicionCodigoPostal { get; set; }
        public string ReceptorCalle { get; set; }
        public string ReceptorNumeroExterior { get; set; }
        public string ReceptorNumeroInterior { get; set; }
        public string ReceptorColonia { get; set; }
        public string ReceptorLocalidad { get; set; }
        public string ReceptorReferenciaDomicilio { get; set; }
        public string ReceptorMunicipio { get; set; }
        public string ReceptorEntidadFederativa { get; set; }
        public string ReceptorNombrePais { get; set; }
        public string ReceptorCodigoPostal { get; set; }
        public Nullable<decimal> CFDSubTotal { get; set; }
        public Nullable<decimal> CFDDescuentos { get; set; }
        public Nullable<decimal> CFDTotal { get; set; }
        public string CFDMotivoDescuentos { get; set; }
        public Nullable<decimal> CFDTasaIva { get; set; }
        public Nullable<decimal> CFDTasaRetencionIva { get; set; }
        public Nullable<decimal> CFDTasaRetencionISR { get; set; }
        public string EmisorCurp { get; set; }
        public string TFDVersion { get; set; }
        public string UUID { get; set; }
        public Nullable<System.DateTime> FechaTimbrado { get; set; }
        public string NoCertificadoSAT { get; set; }
        public string SelloSAT { get; set; }
        public string ClaveMonedaFacturacion { get; set; }
        public Nullable<int> IdFacturaOriginal { get; set; }
        public string EmisorRegimenFiscal { get; set; }
        public string MotivoDescuento { get; set; }
        public string Moneda { get; set; }
        public Nullable<decimal> TipoCambio { get; set; }
        public string LugarExpedicion { get; set; }
        public string NumCtaPago { get; set; }
        public string PACCertifico { get; set; }
        public Nullable<System.DateTime> FechaCancelacionSAT { get; set; }
        public string CFDPagoMetodoClaves { get; set; }
        public Nullable<int> ClaveCFDSATPagoForma { get; set; }
        public string ClaveSATPagoForma { get; set; }
        public Nullable<int> ClaveCFDSATPagoMetodo { get; set; }
        public string ClaveSATPagoMetodo { get; set; }
        public Nullable<int> ClaveCFDSATRegimenFiscal { get; set; }
        public string ClaveSATRegimenFiscal { get; set; }
        public Nullable<int> ClaveCFDSATUso { get; set; }
        public string ClaveSATUso { get; set; }
        public string ReceptorClavePais { get; set; }
        public string ConfirmacionPAC { get; set; }
        public string ReceptorNumRegIdTrib { get; set; }
        public string LeyendaTFD { get; set; }
        public Nullable<int> IdEnProcesoDePago { get; set; }
    }
}

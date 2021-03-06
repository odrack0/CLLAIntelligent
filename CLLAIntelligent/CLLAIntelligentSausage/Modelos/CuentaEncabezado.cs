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
    
    public partial class CuentaEncabezado
    {
        public int IdCuentaEncabezado { get; set; }
        public Nullable<int> ClaveCuenta { get; set; }
        public Nullable<int> Consecutivo { get; set; }
        public string Referencia { get; set; }
        public string Complementaria { get; set; }
        public Nullable<int> ClaveCuentaTipo { get; set; }
        public Nullable<int> ClaveCuentaClase { get; set; }
        public Nullable<int> ClaveOficina { get; set; }
        public Nullable<System.DateTime> CuentaFecha { get; set; }
        public Nullable<int> IdReferenciaOrigenDatos { get; set; }
        public Nullable<int> ClaveCliente { get; set; }
        public Nullable<int> ClaveFacturarA { get; set; }
        public Nullable<int> ClaveEmbarqueTipo { get; set; }
        public Nullable<int> ClaveOperacionTipo { get; set; }
        public Nullable<int> ClaveRegimen { get; set; }
        public Nullable<int> ClaveCuentaStatus { get; set; }
        public Nullable<int> ClaveResponsableCuenta { get; set; }
        public string ClaveAduana { get; set; }
        public string ClaveMonedaFacturacion { get; set; }
        public Nullable<decimal> TipoDeCambio { get; set; }
        public Nullable<int> ClaveTarifa { get; set; }
        public Nullable<int> ClaveProducto { get; set; }
        public Nullable<int> Bultos { get; set; }
        public Nullable<decimal> PesoKg { get; set; }
        public Nullable<System.DateTime> FechaModificacion { get; set; }
        public Nullable<int> ClaveOrigen { get; set; }
        public Nullable<int> ClaveDestino { get; set; }
        public Nullable<int> ClaveDestinatario { get; set; }
        public Nullable<int> ClaveEmitirFacturaA { get; set; }
        public Nullable<int> ClaveCFDRfc { get; set; }
        public string CFDVersion { get; set; }
        public Nullable<int> IdDetalleMaestra { get; set; }
        public Nullable<int> ClaveCuentaCFDOriginal { get; set; }
        public Nullable<int> PagoParcial { get; set; }
        public Nullable<int> ClaveVendedor { get; set; }
        public Nullable<int> ClaveSistemaOrigen { get; set; }
        public Nullable<int> ClaveDossier { get; set; }
        public Nullable<int> ClaveShipper { get; set; }
        public Nullable<int> ClaveCuentaOrigen { get; set; }
        public string RutaExpedienteDigital { get; set; }
    }
}

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
    
    public partial class ExpedienteDigitalArchivo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpedienteDigitalArchivo()
        {
            this.ExpedienteDigitalBitacoraExportacion = new HashSet<ExpedienteDigitalBitacoraExportacion>();
            this.ExpedienteDigitalBitacoraExportacionCliente = new HashSet<ExpedienteDigitalBitacoraExportacionCliente>();
        }
    
        public int IdExpedienteDigitalArchivo { get; set; }
        public int IdExpedienteDigital { get; set; }
        public int IdExpedienteDigitalProcesamientoArchivo { get; set; }
        public string NomenclaturaRutaCompletaFinalizado { get; set; }
        public string RutaCompletaFinalizado { get; set; }
        public Nullable<System.DateTime> Finalizado { get; set; }
        public string Ruta { get; set; }
        public string Nombre { get; set; }
        public string Extension { get; set; }
        public bool Visible { get; set; }
    
        public virtual ExpedienteDigitalProcesamientoArchivo ExpedienteDigitalProcesamientoArchivo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalBitacoraExportacion> ExpedienteDigitalBitacoraExportacion { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalBitacoraExportacionCliente> ExpedienteDigitalBitacoraExportacionCliente { get; set; }
        public virtual ExpedienteDigital ExpedienteDigital { get; set; }
    }
}

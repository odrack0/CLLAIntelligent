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
    
    public partial class ExpedienteDigitalProcesamientoArchivo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpedienteDigitalProcesamientoArchivo()
        {
            this.ExpedienteDigitalArchivo = new HashSet<ExpedienteDigitalArchivo>();
            this.ExpedienteDigitalMetaDato = new HashSet<ExpedienteDigitalMetaDato>();
            this.ExpedienteDigitalProcesamientoArchivoBitacora = new HashSet<ExpedienteDigitalProcesamientoArchivoBitacora>();
        }
    
        public int IdExpedienteDigitalProcesamientoArchivo { get; set; }
        public int IdExpedienteDigitalProcesamiento { get; set; }
        public string ArchivoRutaCompletaOrigen { get; set; }
        public string ArchivoRutaCompletaDestino { get; set; }
        public bool Requerido { get; set; }
        public bool Procesado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalArchivo> ExpedienteDigitalArchivo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalMetaDato> ExpedienteDigitalMetaDato { get; set; }
        public virtual ExpedienteDigitalProcesamiento ExpedienteDigitalProcesamiento { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalProcesamientoArchivoBitacora> ExpedienteDigitalProcesamientoArchivoBitacora { get; set; }
    }
}

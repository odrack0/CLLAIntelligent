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
    
    public partial class ExpedienteDigitalProcesamiento
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpedienteDigitalProcesamiento()
        {
            this.ExpedienteDigitalProcesamientoArchivo = new HashSet<ExpedienteDigitalProcesamientoArchivo>();
        }
    
        public int IdExpedienteDigitalProcesamiento { get; set; }
        public int IdExpedienteDigital { get; set; }
        public Nullable<int> IdExpedienteDigitalConfiguracionArchivo { get; set; }
        public System.DateTime HoraFecha { get; set; }
        public string OrigenNomenclatura { get; set; }
        public string DestinoNomenclatura { get; set; }
        public string RutaMoverPosProcesamiento { get; set; }
        public bool EliminarDespuesProcesamiento { get; set; }
    
        public virtual ExpedienteDigital ExpedienteDigital { get; set; }
        public virtual ExpedienteDigitalConfiguracionArchivo ExpedienteDigitalConfiguracionArchivo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalProcesamientoArchivo> ExpedienteDigitalProcesamientoArchivo { get; set; }
    }
}

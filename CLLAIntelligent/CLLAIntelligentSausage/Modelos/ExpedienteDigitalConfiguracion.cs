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
    
    public partial class ExpedienteDigitalConfiguracion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpedienteDigitalConfiguracion()
        {
            this.ExpedienteDigitalConfiguracionArchivo = new HashSet<ExpedienteDigitalConfiguracionArchivo>();
            this.ExpedienteDigitalConfiguracionCliente = new HashSet<ExpedienteDigitalConfiguracionCliente>();
        }
    
        public int IdExpedienteDigitalConfiguracion { get; set; }
        public int IdAgenciaSysExpert { get; set; }
        public string NomenclaturaRutaRaizProcesamiento { get; set; }
        public string NomenclaturaRutaRaizCompletado { get; set; }
        public bool ComprimirDespuesFinalizado { get; set; }
        public string NomenclaturaNombreComprimidoProcesamiento { get; set; }
        public string NomenclaturaNombreComprimidoFinalizado { get; set; }
        public bool EliminarDespuesFinalizado { get; set; }
        public bool Habilitado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalConfiguracionArchivo> ExpedienteDigitalConfiguracionArchivo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalConfiguracionCliente> ExpedienteDigitalConfiguracionCliente { get; set; }
    }
}

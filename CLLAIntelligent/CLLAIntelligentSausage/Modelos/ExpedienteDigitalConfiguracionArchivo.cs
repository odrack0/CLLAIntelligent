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
    
    public partial class ExpedienteDigitalConfiguracionArchivo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpedienteDigitalConfiguracionArchivo()
        {
            this.ExpedienteDigitalConfiguracionArchivoCliente = new HashSet<ExpedienteDigitalConfiguracionArchivoCliente>();
            this.ExpedienteDigitalProcesamiento = new HashSet<ExpedienteDigitalProcesamiento>();
        }
    
        public int IdExpedienteDigitalConfiguracionArchivo { get; set; }
        public int IdExpedienteDigitalConfiguracion { get; set; }
        public int IdExpedienteDigitalTipoArchivo { get; set; }
        public string NomenclauturaNombreProcesamiento { get; set; }
        public string NomenclauturaNombreFinalizado { get; set; }
        public bool Habilitado { get; set; }
    
        public virtual ExpedienteDigitalConfiguracion ExpedienteDigitalConfiguracion { get; set; }
        public virtual ExpedienteDigitalTipoArchivo ExpedienteDigitalTipoArchivo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalConfiguracionArchivoCliente> ExpedienteDigitalConfiguracionArchivoCliente { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalProcesamiento> ExpedienteDigitalProcesamiento { get; set; }
    }
}

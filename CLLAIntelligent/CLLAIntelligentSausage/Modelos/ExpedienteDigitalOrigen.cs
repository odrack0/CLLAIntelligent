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
    
    public partial class ExpedienteDigitalOrigen
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpedienteDigitalOrigen()
        {
            this.ExpedienteDigitalTipoArchivo = new HashSet<ExpedienteDigitalTipoArchivo>();
        }
    
        public int IdExpedienteDigitalOrigen { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string RutaRaiz { get; set; }
        public bool Habilitado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ExpedienteDigitalTipoArchivo> ExpedienteDigitalTipoArchivo { get; set; }
    }
}

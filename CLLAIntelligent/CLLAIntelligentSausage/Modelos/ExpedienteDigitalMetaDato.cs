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
    
    public partial class ExpedienteDigitalMetaDato
    {
        public int IdExpedienteDigitalMetaDato { get; set; }
        public int IdExpedienteDigital { get; set; }
        public Nullable<int> IdExpedienteDigitalProcesamientoArchivo { get; set; }
        public string Nombre { get; set; }
        public string Valor { get; set; }
        public Nullable<int> EsHijo { get; set; }
        public Nullable<int> Nivel { get; set; }
    
        public virtual ExpedienteDigital ExpedienteDigital { get; set; }
        public virtual ExpedienteDigitalProcesamientoArchivo ExpedienteDigitalProcesamientoArchivo { get; set; }
    }
}

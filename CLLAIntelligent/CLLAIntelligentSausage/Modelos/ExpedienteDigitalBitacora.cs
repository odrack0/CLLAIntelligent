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
    
    public partial class ExpedienteDigitalBitacora
    {
        public int IdExpedienteDigitalBitacora { get; set; }
        public int IdExpedienteDigital { get; set; }
        public int IdExpedienteDigitalEventoBitacora { get; set; }
        public System.DateTime FechaHora { get; set; }
        public string Observaciones { get; set; }
    
        public virtual ExpedienteDigital ExpedienteDigital { get; set; }
        public virtual ExpedienteDigitalEventoBitacora ExpedienteDigitalEventoBitacora { get; set; }
    }
}
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
    
    public partial class ExpedienteDigitalConfiguracionArchivoCliente
    {
        public int IdExpedienteDigitalConfiguracionArchivoCliente { get; set; }
        public int ClaveClienteSysExpert { get; set; }
        public int IdExpedienteDigitalConfiguracionArchivo { get; set; }
        public string NomenclauturaNombreFinalizado { get; set; }
        public bool Habilitado { get; set; }
    
        public virtual ExpedienteDigitalConfiguracionArchivo ExpedienteDigitalConfiguracionArchivo { get; set; }
    }
}
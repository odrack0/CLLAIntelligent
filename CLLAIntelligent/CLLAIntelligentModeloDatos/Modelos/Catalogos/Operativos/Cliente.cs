using CLLAIntelligentModeloDatos.Modelos.Catalogos.Sistema;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos
{
    public class Cliente
    {
        [Key]
        public int IdCliente { get; set; }
        [Required]
        [StringLength(13)]
        public string RFC { get; set; }
        [Required]
        [StringLength(250)]
        public string RazonSocial { get; set; }
        [Required]
        [StringLength(10)]
        public string CodigoPostal { get; set; }
        [Required]
        [StringLength(250)]
        public string Calle { get; set; }
        [Required]
        [StringLength(10)]
        public string NumeroExterior { get; set; }
        [StringLength(10)]
        public string NumeroInterior { get; set; }
        [StringLength(100)]
        public string Colonia { get; set; }
        [Required]
        [StringLength(200)]
        public string Ciudad { get; set; }
        [StringLength(200)]
        public string Localidad { get; set; }
        [Required]
        public int IdEntidadFederativa { get; set; }

        public virtual EntidadFederativa EntidadFederativa { get; set; }
    }
}

using CLLAIntelligentModeloDatos.Modelos.Seguridad;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos
{
    public class Sucursal
    {
        [Key]
        public int IdSucursal { get; set;}
        [Required]
        [StringLength(200)]
        public string Nombre { get; set; }
        [Required]
        [StringLength(500)]
        public string Direccion { get; set; }

        public virtual ICollection<UsuarioSucursal> UsuarioSucursales { get; set; }
    }
}

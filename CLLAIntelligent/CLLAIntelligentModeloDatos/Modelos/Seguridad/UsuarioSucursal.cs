using CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Seguridad
{
    public class UsuarioSucursal
    {
        [Key]
        public int IdUsuarioSucursal { get; set; }
        public int IdUsuario { get; set; }
        public int IdSucursal { get; set; }

        public virtual Usuario Usuario { get; set; }
        public virtual Sucursal Sucursal { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Seguridad
{
    public class UsuarioRol
    {
        [Key]
        public int IdUsuarioRol { get; set; }
        public int IdUsuario { get; set; }
        public int IdRol { get; set; }

        public virtual Usuario Usuario { get; set; }
        public virtual Rol Rol { get; set; }
    }
}

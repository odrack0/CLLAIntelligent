using CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Seguridad
{
    public class UsuarioCliente
    {
        [Key]
        public int IdUsuarioCliente { get; set; }
        public int IdUsuario { get; set; }
        public int IdCliente { get; set; }

        public virtual Usuario Usuario { get; set; }
        public virtual Cliente Cliente { get; set; }
    }
}

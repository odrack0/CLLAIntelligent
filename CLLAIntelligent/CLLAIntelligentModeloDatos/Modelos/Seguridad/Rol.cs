using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Seguridad
{
    public class Rol
    {
        [Key]
        public int IdRol { get; set; }
        [StringLength(50)]
        public string Nombre { get; set; }
        [StringLength(250)]
        public string Descripcion { get; set; }
        public bool Habilitado { get; set; }

        public virtual ICollection<UsuarioRol> UsuarioRoles { get; set; }
    }
}

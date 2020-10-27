using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Seguridad
{
    public class Usuario
    {
        [Key]
        public int IdUsuario { get; set; }
        [StringLength(250)]
        public string NombreCompleto { get; set; }
        [StringLength(100)]
        public string NombreUsuario { get; set; }
        [StringLength(250)]
        public string ContraseniaHash { get; set; }
        [StringLength(250)]
        public string Email { get; set; }
        public bool Habilitado { get; set; }

        public virtual ICollection<UsuarioRol> UsuarioRoles { get; set; }
        public virtual ICollection<UsuarioCliente> UsuarioClientes { get; set; }
        public virtual ICollection<UsuarioSucursal> UsuarioSucursales { get; set; }
    }
}

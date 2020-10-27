using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.ModelosVistas.Seguridad
{
    public class Usuario
    {
        //[Required]
        public int IdUsuario { get; set; }
        [Required]
        public string NombreCompleto { get; set; }
        [Required]
        [StringLength(100, ErrorMessage = "El número de caracteres de {0} debe ser al menos {2}.", MinimumLength = 6)]
        [Display(Name = "Nombre de usuario")]
        public string NombreUsuario { get; set; }
        [Required]
        [Display(Name = "Correo electrónico")]
        public string Email { get; set; }
        //public List<int> roles { get; set; }
        //public List<int> clientes { get; set; }
        //public List<int> sucursales { get; set; }

        //public Usuario()
        //{
        //    roles = new List<int>();
        //    clientes = new List<int>();
        //    sucursales = new List<int>();
        //}
    }
}

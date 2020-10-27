using CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.Catalogos.Sistema
{
    public class EntidadFederativa
    {
        [Key]
        public int IdEntidadFederativa { get; set; }
        [StringLength(250)]
        [Required]
        public string Nombre { get; set; }
        [StringLength(3)]
        public string SATClaveEstado { get; set; }

        public virtual ICollection<Cliente> ClienteEndidadesFederativas { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.DataWarahouse
{
    public class DataWarehousePedimentoDesaduanizado
    {
        [Key]
        public int DataWarehousePedimentoDesaduanuzadoId { get; set; }
        [Required]
        public DateTime OperacionFecha { get; set; }
        [Required]
        public int FechaAnio { get; set; }
        [Required]
        public int FechaMes { get; set; }
        [Required]
        public int FechaDia { get; set; }
        public int? IdReferenciaSysExpert { get; set; }        
    }
}

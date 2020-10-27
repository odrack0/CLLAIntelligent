using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentModeloDatos.Modelos.DataWarahouse
{
    public class DataWarehouseRemesaDesaduanizada
    {
        [Key]
        public int DataWarehouseRemesaDesaduanizadaId { get; set; }
        [Required]
        public DateTime OperacionFecha { get; set; }
        [Required]
        public int OperacionAnio { get; set; }
        [Required]
        public int OperacionMes { get; set; }
        [Required]
        public int OperacionDia { get; set; }
        public int? IdReferenciaSysExpert { get; set; }
        public int? IdRemesaSysExpert { get; set; }
    }
}

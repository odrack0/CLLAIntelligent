using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CLLAIntelligentSausage.Modelos.Enumerados
{
    public enum ExpedienteDigitalEventoBitacora
    {
        NUEVO_EXPEDIENTE_PEDIMENTO = 1,
        EXPEDIENTE_COMPLETADO = 2,
        FALTA_ARCHIVO_ORIGEN = 3,
        COLISION_EN_ARCHIVO_ORIGEN = 4,
        YA_EXISTE_ARCHIVO_EN_DESTINO = 5,
        ARCHIVO_COPIADO_A_DESTINO_CORRECTAMENTE = 6,
        RUTA_RAIZ_ORIGEN_NO_EXISTENTE = 7,
        NO_ES_POSIBLE_CREAR_DIRECTORIO_DESTINO = 8,
        NO_ES_POSIBLE_ELIMINAR_ARCHIVO_EN_ORIGEN = 9,
        NO_ES_POSIBLE_CREAR_DIRECTORIO_PROCESADO_ORIGEN = 10,
        NO_ES_POSIBLE_MOVER_ARCHIVO_A_DIRECTORIO_PROCESADO_EN_ORIGEN = 11
    }
}

namespace CLLAIntelligentAccesoDatos.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FuncionesBaseSeguridad : DbMigration
    {
        public override void Up()
        {
            string scriptSQL = typeof(DatosTablaEntidadFederativa).Namespace + ".202010071209421_FuncionesBaseSeguridadUp.sql";
            this.SqlResource(scriptSQL);
        }
        
        public override void Down()
        {
            string scriptSQL = typeof(DatosTablaEntidadFederativa).Namespace + ".202010071209421_FuncionesBaseSeguridadDown.sql";
            this.SqlResource(scriptSQL);
        }
    }
}

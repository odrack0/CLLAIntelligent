namespace CLLAIntelligentAccesoDatos.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DatosTablaEntidadFederativa : DbMigration
    {
        public override void Up()
        {
            string scriptSQL = typeof(DatosTablaEntidadFederativa).Namespace + ".202010070232084_DatosTablaEntidadFederativaUp.sql";
            this.SqlResource(scriptSQL);
        }
        
        public override void Down()
        {
            string scriptSQL = typeof(DatosTablaEntidadFederativa).Namespace + ".202010070232084_DatosTablaEntidadFederativaDown.sql";
            this.SqlResource(scriptSQL);
        }
    }
}

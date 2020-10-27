namespace CLLAIntelligentAccesoDatos.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DatosBaseSeguridad : DbMigration
    {
        public override void Up()
        {
            string scriptSQL = typeof(DatosBaseSeguridad).Namespace + ".202010071256089_DatosBaseSeguridadUp.sql";
            this.SqlResource(scriptSQL);
        }
        
        public override void Down()
        {
            string scriptSQL = typeof(DatosBaseSeguridad).Namespace + ".202010071256089_DatosBaseSeguridadDown.sql";
            this.SqlResource(scriptSQL);
        }
    }
}

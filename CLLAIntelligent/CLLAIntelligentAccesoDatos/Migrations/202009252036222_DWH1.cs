namespace CLLAIntelligentAccesoDatos.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DWH1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.DataWarehousePedimentoDesaduanizado",
                c => new
                    {
                        DataWarehousePedimentoDesaduanuzadoId = c.Int(nullable: false, identity: true),
                        OperacionFecha = c.DateTime(nullable: false),
                        FechaAnio = c.Int(nullable: false),
                        FechaMes = c.Int(nullable: false),
                        FechaDia = c.Int(nullable: false),
                        IdReferenciaSysExpert = c.Int(),
                    })
                .PrimaryKey(t => t.DataWarehousePedimentoDesaduanuzadoId);
            
            CreateTable(
                "dbo.DataWarehouseRemesaDesaduanizada",
                c => new
                    {
                        DataWarehouseRemesaDesaduanizadaId = c.Int(nullable: false, identity: true),
                        OperacionFecha = c.DateTime(nullable: false),
                        OperacionAnio = c.Int(nullable: false),
                        OperacionMes = c.Int(nullable: false),
                        OperacionDia = c.Int(nullable: false),
                        IdReferenciaSysExpert = c.Int(),
                        IdRemesaSysExpert = c.Int(),
                    })
                .PrimaryKey(t => t.DataWarehouseRemesaDesaduanizadaId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.DataWarehouseRemesaDesaduanizada");
            DropTable("dbo.DataWarehousePedimentoDesaduanizado");
        }
    }
}

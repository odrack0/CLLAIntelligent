namespace CLLAIntelligentAccesoDatos.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class TablasBaseSeguridad : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Rol",
                c => new
                    {
                        IdRol = c.Int(nullable: false, identity: true),
                        Nombre = c.String(maxLength: 50),
                        Descripcion = c.String(maxLength: 250),
                        Habilitado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.IdRol);
            
            CreateTable(
                "dbo.UsuarioRol",
                c => new
                    {
                        IdUsuarioRol = c.Int(nullable: false, identity: true),
                        IdUsuario = c.Int(nullable: false),
                        IdRol = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdUsuarioRol)
                .ForeignKey("dbo.Rol", t => t.IdRol)
                .ForeignKey("dbo.Usuario", t => t.IdUsuario)
                .Index(t => t.IdUsuario)
                .Index(t => t.IdRol);
            
            CreateTable(
                "dbo.Usuario",
                c => new
                    {
                        IdUsuario = c.Int(nullable: false, identity: true),
                        NombreCompleto = c.String(maxLength: 250),
                        NombreUsuario = c.String(maxLength: 100),
                        ContraseniaHash = c.String(maxLength: 250),
                        Email = c.String(maxLength: 250),
                        Habilitado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.IdUsuario);
            
            CreateTable(
                "dbo.UsuarioCliente",
                c => new
                    {
                        IdUsuarioCliente = c.Int(nullable: false, identity: true),
                        IdUsuario = c.Int(nullable: false),
                        IdCliente = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdUsuarioCliente)
                .ForeignKey("dbo.Cliente", t => t.IdCliente)
                .ForeignKey("dbo.Usuario", t => t.IdUsuario)
                .Index(t => t.IdUsuario)
                .Index(t => t.IdCliente);
            
            CreateTable(
                "dbo.Cliente",
                c => new
                    {
                        IdCliente = c.Int(nullable: false, identity: true),
                        RFC = c.String(nullable: false, maxLength: 13),
                        RazonSocial = c.String(nullable: false, maxLength: 250),
                        CodigoPostal = c.String(nullable: false, maxLength: 10),
                        Calle = c.String(nullable: false, maxLength: 250),
                        NumeroExterior = c.String(nullable: false, maxLength: 10),
                        NumeroInterior = c.String(maxLength: 10),
                        Colonia = c.String(maxLength: 100),
                        Ciudad = c.String(nullable: false, maxLength: 200),
                        Localidad = c.String(maxLength: 200),
                        IdEntidadFederativa = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdCliente)
                .ForeignKey("dbo.EntidadFederativa", t => t.IdEntidadFederativa)
                .Index(t => t.IdEntidadFederativa);
            
            CreateTable(
                "dbo.EntidadFederativa",
                c => new
                    {
                        IdEntidadFederativa = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 250),
                        SATClaveEstado = c.String(maxLength: 3),
                    })
                .PrimaryKey(t => t.IdEntidadFederativa);
            
            CreateTable(
                "dbo.UsuarioSucursal",
                c => new
                    {
                        IdUsuarioSucursal = c.Int(nullable: false, identity: true),
                        IdUsuario = c.Int(nullable: false),
                        IdSucursal = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdUsuarioSucursal)
                .ForeignKey("dbo.Sucursal", t => t.IdSucursal)
                .ForeignKey("dbo.Usuario", t => t.IdUsuario)
                .Index(t => t.IdUsuario)
                .Index(t => t.IdSucursal);
            
            CreateTable(
                "dbo.Sucursal",
                c => new
                    {
                        IdSucursal = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 200),
                        Direccion = c.String(nullable: false, maxLength: 500),
                    })
                .PrimaryKey(t => t.IdSucursal);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.UsuarioSucursal", "IdUsuario", "dbo.Usuario");
            DropForeignKey("dbo.UsuarioSucursal", "IdSucursal", "dbo.Sucursal");
            DropForeignKey("dbo.UsuarioRol", "IdUsuario", "dbo.Usuario");
            DropForeignKey("dbo.UsuarioCliente", "IdUsuario", "dbo.Usuario");
            DropForeignKey("dbo.UsuarioCliente", "IdCliente", "dbo.Cliente");
            DropForeignKey("dbo.Cliente", "IdEntidadFederativa", "dbo.EntidadFederativa");
            DropForeignKey("dbo.UsuarioRol", "IdRol", "dbo.Rol");
            DropIndex("dbo.UsuarioSucursal", new[] { "IdSucursal" });
            DropIndex("dbo.UsuarioSucursal", new[] { "IdUsuario" });
            DropIndex("dbo.Cliente", new[] { "IdEntidadFederativa" });
            DropIndex("dbo.UsuarioCliente", new[] { "IdCliente" });
            DropIndex("dbo.UsuarioCliente", new[] { "IdUsuario" });
            DropIndex("dbo.UsuarioRol", new[] { "IdRol" });
            DropIndex("dbo.UsuarioRol", new[] { "IdUsuario" });
            DropTable("dbo.Sucursal");
            DropTable("dbo.UsuarioSucursal");
            DropTable("dbo.EntidadFederativa");
            DropTable("dbo.Cliente");
            DropTable("dbo.UsuarioCliente");
            DropTable("dbo.Usuario");
            DropTable("dbo.UsuarioRol");
            DropTable("dbo.Rol");
        }
    }
}

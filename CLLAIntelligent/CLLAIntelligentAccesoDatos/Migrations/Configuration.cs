namespace CLLAIntelligentAccesoDatos.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<CLLAIntelligentAccesoDatos.CLLAIntelligentContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(CLLAIntelligentAccesoDatos.CLLAIntelligentContext context)
        {
            //METODO SEMILLA CUANDO SE CREA LA BASE DE DATOS
            var usuarioAdministrador = context.Usuario.Where(w => w.IdUsuario == 1 && w.NombreUsuario == "administrador").SingleOrDefault();

            if (usuarioAdministrador != null)
            {
                if (usuarioAdministrador.ContraseniaHash == "hash")
                {
                    string contraseniaEncriptada = CLLAIntelligentLibreria.Criptografia.StringCipher.Encrypt("administrador123", Keys.EncrypPassword);

                    usuarioAdministrador.ContraseniaHash = contraseniaEncriptada;
                    context.SaveChanges();
                }
            }

            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.
        }
    }
}

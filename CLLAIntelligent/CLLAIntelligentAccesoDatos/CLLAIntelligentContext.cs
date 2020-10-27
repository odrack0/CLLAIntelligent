namespace CLLAIntelligentAccesoDatos
{
    using CodeFirstStoreFunctions;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Core.Objects;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.ModelConfiguration.Conventions;
    using System.Linq;

    public class CLLAIntelligentContext : DbContext
    {
        public CLLAIntelligentContext()
            : base("name=CLLAIntelligentContext")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();  //Para desactivar la pluralizacion de las tablas
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>(); //Desactivar la eliminacion en cascada
            modelBuilder.Conventions.Add(new FunctionsConvention<CLLAIntelligentContext>("dbo")); //Funciones tipo tabla

            base.OnModelCreating(modelBuilder);
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
        #region Seguridad
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Seguridad.Usuario> Usuario { get; set; }
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Seguridad.Rol> Rol { get; set; }
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Seguridad.UsuarioRol> UsuarioRol { get; set; }
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Seguridad.UsuarioCliente> UsuarioCliente { get; set; }
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Seguridad.UsuarioSucursal> UsuarioSucursal { get; set; }
        #endregion
        #region CatalogosOperativos
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos.Cliente> Cliente { get; set; }
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Catalogos.Operativos.Sucursal> Sucursal { get; set; }
        #endregion
        #region CatalogosSistema
        public DbSet<CLLAIntelligentModeloDatos.Modelos.Catalogos.Sistema.EntidadFederativa> EntidadFederativa { get; set; }
        #endregion
        #region DataWarehouse
        //public virtual DbSet<CLLAIntelligentModeloDatos.DataWarahouse.DataWarehousePedimentoDesaduanizado> DataWarehousePedimentoDesaduanizado { get; set; }
        //public virtual DbSet<CLLAIntelligentModeloDatos.DataWarahouse.DataWarehouseRemesaDesaduanizada> DataWarehouseRemesaDespachada { get; set; }
        #endregion

        #region FuncionesBaseDatos
        #region FuncionesTipoTabla
        [DbFunction("CLLAIntelligentContext", "fnUsuarios")]
        public virtual IQueryable<CLLAIntelligentModeloDatos.ModelosVistas.Seguridad.Usuario> fnUsuarios(Nullable<int> idUsuario, string criterioBusqueda)
        {
            var idUsuarioParameter = idUsuario.HasValue ?
                new ObjectParameter("IdUsuario", idUsuario) :
                new ObjectParameter("IdUsuario", typeof(int));

            var criterioBusquedaParameter = criterioBusqueda != null ?
                new ObjectParameter("CriterioBusqueda", criterioBusqueda) :
                new ObjectParameter("CriterioBusqueda", typeof(string));

            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<CLLAIntelligentModeloDatos.ModelosVistas.Seguridad.Usuario>("[CLLAIntelligentContext].[fnUsuarios](@IdUsuario, @CriterioBusqueda)", idUsuarioParameter, criterioBusquedaParameter);
        }

        #endregion
        #endregion

    }
}
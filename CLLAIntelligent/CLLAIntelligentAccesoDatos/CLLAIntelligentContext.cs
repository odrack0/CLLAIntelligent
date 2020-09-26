namespace CLLAIntelligentAccesoDatos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;
    using System.Linq;

    public class CLLAIntelligentContext : DbContext
    {
        // Your context has been configured to use a 'Model1' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'CLLAIntelligentAccesoDatos.Model1' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'Model1' 
        // connection string in the application configuration file.
        public CLLAIntelligentContext()
            : base("name=CLLAIntelligentContext")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();  //Para desactivar la pluralizacion de las tablas
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>(); //Desactivar la eliminacion en cascada

            base.OnModelCreating(modelBuilder);
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
        #region DataWarehouse
        public virtual DbSet<CLLAIntelligentModeloDatos.DataWarahouse.DataWarehousePedimentoDesaduanizado> DataWarehousePedimentoDesaduanizado { get; set; }
        public virtual DbSet<CLLAIntelligentModeloDatos.DataWarahouse.DataWarehouseRemesaDesaduanizada> DataWarehouseRemesaDespachada { get; set; }
        #endregion
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SistemZZ_DB
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SistemZZ_ERModelContainer : DbContext
    {
        public SistemZZ_ERModelContainer()
            : base("name=SistemZZ_ERModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<SistemZdravstveneZastite> SistemZdravstveneZastite { get; set; }
        public virtual DbSet<ZdravstvenaUstanova> ZdravstvenaUstanova { get; set; }
        public virtual DbSet<AutonomnaPokrajina> AutonomnaPokrajina { get; set; }
        public virtual DbSet<DomZdravlja> DomZdravlja { get; set; }
        public virtual DbSet<Prevoz> Prevoz { get; set; }
        public virtual DbSet<UstanovaAP> UstanovaAP { get; set; }
        public virtual DbSet<ZdravstenaZastita> ZdravstenaZastita { get; set; }
        public virtual DbSet<ZdravstveniRadnik> ZdravstveniRadnik { get; set; }
    }
}

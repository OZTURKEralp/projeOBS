using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace OkulOdevi
{
    public partial class EfDbContext : DbContext
    {
        public EfDbContext()
            : base("name=OkulOdevi")
        {
        }

        public virtual DbSet<Departmantlar> Departmantlars { get; set; }
        public virtual DbSet<Kisiler> Kisilers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Departmantlar>()
                .HasMany(e => e.Kisilers)
                .WithOptional(e => e.Departmantlar)
                .HasForeignKey(e => e.departmanId);
        }
    }
}

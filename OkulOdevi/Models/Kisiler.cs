namespace OkulOdevi
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kisiler")]
    public partial class Kisiler
    {
        public int id { get; set; }

        public int? departmanId { get; set; }

        [StringLength(50)]
        public string adiSoyadi { get; set; }

        [StringLength(50)]
        public string telefon { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [StringLength(50)]
        public string sifre { get; set; }

        public virtual Departmantlar Departmantlar { get; set; }
    }
}

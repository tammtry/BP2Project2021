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
    using System.Collections.Generic;
    
    public partial class SistemZdravstveneZastite
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SistemZdravstveneZastite()
        {
            this.ZdravstvenaUstanovas = new HashSet<ZdravstvenaUstanova>();
        }
    
        public int ID_SZZ { get; set; }
        public string NazivSZZ { get; set; }
        public string DrzavaSZZ { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ZdravstvenaUstanova> ZdravstvenaUstanovas { get; set; }
    }
}

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
    
    public partial class UstanovaAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UstanovaAP()
        {
            this.DomZdravlja = new HashSet<DomZdravlja>();
        }
    
        public int ZdravstvenaUstanovaID_ZU { get; set; }
        public int AutonomnaPokrajinaID_AP { get; set; }
    
        public virtual ZdravstvenaUstanova ZdravstvenaUstanova { get; set; }
        public virtual AutonomnaPokrajina AutonomnaPokrajina { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DomZdravlja> DomZdravlja { get; set; }
    }
}
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyCungCapVideo.Model
{
    using QuanLyCungCapVideo.ViewModel;
    using System;
    using System.Collections.Generic;
    
    public partial class THELOAI : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public THELOAI()
        {
            this.VIDEOs = new HashSet<VIDEO>();
        }

        public int IDTL { get; set; }

        private string _TenTL;
        public string TenTL { get => _TenTL; set { _TenTL = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VIDEO> VIDEOs { get; set; }
    }
}

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
    using System;
    using System.Collections.Generic;
    
    public partial class VIDEO
    {
        public int IDVideo { get; set; }
        public string TenVideo { get; set; }
        public Nullable<int> IDTL { get; set; }
        public string QuocGia { get; set; }
        public string DaoDien { get; set; }
        public int LuotXem { get; set; }
        public string LinkVideo { get; set; }
        public string LinkPoster { get; set; }
        public string TomTat { get; set; }
    
        public virtual THELOAI THELOAI { get; set; }
    }
}
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BlogSM.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Comment
    {
        public int ID_comment { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Comment1 { get; set; }
        public Nullable<int> ID_blog { get; set; }
    
        public virtual Blog Blog { get; set; }
    }
}

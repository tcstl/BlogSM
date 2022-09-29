using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM
{
    public partial class Default : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
         
                var b = db.Blog.ToList();
                Repeater1.DataSource = b;
                Repeater1.DataBind();

                var b2 = db.Category.ToList();
                Repeater2.DataSource = b2;
                Repeater2.DataBind();

                var b3 = db.Type.Take(5).ToList();
                Repeater3.DataSource = b3;
                Repeater3.DataBind();

           
        }
    }
}
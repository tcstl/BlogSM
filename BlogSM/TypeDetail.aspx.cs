using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM
{
    public partial class TypeDetail : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID_type"]);
            var blog = db.Blog.Where(x => x.ID_type == id).ToList();
            Repeater1.DataSource = blog;
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
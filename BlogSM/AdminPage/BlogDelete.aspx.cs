using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;
namespace BlogSM.AdminPage
{
    public partial class BlogDelete : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID_blog"]);
            var blog = db.Blog.Find(x);
            db.Blog.Remove(blog);
            db.SaveChanges();
            Response.Redirect("Blogs.Aspx");
        }
    }
}
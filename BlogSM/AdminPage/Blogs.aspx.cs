using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM.AdminPage
{
    public partial class Blogs : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }
            else
            {
                Response.Write("Добре дошли: " + Session["Email"].ToString());
            }
            var blogs = (from x in db.Blog
                            select new
                            {
                                x.ID_blog,
                                x.Title,
                                x.Date,
                                x.Type.Type1,
                                x.Category.category1
                            }).ToList();
            Repeater1.DataSource = db.Blog.ToList();
            Repeater1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM
{
    public partial class Detail : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID_blog"]);
            var blog = db.Blog.Where(x => x.ID_blog == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var yorumlar = db.Comment.Where(x => x.ID_blog == id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID_blog"]);
            Comment t = new Comment();
            t.FirstName = TextBox4.Text;
            t.LastName = TextBox1.Text;
            t.Email = TextBox2.Text;
            t.Comment1 = TextBox3.Text;
            t.ID_blog = id;
            db.Comment.Add(t);
            db.SaveChanges();
            Response.Redirect("Detail.Aspx?ID_blog=" + id);
        }
    }
}
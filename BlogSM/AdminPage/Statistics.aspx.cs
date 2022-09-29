using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM.AdminPage
{
    public partial class Statistics : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.Blog.Count().ToString();
            Label2.Text = db.Comment.Count().ToString();

            Label3.Text = db.Blog.Where(x => x.Type.Type1 == "Аниме").Count().ToString();
            Label4.Text = db.Blog.Where(x => x.Type.Type1 == "Сериал").Count().ToString();
            Label5.Text = db.Blog.Where(x => x.Type.Type1 == "Филм").Count().ToString();

            Label6.Text = db.Blog.Where(y => y.ID_blog == (db.Comment.GroupBy(x => x.ID_blog).OrderByDescending(x => x.Count()).Select(z => z.Key).FirstOrDefault())).Select(k => k.Title).FirstOrDefault();
        }
    }
}
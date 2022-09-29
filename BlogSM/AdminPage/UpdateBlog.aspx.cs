using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM.AdminPage
{
    public partial class UpdateBlog : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["ID_blog"]);
            if (Page.IsPostBack == false)
            {
                var type = (from x in db.Type
                            select new
                            {
                                x.Type1,
                                x.ID_type
                            }).ToList();
                DropDownList1.DataSource = type;
                DropDownList1.DataBind();

                var category = (from x in db.Category
                                select new
                                {
                                    x.category1,
                                    x.ID_cetegory
                                }).ToList();
                DropDownList2.DataSource = category;
                DropDownList2.DataBind();

                var index = db.Blog.Find(y);
                TextBox1.Text = index.Title;
                TextBox2.Text = index.Date.ToString();
                TextBox3.Text = index.Photo;
                TextBox4.Text = index.Article;
                DropDownList1.SelectedValue = index.Type.ToString();
                DropDownList2.SelectedValue = index.Category.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["ID_blog"]);
            var t = db.Blog.Find(y);
            t.Title = TextBox1.Text;
            t.Photo = TextBox3.Text;
            t.Article = TextBox4.Text;
            t.Date = DateTime.Parse(TextBox2.Text);
            t.ID_type = byte.Parse(DropDownList1.SelectedValue);
            t.ID_category = byte.Parse(DropDownList2.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Blogs.Aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM.AdminPage
{
    public partial class AddBlog : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Blog t = new Blog();
            t.Title = TextBox1.Text;
            t.Photo = TextBox3.Text;
            t.Article = TextBox4.Text;
            t.Date = DateTime.Parse(TextBox2.Text);
            t.ID_type = int.Parse(DropDownList1.SelectedValue);
            t.ID_category = int.Parse(DropDownList2.SelectedValue);
            db.Blog.Add(t);
            db.SaveChanges();
            Response.Redirect("Blogs.Aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM.AdminPage
{
    public partial class Comments : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var comments = (from x in db.Comment
                            select new
                            {
                                x.ID_comment,
                                x.FirstName,
                                x.LastName,
                                x.Blog.Title,
                                x.Comment1
                            }).ToList();
            Repeater1.DataSource = db.Comment.ToList();
            Repeater1.DataBind();
        }
    }
}
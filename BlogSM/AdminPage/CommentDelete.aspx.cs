using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM.AdminPage
{
    public partial class CommentDelete : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID_comment"]);
            var index = db.Comment.Find(x);
            db.Comment.Remove(index);
            db.SaveChanges();
            Response.Redirect("Comments.Aspx");
        }
    }
}
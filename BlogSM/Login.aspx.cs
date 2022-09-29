using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM
{
    public partial class Login : System.Web.UI.Page
    {
        BlogMSEntities db = new BlogMSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var log = from x in db.Admin
                        where
                                x.Email == TextBox1.Text && x.Password == TextBox2.Text
                        select x;
            if (log.Any())
            {
                Session.Add("Email", TextBox1.Text);
                Response.Redirect("/AdminPage/Blogs.Aspx");
            }
            else
            {
                Response.Write("Сгрешен имейл или парола. Моля опитайте пак.");
            }

        }
    }
}
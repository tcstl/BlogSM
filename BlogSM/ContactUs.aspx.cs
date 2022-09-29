using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogSM.Entity;

namespace BlogSM
{
    public partial class ContactUs : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        BlogMSEntities db = new BlogMSEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            Contact t = new Contact();
            t.FirstName = TextBox6.Text;
            t.LastName = TextBox1.Text;
            t.Title = TextBox4.Text;
            t.Email = TextBox2.Text;
            t.Phone = TextBox3.Text;
            t.ContactUs = TextBox5.Text;
            db.Contact.Add(t);
            db.SaveChanges();
        }

      
    }
}
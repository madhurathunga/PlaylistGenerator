using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Playlistgenerator
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_preferences.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mood_based.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("genre_based.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("type_based.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}
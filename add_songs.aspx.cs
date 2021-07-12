using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Playlistgenerator
{
    public partial class add_songs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|playlistgenerator.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }


        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into songs values('" + name.Text + "','" + movie.Text + "','" + mood.Text + "','" + genre.Text + "','" + actor.Text + "','" + director.Text + "','"+ lyricist.Text +"','"+ singer.Text +"','"+ type.Text +"','" +link.Text +"')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Song added successfully:)');</script>");
            Response.Redirect("allsongs.aspx");

        }
    }
}
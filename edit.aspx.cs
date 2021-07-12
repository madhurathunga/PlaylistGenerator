using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Playlistgenerator
{
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|playlistgenerator.mdf;Integrated Security=True");
        int id;
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
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            if (IsPostBack) return;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from songs where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                name.Text = dr["name"].ToString();
                movie.Text = dr["movie"].ToString();
                mood.Text = dr["mood"].ToString();
                genre.Text = dr["genre"].ToString();
                actor.Text = dr["actor"].ToString();
                director.Text = dr["director"].ToString();
                lyricist.Text = dr["lyricist"].ToString();
                singer.Text = dr["singer"].ToString();
                type.Text = dr["type"].ToString();
                link.Text = dr["link"].ToString();
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update songs set name='" + name.Text + "',movie='" + movie.Text + "',mood='" + mood.Text + "',genre='" + genre.Text + "',actor='" + actor.Text + "',director='" + director.Text + "',lyricist='" + lyricist.Text + "',singer='" + singer.Text + "',type='" + type.Text + "',link='" + link.Text +  "' where id=" + id + "";
            cmd.ExecuteNonQuery();
            Response.Redirect("allsongs.aspx");
        }
    }
}
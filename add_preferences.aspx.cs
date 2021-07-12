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
    public partial class add_preferences : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|playlistgenerator.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from songs";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if(String.Equals(mood.Text,"Current mood"))
            {
                if (String.Equals(genre.Text,"Genre"))
                {
                    cmd.CommandText = "select * from songs where type='" + type.Text + "'";
                }
                else if(String.Equals(type.Text,"Language"))
                {
                    cmd.CommandText = "select * from songs where genre='" + genre.Text + "'";
                }
                else
                {
                    cmd.CommandText = "select * from songs where genre='" + genre.Text + "' and type='" + type.Text + "'";
                }
            }
            else if(String.Equals(genre.Text,"Genre"))
            {
                if (String.Equals(type.Text,"Language"))
                {
                    cmd.CommandText = "select * from songs where mood='" + mood.Text + "'";
                }
                else
                {
                    cmd.CommandText = "select * from songs where mood='" + mood.Text + "' and type='" + type.Text + "'";
                }
            }
            else if (String.Equals(type.Text,"Language"))
            {
                cmd.CommandText = "select * from songs where mood='" + mood.Text + "' and genre='" + genre.Text + "'";
            }
            else
            {
                cmd.CommandText = "select * from songs where mood='" + mood.Text + "' and genre='" + genre.Text + "' and type='" + type.Text + "'";
            }
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();
        }
    }
}
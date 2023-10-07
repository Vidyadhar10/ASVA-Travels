using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Log_In_Page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("  select * from User_Data where  contact = @con and password = @pass  ", con);

        cmd.Parameters.AddWithValue("@con", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            Session["log"] = dt.Rows[0][0].ToString();
            Response.Redirect("Home.aspx");
        }
        else
        {
            Label1.Text = "Incoreect Number Or Password";
        }
    }
}
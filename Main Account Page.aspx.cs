using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Main_Account_Page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] == null)
        {
            Response.Redirect("Log In Page.aspx");
        }
        else
        {
            string unm = Session["log"].ToString();
            SqlCommand cmd = new SqlCommand("select * from User_Data where name=@nm", con);
            cmd.Parameters.AddWithValue("@nm", unm);

            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["name"].ToString();
                Label2.Text = dr["contact"].ToString();
            }

            con.Close();

        }
        

    }
    
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        
        Session["log"]= null;
        
        
        Response.Redirect("Log In Page.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
          Response.Redirect("MyBooking.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
         Response.Redirect("Privacy Policy.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
         Response.Redirect("Help Page.aspx");
    }
}
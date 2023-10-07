using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //int[] seats = (int[])Session["tempbooking"];
        //String seatbooked = "";
        //int i = 0;
        //for (i = 0; i < 16; i++)
        //{
        //    if (seats[i] == 1)
        //    {
        //        seatbooked = seatbooked + " " + (i + 1);
        //    }
        //}

        Label1.Text = Session["TotPrc"].ToString();
        Label2.Text = Session["SelectedBus"].ToString();
        lblNm.Text = Session["log"].ToString();
        GetUsrData();

        lblSeats.Text = Session["cnt"].ToString();
    }

    private void GetUsrData()
    {
        string Name=Session["log"].ToString();
        SqlCommand cmd = new SqlCommand("Select * from User_Data where name=@nm", con);
        cmd.Parameters.AddWithValue("@nm", Name);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            
            lblMoNo.Text = dr["contact"].ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlCommand cmd = new SqlCommand("insert into Details (Email,Mobile,Name) values (@email,@mobile,@name)",con);

        //cmd.Parameters.AddWithValue("@email", Label1.Text);
        //cmd.Parameters.AddWithValue("@mobile", Label2.Text);
        //cmd.Parameters.AddWithValue("@name", Label3.Text);

        
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        Response.Redirect("Cnfmpay.aspx");
    }
}
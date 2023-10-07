using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Cnfmpay : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            UserInfo();
            GetBusDetails();
        }
    }

    private void GetBusDetails()
    {
        string busnm = Session["Busname"].ToString();
        lblBusName.Text = busnm;
        lblTotalPrc.Text = Session["TotPrc"].ToString();
        lblSelectedSeats.Text = Session["SelectedBus"].ToString();
        lblBpoint.Text = Session["Bpoint"].ToString();
        lblDpoint.Text = Session["Dpoint"].ToString();
        lbldt.Text = Session["Dates"].ToString();
    }

    private void UserInfo()
    {
        string nm = Session["log"].ToString();
        lblUsrNm.Text = nm;

        SqlCommand cmd = new SqlCommand("select * from User_Data where name=@nm", con);
        cmd.Parameters.AddWithValue("@nm", nm);

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
        //SqlCommand cmd = new SqlCommand("insert into Pay1 (Cust_ID ,Bname ,BoardingL ,BoardingT ,DrpL ,DrpT ,Seat ,Price)values(@id,@bnm,@BL,@BT,@DL,@DT,@seat,@price)",con);

        
        //cmd.Parameters.AddWithValue("@id", Label11.Text);
        //cmd.Parameters.AddWithValue("@bnm",Label1.Text);
        //cmd.Parameters.AddWithValue("@BL",Label2.Text);
        //cmd.Parameters.AddWithValue("@BT",Label3.Text);
        //cmd.Parameters.AddWithValue("@DL",Label4.Text);
        //cmd.Parameters.AddWithValue("@DT",Label5.Text);
        //cmd.Parameters.AddWithValue("@seat",Label6.Text);
        //cmd.Parameters.AddWithValue("@price",Label7.Text);

        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        Response.Redirect("PAY.aspx");
        
    }
}
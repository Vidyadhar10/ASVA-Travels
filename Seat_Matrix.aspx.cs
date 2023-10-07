using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Seat_Matrix : System.Web.UI.Page
{
    static int[] bookedseat;
    static int[] tempbookseat;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        btnShowAvailable.BackColor = System.Drawing.Color.WhiteSmoke;
        btnShowBooked.BackColor = System.Drawing.Color.OrangeRed;
        btnShowSelected.BackColor = System.Drawing.Color.PaleGreen;
        if (!IsPostBack)
        {
            ShowBPoint();
            ShowDPoint();
           // GetTime();

            bookedseat = new int[18];
            tempbookseat = new int[18];
            tempbookseat[0] = 0;
            tempbookseat[1] = 0;
            tempbookseat[2] = 0;
            tempbookseat[3] = 0;
            tempbookseat[4] = 0;
            tempbookseat[5] = 0;
            tempbookseat[6] = 0;
            tempbookseat[7] = 0;
            tempbookseat[8] = 0;
            tempbookseat[9] = 0;
            tempbookseat[10] = 0;
            tempbookseat[11] = 0;
            tempbookseat[12] = 0;
            tempbookseat[13] = 0;
            tempbookseat[14] = 0;
            tempbookseat[15] = 0;
            tempbookseat[16] = 0;
            tempbookseat[17] = 0;

            alreadybooked();
        }

        R01.ToolTip = "Not selected";
       // string busnm = Request.QueryString["BusName"];//.ToString();
        GetBusPrice();
        //price = Convert.ToInt32(busnm);
        

        if (R01.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R01.Text + ",";
        }
        if (R03.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R03.Text + ",";
        }
        if (R05.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R05.Text + ",";
        }
        if (R07.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position = R07.Text + ",";
        }
        if (R09.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R09.Text + ",";
        }
        if (R11.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R11.Text + ",";
        }
        if (R13.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R13.Text + ",";
        }
        if (R15.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R15.Text + ",";
        }
        if (R17.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += R17.Text + ",";
        }
        if (L02.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L02.Text + ",";
        }
        if (L04.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L04.Text + ",";
        }
        if (L06.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L06.Text + ",";
        }
        if (L08.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L08.Text + ",";
        }
        if (L10.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L10.Text + ",";
        }
        if (L12.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L12.Text + ",";
        }
        if (L14.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L14.Text + ",";
        }
        if (L16.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L16.Text + ",";
        }
        if (L18.BackColor == System.Drawing.Color.PaleGreen)
        {
            count = count + 1;
            position += L18.Text + ",";
        }

    }

    private void GetTime()
    {
        //string time = "";
        string str1 = ddlBpt.SelectedItem.ToString();

        SqlCommand cmd2 = new SqlCommand("Select * from BoardingPoints where BPoint=@bpt", newcon);
        cmd2.Parameters.AddWithValue("@bpt", str1);

        newcon.Open();
        SqlDataReader dr = cmd2.ExecuteReader();
        if (dr.Read())
        {

            txtTime.Text = dr["Time"].ToString();
            // txtTime.Text = str1 ;
        }
        newcon.Close();
    }

    private void GetBusPrice()
    {
        string busnm = Request.QueryString["BusName"];
        SqlCommand cmd1 = new SqlCommand("Select * from Bus where Bus_name=@Bnm", newcon);
        cmd1.Parameters.AddWithValue("@Bnm", busnm);

        newcon.Open();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            price = Convert.ToInt32(dr["Price"]);
        }
        newcon.Close();
        Session["Busname"] = busnm;
    }

    private void ShowDPoint()
    {
        string bpt = "";
        string destct = Session["DestCity"].ToString();
        SqlCommand src = new SqlCommand("Select * from Cities where CityName=@ctnm", newcon);
        src.Parameters.AddWithValue("@ctnm", destct);
        newcon.Open();
        SqlDataReader dr = src.ExecuteReader();
        if (dr.Read())
        {
            bpt = dr["CityID"].ToString();
        }
        newcon.Close();

        SqlCommand newcmd1 = new SqlCommand("select * from DroppingPoints where FID=@DFid", newcon);
        newcmd1.Parameters.AddWithValue("@DFid", bpt);
        SqlDataAdapter das = new SqlDataAdapter(newcmd1);
        DataSet ds = new DataSet();
        das.Fill(ds);
        ddlDpt.DataSource = ds;
        ddlDpt.DataTextField = "DPoint";
        ddlDpt.DataValueField = "FID";
        ddlDpt.DataBind();
        ddlDpt.Items.Insert(0, new ListItem("SELECT"));

    }

    private void ShowBPoint()
    {
        string bpt="";
        string srcct=Session["SrcCity"].ToString();
        SqlCommand src=new SqlCommand("Select * from Cities where CityName=@ctnm",newcon);
        src.Parameters.AddWithValue("@ctnm",srcct);
        newcon.Open();
        SqlDataReader dr=src.ExecuteReader();
        if(dr.Read())
        {
            bpt=dr["CityID"].ToString();
        }
        newcon.Close();

        SqlCommand newcmd1 = new SqlCommand("select * from BoardingPoints where FID=@BFid", newcon);
        newcmd1.Parameters.AddWithValue("@BFid", bpt);
        SqlDataAdapter das=new SqlDataAdapter(newcmd1);
        DataSet ds=new DataSet();
        das.Fill(ds);
        ddlBpt.DataSource=ds;
        ddlBpt.DataTextField = "BPoint";
        ddlBpt.DataValueField = "FID";
        ddlBpt.DataBind();
        ddlBpt.Items.Insert(0, new ListItem("SELECT"));

    }

    int price;
    SqlConnection newcon = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");

    int count = 0;
    string position = " ";

    private void alreadybooked()
    {
        String mycon = "Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True";
        String myquery = "Select * from Bus1_seats";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int rows = ds.Tables[0].Rows.Count;
        int i = 0;
        while (i < rows)
        {
            String status;
            status = ds.Tables[0].Rows[i]["status"].ToString();
            if (status == "B")
            {
                bookedseat[i] = 1;
                if (i == 0)
                {
                    R01.BackColor = System.Drawing.Color.OrangeRed;
                    R01.Enabled = false;
                }
                if (i == 1)
                {
                    L02.BackColor = System.Drawing.Color.OrangeRed;
                    L02.Enabled = false;
                }
                if (i == 2)
                {
                    R03.BackColor = System.Drawing.Color.OrangeRed;
                    R03.Enabled = false;
                }
                if (i == 3)
                {
                    L04.BackColor = System.Drawing.Color.OrangeRed;
                    L04.Enabled = false;
                }
                if (i == 4)
                {
                    R05.BackColor = System.Drawing.Color.OrangeRed;
                    R05.Enabled = false;
                }
                if (i == 5)
                {
                    L06.BackColor = System.Drawing.Color.OrangeRed;
                    L06.Enabled = false;
                }
                if (i == 6)
                {
                    R07.BackColor = System.Drawing.Color.OrangeRed;
                    R07.Enabled = false;
                }
                if (i == 7)
                {
                    L08.BackColor = System.Drawing.Color.OrangeRed;
                    L08.Enabled = false;
                }
                if (i == 8)
                {
                    R09.BackColor = System.Drawing.Color.OrangeRed;
                    R09.Enabled = false;
                }
                if (i == 9)
                {
                    L10.BackColor = System.Drawing.Color.OrangeRed;
                    L10.Enabled = false;
                }
                if (i == 10)
                {
                    R11.BackColor = System.Drawing.Color.OrangeRed;
                    R11.Enabled = false;
                }
                if (i == 11)
                {
                    L12.BackColor = System.Drawing.Color.OrangeRed;
                    L12.Enabled = false;
                }
                if (i == 12)
                {
                    R13.BackColor = System.Drawing.Color.OrangeRed;
                    R13.Enabled = false;
                }
                if (i == 13)
                {
                    L14.BackColor = System.Drawing.Color.OrangeRed;
                    L14.Enabled = false;

                }
                if (i == 14)
                {
                    R15.BackColor = System.Drawing.Color.OrangeRed;
                    R15.Enabled = false;

                }
                if (i == 15)
                {

                    L16.BackColor = System.Drawing.Color.OrangeRed;
                    L16.Enabled = false;
                }
                if (i == 16)
                {

                    R17.BackColor = System.Drawing.Color.OrangeRed;
                    R17.Enabled = false;
                }
                if (i == 17)
                {

                    L18.BackColor = System.Drawing.Color.OrangeRed;
                    L18.Enabled = false;
                }
            }
            if (status == "A")
            {
                bookedseat[i] = 0;
                if (i == 0)
                {
                    R01.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 1)
                {
                    L02.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 2)
                {
                    R03.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 3)
                {
                    L04.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 4)
                {
                    R05.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 5)
                {
                    L06.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 6)
                {
                    R07.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 7)
                {
                    L08.BackColor = System.Drawing.Color.WhiteSmoke ;
                }
                if (i == 8)
                {
                    R09.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 9)
                {
                    L10.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 10)
                {
                    R11.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 11)
                {
                    L12.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 12)
                {
                    R13.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 13)
                {
                    L14.BackColor = System.Drawing.Color.WhiteSmoke;

                }
                if (i == 14)
                {
                    R15.BackColor = System.Drawing.Color.WhiteSmoke;

                }
                if (i == 15)
                {

                    L16.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 16)
                {

                    R17.BackColor = System.Drawing.Color.WhiteSmoke;
                }
                if (i == 17)
                {

                    L18.BackColor = System.Drawing.Color.WhiteSmoke;
                }

            }
            i++;
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ddlBpt.SelectedIndex == 0)
        {
            lblBpoint.Text = "*Plz select Boarding Point!!!";
        }
        else if (ddlDpt.SelectedIndex == 0)
        {
            lblBpoint.Text = "";
            lblDpoint.Text = "*Plz select Dropping Point!!!";
        }
        else
        {
            Session["Bpoint"] = ddlBpt.SelectedItem.ToString();
            Session["Dpoint"] = ddlDpt.SelectedItem.ToString();

            int i = 0;
            for (i = 0; i < 16; i++)
            {
                if (tempbookseat[i] == 1)
                {
                    String mycon = "Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True";
                    String updatedata = "Update Bus1_seats set status='B' where seat_no=" + (i + 1);
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = updatedata;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

            }
            int totPrice = count * price;
            Session["cnt"] = count;
            Session["selectedBus"] = position;
            Session["TotPrc"] = totPrice;
            //Session["tempbooking"] = tempbookseat;

            Response.Redirect("Payment.aspx");
        }
    }

    protected void R01_Click(object sender, EventArgs e)
    {
        if (tempbookseat[0] == 0)
        {
            R01.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[0] = 1;

        }
        else
        {
            R01.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[0] = 0;
        }
    }
    protected void L02_Click(object sender, EventArgs e)
    {
        if (tempbookseat[1] == 0)
        {
            L02.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[1] = 1;

        }
        else
        {
            L02.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[1] = 0;
        }
    }
    protected void R03_Click(object sender, EventArgs e)
    {
        if (tempbookseat[2] == 0)
        {
            R03.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[2] = 1;

        }
        else
        {
            R03.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[2] = 0;
        }
    }
    protected void L04_Click(object sender, EventArgs e)
    {
        if (tempbookseat[3] == 0)
        {
            L04.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[3] = 1;

        }
        else
        {
            L04.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[3] = 0;
        }
    }
    protected void R05_Click(object sender, EventArgs e)
    {
        if (tempbookseat[4] == 0)
        {
            R05.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[4] = 1;

        }
        else
        {
            R05.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[4] = 0;
        }
    }
    protected void L06_Click(object sender, EventArgs e)
    {
        if (tempbookseat[5] == 0)
        {
            L06.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[5] = 1;

        }
        else
        {
            L06.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[5] = 0;
        }
    }
    protected void R07_Click(object sender, EventArgs e)
    {
        if (tempbookseat[6] == 0)
        {
            R07.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[6] = 1;

        }
        else
        {
            R07.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[6] = 0;
        }
    }
    protected void L08_Click(object sender, EventArgs e)
    {
        if (tempbookseat[7] == 0)
        {
            L08.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[7] = 1;

        }
        else
        {
            L08.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[7] = 0;
        }
    }
    protected void R09_Click(object sender, EventArgs e)
    {
        if (tempbookseat[8] == 0)
        {
            R09.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[8] = 1;

        }
        else
        {
            R09.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[8] = 0;
        }
    }
    protected void L10_Click(object sender, EventArgs e)
    {
        if (tempbookseat[9] == 0)
        {
            L10.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[9] = 1;

        }
        else
        {
            L10.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[9] = 0;
        }
    }
    protected void R11_Click(object sender, EventArgs e)
    {
        if (tempbookseat[10] == 0)
        {
            R11.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[10] = 1;

        }
        else
        {
            R11.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[10] = 0;
        }
    }
    protected void L12_Click(object sender, EventArgs e)
    {
        if (tempbookseat[11] == 0)
        {
            L12.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[11] = 1;

        }
        else
        {
            L12.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[11] = 0;
        }
    }
    protected void R13_Click(object sender, EventArgs e)
    {
        if (tempbookseat[12] == 0)
        {
            R13.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[12] = 1;

        }
        else
        {
            R13.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[12] = 0;
        }
    }
    protected void L14_Click(object sender, EventArgs e)
    {
        if (tempbookseat[13] == 0)
        {
            L14.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[13] = 1;

        }
        else
        {
            L14.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[13] = 0;
        }
    }
    protected void R15_Click(object sender, EventArgs e)
    {
        if (tempbookseat[14] == 0)
        {
            R15.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[14] = 1;

        }
        else
        {
            R15.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[14] = 0;
        }
    }
    protected void L16_Click(object sender, EventArgs e)
    {
        if (tempbookseat[15] == 0)
        {
            L16.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[15] = 1;

        }
        else
        {
            L16.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[15] = 0;
        }
    }
    protected void R17_Click(object sender, EventArgs e)
    {
        if (tempbookseat[16] == 0)
        {
            R17.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[16] = 1;

        }
        else
        {
            R17.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[16] = 0;
        }
    }
    protected void L18_Click(object sender, EventArgs e)
    {
        if (tempbookseat[17] == 0)
        {
            L18.BackColor = System.Drawing.Color.PaleGreen;
            tempbookseat[17] = 1;

        }
        else
        {
            L18.BackColor = System.Drawing.Color.WhiteSmoke;
            tempbookseat[17] = 0;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        lblSelectedSeats.Text = position;

        

    }
    protected void ddlBpt_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetTime(); 
    }
}
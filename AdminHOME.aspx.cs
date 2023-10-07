using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminHOME : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlHome.Visible = false;
        pnlBusDetails.Visible = false;
        pnlNoName.Visible = false;
        //pnlPaym.Visible = false;
        pnlQuestions.Visible = false;
        pnlSeatMatrix.Visible = false;

        //CheckCityExist();
        //CheckBusDetails();
    }

    private void CheckBusDetails()
    {
        SqlCommand cmd = new SqlCommand("Select * from Bus where Bus_name=@bnm", con);
        //cmd.Parameters.AddWithValue("@prc",txtPrice.Text);
        cmd.Parameters.AddWithValue("@bnm", txtBusName.Text);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            check = true;
        }
        else
        {
            check = false;
        }
        con.Close();
    }



    bool check = true;
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");
    private void CheckCityExist()
    {
        SqlCommand cmd = new SqlCommand("Select * from Cities where CityName=@nm",con);
        cmd.Parameters.AddWithValue("@nm", txtCTName.Text);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            check = true;
        }
        else
        {
            check = false;
        }
        con.Close();
    }
    protected void btnHomeUsr_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btnHomeCng_Click(object sender, EventArgs e)
    {
        pnlHome.Visible = true;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtCTName.Text == "")
        {
            lblOperation.ForeColor = System.Drawing.Color.Red;
            lblOperation.Text = "*Plz Enter City Name";
        }
        else
        {
            CheckCityExist();
            if (check == false)
            {
                SqlCommand NewCmd = new SqlCommand("Insert into Cities(CityName)values(@NM)", con);
                NewCmd.Parameters.AddWithValue("@NM", txtCTName.Text);

                SqlDataAdapter da = new SqlDataAdapter(NewCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                lblOperation.ForeColor = System.Drawing.Color.PaleGreen;
                lblOperation.Text = "City Is Added to City Table!!!";
            }
            else
            {

                lblOperation.ForeColor = System.Drawing.Color.Red;
                lblOperation.Text = "*City Already Exists!!! Enter New One ";
            }

        }
        pnlHome.Visible = true;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtCTName.Text == "")
        {
            lblOperation.ForeColor = System.Drawing.Color.Red;
            lblOperation.Text = "*Plz Enter City Name";
        }
        else
        {
            CheckCityExist();
            if (check == true)
            {
                SqlCommand cmdDel = new SqlCommand("Delete from Cities where CityName=@name", con);
                cmdDel.Parameters.AddWithValue("@name", txtCTName.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmdDel);
                DataSet ds = new DataSet();
                da.Fill(ds);
                lblOperation.ForeColor = System.Drawing.Color.PaleGreen;
                lblOperation.Text = "City Has Deleted From Table.";
            }
            else
            {
                lblOperation.ForeColor = System.Drawing.Color.Red;
                lblOperation.Text = "City Does Not Exists In Table!!!";
            }
        }
        pnlHome.Visible = true;
    }
    private void CheckBPointExist()
    {
        SqlCommand cmd = new SqlCommand("Select * from BoardingPoints where BPoint=@nm", con);
        cmd.Parameters.AddWithValue("@nm", txtBPoint.Text);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            check = true;
        }
        else
        {
            check = false;
        }
        con.Close();
    }
    protected void btnAddSM_Click(object sender, EventArgs e)
    {
        pnlSeatMatrix.Visible = true;

        if (txtBPoint.Text == "")
        {
            lblBPoint.ForeColor = System.Drawing.Color.Red;
            lblBPoint.Text = "*Plz Enter Boarding Point!!!";
        }
        else if (txtBFID.Text == "")
        {
            lblBPoint.ForeColor = System.Drawing.Color.Red;
            lblBPoint.Text = "*Plz Enter Foreign Key!!!";
        }
        else if (txtDPoint.Text == "")
        {
            lblDPoint.ForeColor = System.Drawing.Color.Red;
            lblDPoint.Text = "*Plz Enter Dropping Point!!!";
        }
        else if (txtDFID.Text == "")
        {
            lblDPoint.ForeColor = System.Drawing.Color.Red;
            lblDPoint.Text = "*Plz Enter Foreign Key!!!";
        }
        else
        {
            CheckBPointExist();
            if (check == false)
            {
                SqlCommand cmdAdd = new SqlCommand("Insert into BoardingPoints(BPoint,FID)values(@bpt,@fid)", con);
                cmdAdd.Parameters.AddWithValue("@bpt", txtBPoint.Text);
                cmdAdd.Parameters.AddWithValue("@fid", txtBFID.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmdAdd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                lblBPoint.ForeColor = System.Drawing.Color.PaleGreen;
                lblBPoint.Text = "Boarding Point was Added to table";

            }
            else
            {
                lblBPoint.ForeColor = System.Drawing.Color.Red;
                lblBPoint.Text = "Boarding Point Already Exists!!!"; 
            }

            CheckDPointExist();
            if (check == false)
            {
                SqlCommand cmdAdd = new SqlCommand("Insert into DroppingPoints(DPoint,FID)values(@dpt,@dfid)", con);
                cmdAdd.Parameters.AddWithValue("@dpt", txtDPoint.Text);
                cmdAdd.Parameters.AddWithValue("@dfid", txtDFID.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmdAdd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                lblDPoint.ForeColor = System.Drawing.Color.PaleGreen;
                lblDPoint.Text = "Dropping Point was Added to table";
            }
            else
            {

                lblDPoint.ForeColor = System.Drawing.Color.Red;
                lblDPoint.Text = "Dropping Point Already Exists!!!";
            }

           
        }
    }

    private void CheckDPointExist()
    {
        SqlCommand cmd = new SqlCommand("Select * from DroppingPoints where DPoint=@nm", con);
        cmd.Parameters.AddWithValue("@nm", txtDPoint.Text);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            check = true;
        }
        else
        {
            check = false;
        }
        con.Close();
    }

    protected void btnDeleteSM_Click(object sender, EventArgs e)
    {
        pnlSeatMatrix.Visible = true;
        if (txtBPoint.Text == "")
        {
            lblBPoint.ForeColor = System.Drawing.Color.Red;
            lblBPoint.Text = "*Plz Enter Boarding Point!!!";
        }
        else if (txtBFID.Text == "")
        {
            lblBPoint.ForeColor = System.Drawing.Color.Red;
            lblBPoint.Text = "*Plz Enter Foreign Key!!!";
        }
        else if (txtDPoint.Text == "")
        {
            lblDPoint.ForeColor = System.Drawing.Color.Red;
            lblDPoint.Text = "*Plz Enter Dropping Point!!!";
        }
        else if (txtDFID.Text == "")
        {
            lblDPoint.ForeColor = System.Drawing.Color.Red;
            lblDPoint.Text = "*Plz Enter Foreign Key!!!";
        }
        else
        {
            
            CheckBPointExist();
            if (check == true)
            {
                //Delete query
                SqlCommand cmdDel = new SqlCommand("Delete from BoardingPoints where BPoint=@bpt", con);
                cmdDel.Parameters.AddWithValue("@bpt", @txtBPoint.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmdDel);
                DataSet ds = new DataSet();
                da.Fill(ds);

                lblBPoint.ForeColor = System.Drawing.Color.PaleGreen;
                lblBPoint.Text = "Boarding Point has Deleted";
            }
            else
            {
                lblBPoint.ForeColor = System.Drawing.Color.Red;
                lblBPoint.Text = "Boarding Point Does Not Exists!!";
            }

            CheckDPointExist();
            if (check == true)
            {
                SqlCommand cmdDel = new SqlCommand("Delete from DroppingPoints where DPoint=@dpt", con);
                cmdDel.Parameters.AddWithValue("@dpt", @txtDPoint.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmdDel);
                DataSet ds = new DataSet();
                da.Fill(ds);

                lblDPoint.ForeColor = System.Drawing.Color.PaleGreen;
                lblDPoint.Text = "Dropping Point has Deleted";
                //Delete Query
            }
            else
            {
                lblDPoint.ForeColor = System.Drawing.Color.Red;
                lblDPoint.Text = "Dropping Point Does Not Exists!!";
            }
        }
    }
    protected void btnSeatMat_Click(object sender, EventArgs e)
    {

        pnlSeatMatrix.Visible = true;
    }





    protected void btnBusDet_Click(object sender, EventArgs e)
    {
        pnlBusDetails.Visible = true;
    }
    protected void btnAddBus_Click(object sender, EventArgs e)
    {
        pnlBusDetails.Visible=true;

        CheckBusDetails();
        if(txtBusName.Text=="")
        {
            lblBusnm.Text = "*Plz Enter Bus name!!";
        }
        else if (txtPrice.Text == "")
        {
            lblprice.Text = "*Plz Enter Price!!";
        }
        else
        {
            if (check == false)
            {
                SqlCommand cmdAddBus = new SqlCommand("insert into Bus(Bus_name,price)values(@Busnm,@price)", con);
                cmdAddBus.Parameters.AddWithValue("@Busnm", txtBusName.Text);
                cmdAddBus.Parameters.AddWithValue("@price", txtPrice.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmdAddBus);
                DataSet ds = new DataSet();
                da.Fill(ds);

                lblBusnm.Text = "Bus Is added to table";
                //lblprice.Text = "Price is added to table";
            }
            if (check == true)
            {
                lblBusnm.Text = "Bus Already Exists!!!";
                //lblprice.Text = "";
            }
        }
        //inset into bus newbus

    }
    protected void btnDelBus_Click(object sender, EventArgs e)
    {
        //Delete from Bus

    }
    protected void btnAddBus0_Click(object sender, EventArgs e)
    {
        pnlBusDetails.Visible = true;
        CheckBusDetails();
        if (check == true)
        {
            SqlCommand cmd = new SqlCommand("Update Bus set price=@prc where Bus_name=@abc",con);

            cmd.Parameters.AddWithValue("@prc", txtPrice.Text);
            cmd.Parameters.AddWithValue("@abc", txtBusName.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lblBusnm.Text = "Bus Price Updated";

        }

    }
}
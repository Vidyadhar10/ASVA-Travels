using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HOME : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //BindDDL();
            Calendar1.Visible = false;
            CTs();
            DestCTs();
            Details();
        }
        if (Session["log"] != null)
        {
            lblUser.Text = Session["log"].ToString();
           // nms = Session["log"].ToString();
        }
        else
        {
            //Response.Redirect("Sign Up Page.aspx");
        }

        Calendar1.SelectedDate = Calendar1.TodaysDate;
        lblCalender.Text = "";
        lblDestCt.Text = "";
        lblSrcCt.Text = "";
        
    }
    string nms = "";
    private void Details()
    {
        if (Session["log"] == null)
        {
            if (Request.QueryString["usr"] != null)
            {
                nms = Request.QueryString["Usr"].ToString();

                

                SqlCommand det = new SqlCommand("Select * from User_Data where name=@nm", con);
                det.Parameters.AddWithValue("@nm", nms);

                Session["log"] = nms;
            }
            else
            {
                Response.Redirect("Log In Page.aspx");
            }
        }
    }

    private void DestCTs()
    {
        SqlCommand cmd1 = new SqlCommand("Select * from  Cities ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable ds = new DataTable();
        da.Fill(ds);

        ddlDestCity.DataSource = ds;
        ddlDestCity.DataValueField = "CityID";
        ddlDestCity.DataTextField = "CityName";
        ddlDestCity.DataBind();
        ddlDestCity.Items.Insert(0, new ListItem("DESTINATION"));
    }

    private void CTs()
    {
        SqlCommand cmd1 = new SqlCommand("Select * from  Cities", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable ds = new DataTable();
        da.Fill(ds);

        ddlSourceCity.DataSource = ds;
        ddlSourceCity.DataValueField = "CityID";
        ddlSourceCity.DataTextField = "CityName";
        ddlSourceCity.DataBind();
        ddlSourceCity.Items.Insert(0, new ListItem("SOURCE"));
    }
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");
    
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("Main Account Page.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (ddlSourceCity.SelectedIndex == 0)
        {
            lblSrcCt.Text = "*Plz Select City";
        }
        else if (ddlDestCity.SelectedIndex == 0)
        {
            lblDestCt.Text = "*Plz select Destination City";
        }
        else if (txtDate.Text == "")
        {
            lblCalender.Text = "*Plz Enter Date";
        }
        else
        {

            // Response.Redirect("to Ashwini's Confirm page(available travels/sits/+");
            Session["SrcCity"] = ddlSourceCity.SelectedItem.ToString();
            Session["DestCity"] = ddlDestCity.SelectedItem.ToString();
            Session["Dates"] = txtDate.Text;
            Response.Redirect("ConfirmPage.aspx");
        }
        
    }


    

    protected void btnCalender_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
            
        }
        Calendar1.Attributes.Add("Style", "position:absolute");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text=Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (!e.Day.IsOtherMonth)
        {
            if (e.Day.Date.Day < Calendar1.SelectedDate.Day)
            {
                e.Day.IsSelectable = false;
              //  e.Cell.BackColor = System.Drawing.Color.White;
                e.Cell.ForeColor = System.Drawing.Color.Red;
                
                e.Cell.Font.Bold = true;
               // e.Cell.Text = "x";
                e.Cell.ToolTip = "Not Available";
            }
            else
            {
                e.Day.IsSelectable = true;
                e.Cell.ToolTip = "Available";
                //e.Cell.BackColor = System.Drawing.Color.White;
                e.Cell.ForeColor = System.Drawing.Color.LightGreen;

            }
        }
        else
        {
            e.Day.IsSelectable = false;
        }
    }
    protected void btnHelp_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HelpPage.aspx");
    }
}
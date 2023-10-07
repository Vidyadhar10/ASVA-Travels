using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ConfirmPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SrcCity"] != null && Session["DestCity"] != null && Session["Dates"] != null)
        {
            txtSrc.Text = Session["SrcCity"].ToString();
            txtDest.Text = Session["DestCity"].ToString();
            txtdt.Text = Session["Dates"].ToString();
        }

        else
        {
            Response.Redirect("HOME.aspx");
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bus_Details.aspx");
    }

    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string strSrc = txtSrc.Text;
        string strDest=txtDest.Text;
        Response.Redirect("https://www.google.com/maps/dir/"+strSrc+"/"+strDest);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Bus_Details.aspx");
    }
}
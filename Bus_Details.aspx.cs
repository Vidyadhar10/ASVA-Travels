using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Bus_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bus();
        }

    }

    private void Bus()
    {
        SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from Bus", con);
       
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataList1.DataSource = ds;
        DataList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        
        Response.Redirect("Seat_Matrix.aspx");
   
    }
}
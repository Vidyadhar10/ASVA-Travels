using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Sign_Up_Page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=VIDYADHARS-LAP;Initial Catalog=Project_Travels;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        txtUsrnm.Visible = false;
        if (!IsPostBack)
        {
           // Button2.Enabled = false;
        }
    }
    string AdminUsername = "SU";
    //private void CreateAdminUserName()
    //{
    //    string str = TextBox2.Text;
    //    AdminUsername = AdminUsername+ str[0] + str[1] + str[2] + str[3];    
    //}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into User_Data values(@nm,@con,@pass,@c_pass,@usrnm,@isadmin)", con);
        cmd.Parameters.AddWithValue("@nm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@con", TextBox2.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox3.Text);
        cmd.Parameters.AddWithValue("@c_pass", TextBox4.Text);

        if (txtUsrnm.MaxLength==6)
            cmd.Parameters.AddWithValue("@usrnm", txtUsrnm.Text);
        else
            cmd.Parameters.AddWithValue("@usrnm", txtUsrnm.Text);

        if (rbYes.Checked)
            cmd.Parameters.AddWithValue("@isadmin", rbYes.Text);
        if (rbNo.Checked)
            cmd.Parameters.AddWithValue("@isadmin", rbNo.Text);

        

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        Response.Redirect("Log In Page.aspx");

    }
   
    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Log In Page.aspx");
    }
    protected void rbYes_CheckedChanged(object sender, EventArgs e)
    {
        Button2.Enabled = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (rbYes.Checked)
        {
            string str = TextBox2.Text;
            AdminUsername = AdminUsername + str[0] + str[1] + str[2] + str[3];
            Label1.Text = "USERNAME";
            txtUsrnm.Visible = true;
            // CreateAdminUserName();
            txtUsrnm.Text = AdminUsername;
        }
        else
        {
            Label1.Text = "";
            txtUsrnm.Visible = false;
        }
    }
}
   
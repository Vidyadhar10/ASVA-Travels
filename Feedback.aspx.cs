using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-JNF926O7\SQLEXPRESS;Initial Catalog=ASP_NET;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void BtnF_Click(object sender, EventArgs e)
    {

        
        SqlCommand cmd = new SqlCommand("insert into Response(Questions,Feedback,Suggestions)values(@qs1,@fb1,@sug1),(@qs2,@fb2,@sug2),(@qs3,@fb3,@sug3),(@qs4,@fb4,@sug4),(@qs5,@fb5,@sug5),(@qs6,@fb6,@sug6),(@qs7,@fb7,@sug7),(@qs8,@fb8,@sug8),(@qs9,@fb9,@sug9)",con);

        string strSuggestion = "Not Required for this Question";
        //Q1
        string str1 = "";
        if (RBYes.Checked)
        {
            str1 += RBYes.Text;
            //cmd.Parameters.AddWithValue("@fb1", RBYes.Text);
            cmd.Parameters.AddWithValue("@qs1", lblQ1.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo.Checked)
        {
            str1 += RBNo.Text;
            //cmd.Parameters.AddWithValue("@fb1", RBNo.Text);
            cmd.Parameters.AddWithValue("@qs1", lblQ1.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes.Checked && !RBNo.Checked)
        {
            Label2.Text="Please Choose One Option!";
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.BackColor = System.Drawing.Color.White;

        }

        //Q2
        string str2 = "";
        if (RBYes1.Checked)
        {
            str2 += RBYes1.Text;
            //cmd.Parameters.AddWithValue("@fb2", RBYes1.Text);
            cmd.Parameters.AddWithValue("@qs2", lblQ2.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo1.Checked)
        {
            str2 += RBNo1.Text;
            //cmd.Parameters.AddWithValue("@fb2", RBNo1.Text);
            cmd.Parameters.AddWithValue("@qs2", lblQ2.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes1.Checked && !RBNo1.Checked)
        {
            Label3.Text = "Please Choose One Option!";
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.BackColor = System.Drawing.Color.White;

        }
        //Q3a
        
        string str3= "";
        string questr = lblQ3.Text+ " "+lblQ3a.Text+" "+lblQ3b.Text+" "+lblQ3c.Text;
        if (RBYes2.Checked)
        {
            str3 += RBYes2.Text;
            //cmd.Parameters.AddWithValue("@qs3", lblQ3a.Text);
            //cmd.Parameters.AddWithValue("@fb3", RBYes2.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo2.Checked)
        {
            str3 += RBNo2.Text;
            //cmd.Parameters.AddWithValue("@qs3", lblQ3a.Text);
            //cmd.Parameters.AddWithValue("@fb3", RBNo2.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes2.Checked && !RBNo2.Checked)
        {
            Label4.Text = "Please Choose One Option!";
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.BackColor = System.Drawing.Color.White;

        }

        //Q3b
            if (RBYes3.Checked)
        {
            str3 += RBYes3.Text;
            //cmd.Parameters.AddWithValue("@qs3", lblQ3b.Text);
 
            //cmd.Parameters.AddWithValue("@fb3", RBYes3.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo3.Checked)
        {
            str3 += RBNo3.Text;
            //cmd.Parameters.AddWithValue("@qs3", lblQ3b.Text);
 
            //cmd.Parameters.AddWithValue("@fb", RBNo3.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes3.Checked && !RBNo3.Checked)
        {
            Label5.Text = "Please Choose One Option!";
            Label5.ForeColor = System.Drawing.Color.Red;
            Label5.BackColor = System.Drawing.Color.White;

        }

        //Q3c
        if (RBYes4.Checked)
        {
            str3 += RBYes4.Text;
            //cmd.Parameters.AddWithValue("@qs3", lblQ3c.Text);
            //cmd.Parameters.AddWithValue("@fb", RBYes4.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo4.Checked)
        {
            str3 += RBNo4.Text;
            //cmd.Parameters.AddWithValue("@qs3", lblQ3c.Text);
            //cmd.Parameters.AddWithValue("@fb", RBNo4.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes4.Checked && !RBNo4.Checked)
        {
            Label6.Text = "Please Choose One Option!";
            Label6.ForeColor = System.Drawing.Color.Red;
            Label6.BackColor = System.Drawing.Color.White;

        }

        if (str3.Length == 6 || str3.Length == 9)
        {
            //Label13.Text = "*Plz Select!!";
        //}
        //else
        //{
            cmd.Parameters.AddWithValue("@fb3", str3);
            cmd.Parameters.AddWithValue("@qs3", questr);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }


        //Q4
        string str4 = "";
        if (RBVG.Checked)
        {
            str4 += RBVG.Text;
            //cmd.Parameters.AddWithValue("@fb4", RBVG.Text);
            cmd.Parameters.AddWithValue("@qs4", lblQ4.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBG.Checked)
        {
            str4 += RBG.Text;
            //cmd.Parameters.AddWithValue("@fb4", RBG.Text);
            cmd.Parameters.AddWithValue("@qs4", lblQ4.Text);

        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        }
        if (RBAvg.Checked)
        {
            str4 += RBAvg.Text;
            //cmd.Parameters.AddWithValue("@fb4", RBAvg.Text);
            cmd.Parameters.AddWithValue("@qs4", lblQ4.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }

        if (RBPoor.Checked)
        {
            str4 += RBPoor.Text;
            //cmd.Parameters.AddWithValue("@fb4", RBPoor.Text);
            cmd.Parameters.AddWithValue("@qs4", lblQ4.Text);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        }

        if (!RBVG.Checked && !RBG.Checked && !RBAvg.Checked && !RBPoor.Checked)
        {
            Label7.Text = "Please Choose One Option!";
            Label7.ForeColor = System.Drawing.Color.Red;
            Label7.BackColor = System.Drawing.Color.White;

        }

        //Q5
        string str5 = "";
         if (RBYes5.Checked)
        {
            str5 += RBYes5.Text;
            //cmd.Parameters.AddWithValue("@fb5", RBYes5.Text);
            cmd.Parameters.AddWithValue("@qs5", lblQ5.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo5.Checked)
        {
            str5 += RBNo5.Text;
            //cmd.Parameters.AddWithValue("@fb5", RBNo5.Text);
            cmd.Parameters.AddWithValue("@qs5", lblQ5.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes5.Checked && !RBNo5.Checked)
        {
            Label8.Text = "Please Choose One Option!";
            Label8.ForeColor = System.Drawing.Color.Red;
            Label8.BackColor = System.Drawing.Color.White;

        }

        
        //Q6
        string str6 = "";
        if (RBYes6.Checked)
        {
            str6 += RBYes6.Text;
            //cmd.Parameters.AddWithValue("@fb6", RBYes6.Text);
            cmd.Parameters.AddWithValue("@qs6", lblQ6.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo6.Checked)
        {
            str6 += RBNo6.Text;
            //cmd.Parameters.AddWithValue("@fb6", RBNo6.Text);
            cmd.Parameters.AddWithValue("@qs6", lblQ6.Text);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        }
        if (!RBYes6.Checked && !RBNo6.Checked)
        {
            Label9.Text = "Please Choose One Option!";
            Label9.ForeColor = System.Drawing.Color.Red;
            Label9.BackColor = System.Drawing.Color.White;

        }

        //Q7
        string str7 = "";
        if (RBYes7.Checked)
        {
            str7 += RBYes7.Text;
            //cmd.Parameters.AddWithValue("@fb7", RBYes7.Text);
            cmd.Parameters.AddWithValue("@qs7", lblQ7.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo7.Checked)
        {
            str7 += RBNo7.Text;
            //cmd.Parameters.AddWithValue("@fb7", RBNo7.Text);
            cmd.Parameters.AddWithValue("@qs7", lblQ7.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes7.Checked && !RBNo7.Checked)
        {
            Label10.Text = "Please Choose One Option!";
            Label10.ForeColor = System.Drawing.Color.Red;
            Label10.BackColor = System.Drawing.Color.White;

        }

        //Q8
        string str8 = "";
        if (RBExce.Checked)
        {
            str8 += RBExce.Text;
            //cmd.Parameters.AddWithValue("@fb8", RBExce.Text);
            cmd.Parameters.AddWithValue("@qs8", lblQ8.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBVG1.Checked)
        {
            str8 += RBVG1.Text;
            //cmd.Parameters.AddWithValue("@fb8", RBVG1.Text);
            cmd.Parameters.AddWithValue("@qs8", lblQ8.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBG1.Checked)
        {
            str8 += RBG1.Text;
            //cmd.Parameters.AddWithValue("@fb8", RBG1.Text);
            cmd.Parameters.AddWithValue("@qs8", lblQ8.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBAvg1.Checked)
        {
            str8 += RBAvg1.Text;
            //cmd.Parameters.AddWithValue("@fb8", RBAvg1.Text);
            cmd.Parameters.AddWithValue("@qs8", lblQ8.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }

        if (RBPoor1.Checked)
        {
            str8 += RBPoor1.Text;
            //cmd.Parameters.AddWithValue("@fb8", RBPoor1.Text);
            cmd.Parameters.AddWithValue("@qs8", lblQ8.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        

        if (!RBExce.Checked && !RBVG1.Checked && !RBG1.Checked && !RBAvg1.Checked && !RBPoor1.Checked)
        {
            Label11.Text = "Please Choose One Option!";
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.BackColor = System.Drawing.Color.White;

        }

      //Q9
        string str9 = "";
        if (RBYes8.Checked)
        {
            str9 += RBYes8.Text;
            //cmd.Parameters.AddWithValue("@fb9", RBYes8.Text);
            cmd.Parameters.AddWithValue("@qs9", lblQ9.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (RBNo8.Checked)
        {
            str9 += RBNo8.Text;
            //cmd.Parameters.AddWithValue("@fb9", RBNo8.Text);
            cmd.Parameters.AddWithValue("@qs9", lblQ9.Text);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
        }
        if (!RBYes8.Checked && !RBNo8.Checked)
        {
            Label12.Text = "Please Choose One Option!";
            
            Label12.ForeColor = System.Drawing.Color.Red;
            Label12.BackColor = System.Drawing.Color.White;

        }

        if (str1 != "" && str2 !="" && str3 != "" && str4 != "" && str5 != "" && str6 !="" && str7 !="" && str8 != "" && str9 !="")
        {
            cmd.Parameters.AddWithValue("@fb1",str1);
            cmd.Parameters.AddWithValue("@fb2",str2);
           // cmd.Parameters.AddWithValue("@fb3",str3);
            cmd.Parameters.AddWithValue("@fb4",str4);
            cmd.Parameters.AddWithValue("@fb5",str5);
            cmd.Parameters.AddWithValue("@fb6",str6);
            cmd.Parameters.AddWithValue("@fb7",str7);
            cmd.Parameters.AddWithValue("@fb8",str8);
            cmd.Parameters.AddWithValue("@fb9",str9);

            cmd.Parameters.AddWithValue("@sug1", strSuggestion);
            cmd.Parameters.AddWithValue("@sug2", strSuggestion);
            cmd.Parameters.AddWithValue("@sug3", strSuggestion);
            cmd.Parameters.AddWithValue("@sug4", strSuggestion);
            cmd.Parameters.AddWithValue("@sug5", strSuggestion);
            cmd.Parameters.AddWithValue("@sug6", strSuggestion);
            cmd.Parameters.AddWithValue("@sug7", strSuggestion);
            cmd.Parameters.AddWithValue("@sug8", strSuggestion);
            cmd.Parameters.AddWithValue("@sug9", strSuggestion);








 
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Response.Redirect("MyBooking.aspx");
        }

         //Suggestions
        if (TextBox1.Text == "")
        {
            string fbnull = "Not Necessary";
            string notsug = "Suggestion is not given";
            SqlCommand cmd1 = new SqlCommand("insert into Response(Questions,Suggestions,Feedback)values(@qsug,@sug,@fbnul)", con);
            cmd1.Parameters.AddWithValue("@sug",notsug );
            cmd1.Parameters.AddWithValue("@qsug", lblsug.Text);
            cmd1.Parameters.AddWithValue("@fbnul", fbnull);

            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        else
        {
            string fbnull = "Not Necessary";
            SqlCommand cmd1 = new SqlCommand("insert into Response(Questions,Suggestions,Feedback)values(@qsug,@sug,@fbnul)", con);
            cmd1.Parameters.AddWithValue("@sug", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@qsug", lblsug.Text);
            cmd1.Parameters.AddWithValue("@fbnul", fbnull);

            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
        }
        

    }
}
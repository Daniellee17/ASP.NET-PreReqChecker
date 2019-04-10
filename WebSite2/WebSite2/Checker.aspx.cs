using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Checker : System.Web.UI.Page
{
    int admin = 0;
    int guest = 0;
    int loggedin = 0;
    string connectionString = @"Data Source=MSI-DANE;Initial Catalog=ageDB;Integrated Security=True;";

    protected void Page_Load(object sender, EventArgs e)
    {

        this.UnobtrusiveValidationMode =
            System.Web.UI.UnobtrusiveValidationMode.None;

        if (Session["Username"] != null)
        {
            loggedin = 1;
            regID.Visible = false;

            if (Session["Type"] == "Administrator")
            {
                admin = 1;
                LblName.Text = "Welcome, " + " Admin " + Session["FirstName"] + "!";
            }
            else
            {
                admin = 0;
                LblName.Text = "Welcome, " + Session["FirstName"] + "!";

            }
            LB_login.Text = "Logout";

        }

        else
        {
            myID.Visible = false;
            guest = 1;
            LblName.Text = "Welcome, Guest!";
            LB_login.Text = "Login";
        }
    }


    protected void BTN_Search_Click(object sender, EventArgs e)
    {

        using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
        {
            sqlCon1.Open();

            string query = "SELECT HardReq FROM dB" + Session["IDNumber"].ToString() + " WHERE Course=@Course";
            string query2 = "SELECT COUNT(1) FROM dB" + Session["IDNumber"].ToString() + " WHERE Course=@HardReq AND Passed='1'";

            ////////// CHECK HARD REQ ////////////////
            SqlCommand b = new SqlCommand(query, sqlCon1);
            b.Parameters.AddWithValue("@Course", TB1.Text.Trim());
            object valueb = b.ExecuteScalar();

            if (valueb != null)
                LBL_PreReq.Text = "HardReq: " + valueb.ToString();
            else
                LBL_PreReq.Text = "HardReq: None";


            ////////// CHECK IF PASSED HARD REQ ////////////////
            SqlCommand bb = new SqlCommand(query2, sqlCon1);
            bb.Parameters.AddWithValue("@HardReq", valueb.ToString());
            int count = Convert.ToInt32(bb.ExecuteScalar());
            if (count == 1)
            {

                LBL_PreReq.Text = "You passed: " + valueb.ToString();
            }
            else
                LBL_PreReq.Text = "You havent taken/failed: " + valueb.ToString();


        }

    }


    protected void LB_login_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void LB_my_Click(object sender, EventArgs e)
    {
        if (guest == 1)
        {
            LBLerror.Text = "You are not logged in!";
        }


        else
        {
            Response.Redirect("MyAccount.aspx");
        }

    }
    protected void LB_reg_Click(object sender, EventArgs e)
    {
        if (loggedin == 1)
        {
            Response.Redirect("Experiments.aspx");
        }

        else
        {
            Response.Redirect("Registration.aspx");
        }
    }

    protected void LB_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void LB_contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }



    protected void LB_db_Click(object sender, EventArgs e)
    {
        if (admin == 1)
        {
            Response.Redirect("Database.aspx");
        }

        else
        {

            LBLerror.Text = "You don't have admin privelages!";
        }

    }


    protected void LB_a2_Click(object sender, EventArgs e)
    {
        if (admin == 1)
        {
            Response.Redirect("AdminPage1.aspx");
        }

        else
        {

            LBLerror.Text = "You don't have admin privileges!";
        }
    }

    protected void BTN_Back_Click(object sender, EventArgs e)
    {

        Response.Redirect("Home.aspx");

    }


}
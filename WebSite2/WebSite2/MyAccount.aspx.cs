using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MyAccount : System.Web.UI.Page
{
    string connectionString = @"Data Source=MSI-DANE;Initial Catalog=ageDB;Integrated Security=True;";
    int admin = 0;
    int loggedin = 0;
    string yearStr;

    protected void Page_Load(object sender, EventArgs e)
    {

        this.UnobtrusiveValidationMode =
            System.Web.UI.UnobtrusiveValidationMode.None;

        if (Session["Username"] != null)
        {
            loggedin = 1;
            Tb1.Text = Session["Username"].ToString();

            if (Session["Type"] == "Administrator")
            {
                admin = 1;
                LblName.Text = "Welcome, " + " Admin " + Session["FirstName"] + "!";
         
            }
            else
            {
                admin = 0;
                admin1.Visible = false;
                admin2.Visible = false;
                Div1.Visible = false;
                LblName.Text = "Welcome, " + Session["FirstName"] + "!";


            }
            LB_login.Text = "Logout";



        }

        else
        {
            LblName.Text = "Welcome, Guest!";
            LB_login.Text = "Login";

        }

        if (!IsPostBack)
        {



        }


        using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
        {
            sqlCon1.Open();





            ////////// FIRST NAME AND LAST NAME ////////////////
            SqlCommand a = new SqlCommand("SELECT FirstName FROM FinalTable WHERE Username=@Username", sqlCon1);
            a.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object valuea = a.ExecuteScalar();

            SqlCommand a2 = new SqlCommand("SELECT LastName FROM FinalTable WHERE Username=@Username", sqlCon1);
            a2.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object valuea2 = a2.ExecuteScalar();

            if (valuea != null)
                LBL_FullName.Text = valuea.ToString() + " " + valuea2.ToString();


            ////////// CONTACT ////////////////
            SqlCommand b = new SqlCommand("SELECT Contact FROM FinalTable WHERE Username=@Username", sqlCon1);
            b.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object valueb = b.ExecuteScalar();
            if (valueb != null)
                LBL_Contact.Text = valueb.ToString();

            ////////// USERNAME ////////////////
            if (Tb1.Text != "")
                LBL_Username.Text = Tb1.Text.Trim();

            ////////// ID NUMBER ////////////////
            SqlCommand a222 = new SqlCommand("SELECT IDNumber FROM FinalTable WHERE Username=@Username", sqlCon1);
            a222.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object valuea222 = a222.ExecuteScalar();

            if (valuea222 != null)
                LBL_ID.Text = valuea222.ToString();

    


            ////////// EMAIL ////////////////
            SqlCommand bb = new SqlCommand("SELECT Email FROM FinalTable WHERE Username=@Username", sqlCon1);
            bb.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object valuebb = bb.ExecuteScalar();
            if (valuebb != null)
                LBL_Email.Text = valuebb.ToString();


            ////////// PASSWORD ////////////////
            SqlCommand bbb = new SqlCommand("SELECT Password FROM FinalTable WHERE Username=@Username", sqlCon1);
            bbb.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object valuebbb = bbb.ExecuteScalar();
            if (valuebbb != null)
                LBL_Password.Text = valuebbb.ToString();

            ////////// TYPE ////////////////
            SqlCommand c = new SqlCommand("SELECT Type FROM FinalTable WHERE Username=@Username", sqlCon1);
            c.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
            object value = c.ExecuteScalar();
            if (value != null)
                LBL_Type.Text = value.ToString();






        }




    }



    protected void LB_my_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyAccount.aspx");
    }


    protected void LB_login_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void BTN_Add_Click(object sender, EventArgs e)
    {
        yearStr = yearTb.Text.Trim();

        using (SqlConnection sqlCon = new SqlConnection(connectionString))
        {
            sqlCon.Open();

            string query0 = "SELECT COUNT(1) FROM yearTbl WHERE Year=@Year";
            SqlCommand sqlCmd0 = new SqlCommand(query0, sqlCon);
            sqlCmd0.Parameters.AddWithValue("@Year", yearTb.Text.Trim());

            int count = Convert.ToInt32(sqlCmd0.ExecuteScalar());

            if (count == 1)
            {
                statusLbl.Text = "ERROR: " + yearStr + " already registered, delete it before creating another with the same year!";
            }
            else
            {
                string insertYear = "INSERT INTO yearTbl (Year) VALUES (" + yearStr + ")";
                SqlCommand sqlCmd1 = new SqlCommand(insertYear, sqlCon);
                sqlCmd1.ExecuteNonQuery();
                string createYearTable = "CREATE TABLE[dbo].[dB" + yearStr + "] ([id][int] IDENTITY(1,1) NOT NULL,[TermNo] [varchar] (50) NULL, [Course] [varchar] (50) NULL, [CourseTitle] [varchar] (300) NULL, [Passed] [varchar] (50) NULL, [Units] [varchar] (50) NULL, [SoftReq] [varchar] (50) NULL,[CoReq] [varchar] (50) NULL,[HardReq] [varchar] (50) NULL,CONSTRAINT[PK_.[dB" + yearStr + "] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]) ON[PRIMARY]";
                SqlCommand sqlCmd2 = new SqlCommand(createYearTable, sqlCon);
                sqlCmd2.ExecuteNonQuery();
                Response.Redirect(Request.RawUrl);
            }




        }

    }
    protected void BTN_View_Click(object sender, EventArgs e)
    {
        Session["new"] = DropDownList2.SelectedValue;

        Response.Redirect("AddCurriculum.aspx");


    }

    protected void BTN_Delete_Click(object sender, EventArgs e)
    {
        yearStr = DropDownList2.SelectedValue;
        using (SqlConnection sqlCon = new SqlConnection(connectionString))
        {
            sqlCon.Open();
            string insertYear = "DELETE FROM yearTbl WHERE YEAR =(" + yearStr + ")";
            SqlCommand sqlCmd1 = new SqlCommand(insertYear, sqlCon);
            sqlCmd1.ExecuteNonQuery();
            string createYearTable = "DROP TABLE [dB" + yearStr + "]";
            SqlCommand sqlCmd2 = new SqlCommand(createYearTable, sqlCon);
            sqlCmd2.ExecuteNonQuery();
            sqlCon.Close();

        }
        Response.Redirect(Request.RawUrl);
    }
    protected void LB_contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }



    protected void LB_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }


    protected void LB_db_Click(object sender, EventArgs e)
    {
        if (admin == 1)
        {
            Response.Redirect("Database.aspx");
        }

        else
        {

            LBL.Text = "You don't have admin privileges!";
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

            LBL.Text = "You don't have admin privileges!";
        }
    }

    protected void BTNcoursesDB_Click(object sender, EventArgs e)
    {
      
            Response.Redirect("AddCurriculum.aspx");

    }

    protected void BTNStudent_Click(object sender, EventArgs e)
    {
        Session["StudentChosen"] = DropDownList1.SelectedValue.ToString();
        Response.Redirect("My115.aspx");

    }


    protected void BTNreset_Click(object sender, EventArgs e)
    {
        if (Tb1.Text == "")
        {
            LBL.Text = "You are not logged in!";
        }

        else

        {

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();

                string query0 = "UPDATE FinalTable SET Password = 'reset' WHERE Username=@Username";
                SqlCommand sqlCmd0 = new SqlCommand(query0, sqlCon);

                sqlCmd0.Parameters.AddWithValue("@Username", Tb1.Text.Trim());
                sqlCmd0.ExecuteNonQuery();

                Response.Redirect(Request.RawUrl);

            }

        }




    }

    protected void LB_experiments_Click(object sender, EventArgs e)
    {
        Response.Redirect("Experiments.aspx");
    }


    protected void BTNchange_Click(object sender, EventArgs e)
    {

        if (Tb1.Text == "")
        {
            LBL.Text = "You are not logged in!";
        }

        else

        {



            Response.Redirect("Reset.aspx");



        }
    }

    protected void BTNAccounts_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage1.aspx");
    }

    protected void BTNGrid_Click(object sender, EventArgs e)
    {
        Response.Redirect("Database.aspx");
    }
}
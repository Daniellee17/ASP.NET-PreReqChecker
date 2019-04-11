using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MyMy115 : System.Web.UI.Page
{
    string connectionString = @"Data Source=MSI-DANE;Initial Catalog=ageDB;Integrated Security=True;";

    int admin = 0;
    int loggedin = 0;
    string ddl_value;
    string temp;
    int counter = 0;
    string temp1,temp2; string before;


    protected void Page_Load(object sender, EventArgs e)
    {

        this.UnobtrusiveValidationMode =
            System.Web.UI.UnobtrusiveValidationMode.None;


        if (Session["Username"] != null)
        {
            loggedin = 1;

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

            LblName.Text = "Welcome, Guest!";
            LB_login.Text = "Login";
        }


    }

    void PopulateGridView()
    {
        try
        {

            LBL.Text = "";
            DataTable dtbl = new DataTable();


            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string a = DropDownList1.SelectedValue;
                string query = "SELECT * FROM dB" + Session["IDNumber"].ToString() + " WHERE TermNo=@TermNo";
                SqlDataAdapter sqlDa = new SqlDataAdapter(query, sqlCon);

                sqlDa.SelectCommand.Parameters.AddWithValue("@TermNo", DropDownList1.SelectedValue);


                sqlDa.Fill(dtbl);

            }

            if (dtbl.Rows.Count > 0)
            {
                gvUsers.DataSource = dtbl;
                gvUsers.DataBind();



            }

            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvUsers.DataSource = dtbl;
                gvUsers.DataBind();
                gvUsers.Rows[0].Cells.Clear();
                gvUsers.Rows[0].Cells.Add(new TableCell());
                gvUsers.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvUsers.Rows[0].Cells[0].Text = "No Data Found...";
                gvUsers.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;


            }
        }


        catch (Exception ex)
        {
            LBL.Text = ex.Message;
        }

    }




    protected void BTN_Search_Click(object sender, EventArgs e)
    {

        using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
        {
            sqlCon1.Open();
            string query0 = "SELECT COUNT(1) FROM dB" + Session["IDNumber"].ToString() + " WHERE Course=@Course AND HardReq IS NOT NULL;";
         
            string query2 = "SELECT COUNT(1) FROM dB" + Session["IDNumber"].ToString() + " WHERE Course=@HardReq AND Passed='1'";

            ////////// CHECK ILAN HARD REQ ////////////////
            SqlCommand a = new SqlCommand(query0, sqlCon1);
            a.Parameters.AddWithValue("@Course", TB1.Text.Trim());
            int count0 = Convert.ToInt32(a.ExecuteScalar());
            if (count0 > 0)
            {
                for (int i =1; i<=count0; i++)
                {
                    string query = "SELECT HardReq FROM dB" + Session["IDNumber"].ToString() + " WHERE Course=@Course" + temp;
                    ////////// CHECK HARD REQ ////////////////
                    SqlCommand b = new SqlCommand(query, sqlCon1);
                    b.Parameters.AddWithValue("@Course", TB1.Text.Trim());
                    object valueb = b.ExecuteScalar();
                    if(i==1)
                    {
                        before = valueb.ToString();
                    }
                  
                    ////////// CHECK IF PASSED HARD REQ ////////////////
                    SqlCommand bb = new SqlCommand(query2, sqlCon1);
                    bb.Parameters.AddWithValue("@HardReq", valueb.ToString());
                    int count = Convert.ToInt32(bb.ExecuteScalar());
                    temp = " AND HardReq != '" + valueb.ToString() + "'";
                    temp1 = " " + valueb.ToString();
                    if (count > 0)
                    {

                        temp2 = " " + valueb.ToString();
                        if (counter == 0)
                        {
                            LBL_PreReq.Text = "You passed: " + before + temp2;
                        }

                        else
                            LBL_PreReq.Text = "You passed: " + temp2 + " but failed: " + before;

                    }
                    else
                    {
                        counter++;
                        LBL_PreReq.Text = "You havent taken/failed: " + valueb.ToString();
                
                    }

                    if (counter == 2)
                    {
                        LBL_PreReq.Text = "You havent taken/failed: " + before + temp1;

                    }





                }
               
            }
            else
                LBL_PreReq.Text = "None";

           


        }

    }

    protected void BTN_View_Click(object sender, EventArgs e)
    {


        ddl_value = DropDownList1.SelectedValue;
        PopulateGridView();
        Label1.Text = ddl_value;



    }



    protected void LB_login_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        Response.Redirect("Login.aspx");
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
    protected void LB_my_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyAccount.aspx");
    }



    protected void gvUsers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void BTN_Back_Click(object sender, EventArgs e)
    {

        Response.Redirect("Home.aspx");
    }
}
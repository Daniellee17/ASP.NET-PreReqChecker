using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Courses : System.Web.UI.Page
{
    string connectionString = @"Data Source=MSI-DANE;Initial Catalog=ageDB;Integrated Security=True;";
    int admin = 0;
    int loggedin = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        this.UnobtrusiveValidationMode =
            System.Web.UI.UnobtrusiveValidationMode.None;

        if (Session["Username"] != null)
        {
            loggedin = 1;

            LB_reg.Text = "Experiments";
          //  LBL_FullName1.Text = LBL_Contact1.Text = LBL_Email1.Text = LBL_Password1.Text = LBL_Type1.Text = LBL_Username1.Text = LBL_Verified1.Text = "User not found";
            if (Session["Type"] == "Administrator")
            {

                admin = 1;
                LblName.Text = "Welcome, " + " Admin " + Session["FirstName"] + "!";
            }
            else
            {

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
            PopulateGridView();
        }
    }

    void PopulateGridView()
    {
        try
        {
            DataTable dtbl = new DataTable();


            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable118", sqlCon);
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


        }

    }

    
    protected void LB_contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
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





    protected void BTN_Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyAccount.aspx");
    }




    protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("View0"))
            {

                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int RemoveAt = gvr.RowIndex;



                using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
                {
                    sqlCon1.Open();





                    ////////// FIRST NAME AND LAST NAME ////////////////
                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable118 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();


                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();


           



                }










            }
        }
        catch (Exception ex)
        {


        }

    }

  

    
    


}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddCurriculum : System.Web.UI.Page
{
    int admin = 0;
    int guest = 0;
    int loggedin = 0;
    string yearStr; 
    string connectionString = @"Data Source=MSI-DANE;Initial Catalog=ageDB;Integrated Security=True;";

    protected void Page_Load(object sender, EventArgs e)
    {
        yearStr = Session["new"].ToString();
        titleLbl.Text = Session["new"].ToString() + " Curriculum";
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

        if(!IsPostBack)
        {
         
            PopulateGridView();
        }


    }


    protected void LB_login_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void LB_my_Click(object sender, EventArgs e)
    {
       
            Response.Redirect("MyAccount.aspx");
        

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

         
        }
    }



   
    protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvUsers.EditIndex = e.NewEditIndex;
        PopulateGridView();
    }

    protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvUsers.EditIndex = -1;
        PopulateGridView();
    }
    void PopulateGridView()
    {
        try
        {

            DataTable dtbl = new DataTable();


            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM [dB" + yearStr + "]", sqlCon);
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


    protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string query = "DELETE FROM dB" + yearStr + " WHERE id=@id";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                PopulateGridView();

            }

        }

        catch (Exception ex)
        {

        }
    }

    protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("AddNew"))
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "INSERT INTO [dB" + yearStr + "] (TermNo,Course,CourseTitle,Units,SoftReq,CoReq,HardReq) VALUES (@TermNo,@Course,@CourseTitle,@Units,@SoftReq,@CoReq,@HardReq)";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@TermNo", (gvUsers.FooterRow.FindControl("txtTermNoFooter") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Course", (gvUsers.FooterRow.FindControl("txtCourseFooter") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@CourseTitle", (gvUsers.FooterRow.FindControl("txtCourseTitleFooter") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Units", (gvUsers.FooterRow.FindControl("txtUnitsFooter") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@SoftReq", (gvUsers.FooterRow.FindControl("txtSoftFooter") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@CoReq", (gvUsers.FooterRow.FindControl("txtCoFooter") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@HardReq", (gvUsers.FooterRow.FindControl("txtHardFooter") as TextBox).Text.Trim());

                    sqlCmd.ExecuteNonQuery();
                    PopulateGridView();




                }
            }
        }
        catch (Exception ex)
        {


        }


    }
    protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        try
        {

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string query = "UPDATE [dB" + yearStr + "] SET TermNo=@TermNo,Course=@Course,CourseTitle=@CourseTitle,Units=@Units,SoftReq=@SoftReq,CoReq=@CoReq,HardReq=@HardReq WHERE id=@id";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);


                sqlCmd.Parameters.AddWithValue("@TermNo", (gvUsers.Rows[e.RowIndex].FindControl("txtTermNo") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Course", (gvUsers.Rows[e.RowIndex].FindControl("txtCourse") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@CourseTitle", (gvUsers.Rows[e.RowIndex].FindControl("txtCourseTitle") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Units", (gvUsers.Rows[e.RowIndex].FindControl("txtUnits") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@SoftReq", (gvUsers.Rows[e.RowIndex].FindControl("txtSoft") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@CoReq", (gvUsers.Rows[e.RowIndex].FindControl("txtCo") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@HardReq", (gvUsers.Rows[e.RowIndex].FindControl("txtHard") as TextBox).Text.Trim());
                sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                gvUsers.EditIndex = -1;
                PopulateGridView();
               

            }

        }
        catch (Exception ex)
        {
          
        }
    }
    protected void gvUsers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   


}
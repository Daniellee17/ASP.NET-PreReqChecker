using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Courses115 : System.Web.UI.Page
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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115", sqlCon);
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
        Response.Redirect("Home.aspx");
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

                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();
                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();
                    else
                        LBL_Course.Text = "None";

                    SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseTitleCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
                    if (VcourseTitleCMD != null)
                        LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
                    else
                        LBL_CourseTitle.Text = "None";

                    SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    unitsCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vunitsCMD = unitsCMD.ExecuteScalar();
                    if (vunitsCMD != null)
                        LBL_Units.Text = vunitsCMD.ToString();
                    else
                        LBL_Units.Text = "None";

                    SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    softCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vsoftCMD = softCMD.ExecuteScalar();
                    if (vsoftCMD != null)
                        LBL_Soft.Text = vsoftCMD.ToString();
                    else
                        LBL_Soft.Text = "None";

                    SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    coCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vcoCMD = coCMD.ExecuteScalar();
                    if (vcoCMD != null)
                        LBL_Co.Text = vcoCMD.ToString();
                    else
                        LBL_Co.Text = "None";


                    SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    hardCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vhardCMD = hardCMD.ExecuteScalar();
                    if (vhardCMD != null)
                        LBL_Hard.Text = vhardCMD.ToString();
                    else
                        LBL_Hard.Text = "None";







                }










            }
        }
        catch (Exception ex)
        {


        }

    }








    protected void BTN_Search_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
        {
            sqlCon1.Open();

            SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE Course=@Course", sqlCon1);
            courseCMD.Parameters.AddWithValue("@Course", TB_Search.Text.Trim());
            object VcourseCMD = courseCMD.ExecuteScalar();
            if (VcourseCMD != null)
                LBL_Course.Text = VcourseCMD.ToString();
            else
                LBL_Course.Text = "-";

            SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE Course=@Course", sqlCon1);
            courseTitleCMD.Parameters.AddWithValue("@Course", TB_Search.Text.Trim());
            object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
            if (VcourseTitleCMD != null)
                LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
            else
                LBL_CourseTitle.Text = "-";

            SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE Course=@Course", sqlCon1);
            unitsCMD.Parameters.AddWithValue("@Course", TB_Search.Text.Trim());
            object vunitsCMD = unitsCMD.ExecuteScalar();
            if (vunitsCMD != null)
                LBL_Units.Text = vunitsCMD.ToString();
            else
                LBL_Units.Text = "-";

            SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE Course=@Course", sqlCon1);
            softCMD.Parameters.AddWithValue("@Course", TB_Search.Text.Trim());
            object vsoftCMD = softCMD.ExecuteScalar();
            if (vsoftCMD != null)
                LBL_Soft.Text = vsoftCMD.ToString();
            else
                LBL_Soft.Text = "-";

            SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE Course=@Course", sqlCon1);
            coCMD.Parameters.AddWithValue("@Course", TB_Search.Text.Trim());
            object vcoCMD = coCMD.ExecuteScalar();
            if (vcoCMD != null)
                LBL_Co.Text = vcoCMD.ToString();
            else
                LBL_Co.Text = "-";


            SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE Course=@Course", sqlCon1);
            hardCMD.Parameters.AddWithValue("@Course", TB_Search.Text.Trim());
            object vhardCMD = hardCMD.ExecuteScalar();
            if (vhardCMD != null)
                LBL_Hard.Text = vhardCMD.ToString();
            else
                LBL_Hard.Text = "-";







        }

    }
}

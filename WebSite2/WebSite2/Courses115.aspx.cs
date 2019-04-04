﻿using System;
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
            popT1();
            popT2();
            popT3();
            popT4();
            popT5();
            popT6();
        }
    }

    void popT1()
    {
        try
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115 WHERE TermNo = '1st Term'", sqlCon);
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
    void popT2()
    {
        try
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115 WHERE TermNo = '2nd Term'", sqlCon);
                sqlDa.Fill(dtbl);

            }

            if (dtbl.Rows.Count > 0)
            {
                gvUsers2.DataSource = dtbl;
                gvUsers2.DataBind();
            }

            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvUsers2.DataSource = dtbl;
                gvUsers2.DataBind();
                gvUsers2.Rows[0].Cells.Clear();
                gvUsers2.Rows[0].Cells.Add(new TableCell());
                gvUsers2.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvUsers2.Rows[0].Cells[0].Text = "No Data Found...";
                gvUsers2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        catch (Exception ex)
        {
        }
    }
    void popT3()
    {
        try
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115 WHERE TermNo = '3rd Term'", sqlCon);
                sqlDa.Fill(dtbl);

            }

            if (dtbl.Rows.Count > 0)
            {
                gvUsers3.DataSource = dtbl;
                gvUsers3.DataBind();
            }

            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvUsers3.DataSource = dtbl;
                gvUsers3.DataBind();
                gvUsers3.Rows[0].Cells.Clear();
                gvUsers3.Rows[0].Cells.Add(new TableCell());
                gvUsers3.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvUsers3.Rows[0].Cells[0].Text = "No Data Found...";
                gvUsers3.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        catch (Exception ex)
        {
        }
    }
    void popT4()
    {
        try
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115 WHERE TermNo = '4th Term'", sqlCon);
                sqlDa.Fill(dtbl);

            }

            if (dtbl.Rows.Count > 0)
            {
                gvUsers4.DataSource = dtbl;
                gvUsers4.DataBind();
            }

            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvUsers4.DataSource = dtbl;
                gvUsers4.DataBind();
                gvUsers4.Rows[0].Cells.Clear();
                gvUsers4.Rows[0].Cells.Add(new TableCell());
                gvUsers4.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvUsers4.Rows[0].Cells[0].Text = "No Data Found...";
                gvUsers4.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        catch (Exception ex)
        {
        }
    }
    void popT5()
    {
        try
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115 WHERE TermNo = '5th Term'", sqlCon);
                sqlDa.Fill(dtbl);

            }

            if (dtbl.Rows.Count > 0)
            {
                gvUsers5.DataSource = dtbl;
                gvUsers5.DataBind();
            }

            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvUsers5.DataSource = dtbl;
                gvUsers5.DataBind();
                gvUsers5.Rows[0].Cells.Clear();
                gvUsers5.Rows[0].Cells.Add(new TableCell());
                gvUsers5.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvUsers5.Rows[0].Cells[0].Text = "No Data Found...";
                gvUsers5.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        catch (Exception ex)
        {
        }
    }
    void popT6()
    {
        try
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM FlowchartTable115 WHERE TermNo = '6th Term'", sqlCon);
                sqlDa.Fill(dtbl);

            }

            if (dtbl.Rows.Count > 0)
            {
                gvUsers6.DataSource = dtbl;
                gvUsers6.DataBind();
            }

            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvUsers6.DataSource = dtbl;
                gvUsers6.DataBind();
                gvUsers6.Rows[0].Cells.Clear();
                gvUsers6.Rows[0].Cells.Add(new TableCell());
                gvUsers6.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvUsers6.Rows[0].Cells[0].Text = "No Data Found...";
                gvUsers6.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
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


    protected void gvUsers2_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("View2"))
            {

                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int RemoveAt = gvr.RowIndex;



                using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
                {
                    sqlCon1.Open();

                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers2.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();
                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();
                    else
                        LBL_Course.Text = "None";

                    SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseTitleCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers2.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
                    if (VcourseTitleCMD != null)
                        LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
                    else
                        LBL_CourseTitle.Text = "None";

                    SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    unitsCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers2.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vunitsCMD = unitsCMD.ExecuteScalar();
                    if (vunitsCMD != null)
                        LBL_Units.Text = vunitsCMD.ToString();
                    else
                        LBL_Units.Text = "None";

                    SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    softCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers2.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vsoftCMD = softCMD.ExecuteScalar();
                    if (vsoftCMD != null)
                        LBL_Soft.Text = vsoftCMD.ToString();
                    else
                        LBL_Soft.Text = "None";

                    SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    coCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers2.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vcoCMD = coCMD.ExecuteScalar();
                    if (vcoCMD != null)
                        LBL_Co.Text = vcoCMD.ToString();
                    else
                        LBL_Co.Text = "None";


                    SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    hardCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers2.DataKeys[gvr.RowIndex].Value.ToString()));
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
    protected void gvUsers3_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("View3"))
            {

                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int RemoveAt = gvr.RowIndex;



                using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
                {
                    sqlCon1.Open();

                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers3.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();
                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();
                    else
                        LBL_Course.Text = "None";

                    SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseTitleCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers3.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
                    if (VcourseTitleCMD != null)
                        LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
                    else
                        LBL_CourseTitle.Text = "None";

                    SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    unitsCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers3.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vunitsCMD = unitsCMD.ExecuteScalar();
                    if (vunitsCMD != null)
                        LBL_Units.Text = vunitsCMD.ToString();
                    else
                        LBL_Units.Text = "None";

                    SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    softCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers3.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vsoftCMD = softCMD.ExecuteScalar();
                    if (vsoftCMD != null)
                        LBL_Soft.Text = vsoftCMD.ToString();
                    else
                        LBL_Soft.Text = "None";

                    SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    coCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers3.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vcoCMD = coCMD.ExecuteScalar();
                    if (vcoCMD != null)
                        LBL_Co.Text = vcoCMD.ToString();
                    else
                        LBL_Co.Text = "None";


                    SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    hardCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers3.DataKeys[gvr.RowIndex].Value.ToString()));
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
    protected void gvUsers4_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("View4"))
            {

                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int RemoveAt = gvr.RowIndex;



                using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
                {
                    sqlCon1.Open();

                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers4.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();
                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();
                    else
                        LBL_Course.Text = "None";

                    SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseTitleCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers4.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
                    if (VcourseTitleCMD != null)
                        LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
                    else
                        LBL_CourseTitle.Text = "None";

                    SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    unitsCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers4.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vunitsCMD = unitsCMD.ExecuteScalar();
                    if (vunitsCMD != null)
                        LBL_Units.Text = vunitsCMD.ToString();
                    else
                        LBL_Units.Text = "None";

                    SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    softCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers4.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vsoftCMD = softCMD.ExecuteScalar();
                    if (vsoftCMD != null)
                        LBL_Soft.Text = vsoftCMD.ToString();
                    else
                        LBL_Soft.Text = "None";

                    SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    coCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers4.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vcoCMD = coCMD.ExecuteScalar();
                    if (vcoCMD != null)
                        LBL_Co.Text = vcoCMD.ToString();
                    else
                        LBL_Co.Text = "None";


                    SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    hardCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers4.DataKeys[gvr.RowIndex].Value.ToString()));
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
    protected void gvUsers5_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("View5"))
            {

                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int RemoveAt = gvr.RowIndex;



                using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
                {
                    sqlCon1.Open();

                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers5.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();
                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();
                    else
                        LBL_Course.Text = "None";

                    SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseTitleCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers5.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
                    if (VcourseTitleCMD != null)
                        LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
                    else
                        LBL_CourseTitle.Text = "None";

                    SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    unitsCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers5.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vunitsCMD = unitsCMD.ExecuteScalar();
                    if (vunitsCMD != null)
                        LBL_Units.Text = vunitsCMD.ToString();
                    else
                        LBL_Units.Text = "None";

                    SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    softCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers5.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vsoftCMD = softCMD.ExecuteScalar();
                    if (vsoftCMD != null)
                        LBL_Soft.Text = vsoftCMD.ToString();
                    else
                        LBL_Soft.Text = "None";

                    SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    coCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers5.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vcoCMD = coCMD.ExecuteScalar();
                    if (vcoCMD != null)
                        LBL_Co.Text = vcoCMD.ToString();
                    else
                        LBL_Co.Text = "None";


                    SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    hardCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers5.DataKeys[gvr.RowIndex].Value.ToString()));
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
    protected void gvUsers6_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        try
        {
            if (e.CommandName.Equals("View6"))
            {

                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                int RemoveAt = gvr.RowIndex;



                using (SqlConnection sqlCon1 = new SqlConnection(connectionString))
                {
                    sqlCon1.Open();

                    SqlCommand courseCMD = new SqlCommand("SELECT Course FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers6.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseCMD = courseCMD.ExecuteScalar();
                    if (VcourseCMD != null)
                        LBL_Course.Text = VcourseCMD.ToString();
                    else
                        LBL_Course.Text = "None";

                    SqlCommand courseTitleCMD = new SqlCommand("SELECT CourseTitle FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    courseTitleCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers6.DataKeys[gvr.RowIndex].Value.ToString()));
                    object VcourseTitleCMD = courseTitleCMD.ExecuteScalar();
                    if (VcourseTitleCMD != null)
                        LBL_CourseTitle.Text = VcourseTitleCMD.ToString();
                    else
                        LBL_CourseTitle.Text = "None";

                    SqlCommand unitsCMD = new SqlCommand("SELECT Units FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    unitsCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers6.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vunitsCMD = unitsCMD.ExecuteScalar();
                    if (vunitsCMD != null)
                        LBL_Units.Text = vunitsCMD.ToString();
                    else
                        LBL_Units.Text = "None";

                    SqlCommand softCMD = new SqlCommand("SELECT SoftReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    softCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers6.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vsoftCMD = softCMD.ExecuteScalar();
                    if (vsoftCMD != null)
                        LBL_Soft.Text = vsoftCMD.ToString();
                    else
                        LBL_Soft.Text = "None";

                    SqlCommand coCMD = new SqlCommand("SELECT CoReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    coCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers6.DataKeys[gvr.RowIndex].Value.ToString()));
                    object vcoCMD = coCMD.ExecuteScalar();
                    if (vcoCMD != null)
                        LBL_Co.Text = vcoCMD.ToString();
                    else
                        LBL_Co.Text = "None";


                    SqlCommand hardCMD = new SqlCommand("SELECT HardReq FROM FlowchartTable115 WHERE id=@id", sqlCon1);
                    hardCMD.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers6.DataKeys[gvr.RowIndex].Value.ToString()));
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
    protected void gvUsers7_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvUsers8_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvUsers9_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvUsers10_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvUsers11_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvUsers12_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvUsers13_RowCommand(object sender, GridViewCommandEventArgs e)
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

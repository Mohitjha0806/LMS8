using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS8
{
    public partial class StudentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Usp_insertStudentRegistration", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@StudentName", txtStudentReg.Text.Trim());
            cmd.Parameters.AddWithValue("@StudentID", txtStudentRollNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Subject", ddlSubject.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Semester", ddlSemester.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text.Trim());
            cmd.Parameters.AddWithValue("@MobileNumber", txtMobile.Text.Trim());

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

        }


    }
}

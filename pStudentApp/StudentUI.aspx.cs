using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pStudentApp
{
    public partial class StudentUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Student aStudent = new Student();
            aStudent.Regno = regTextBox.Text;
            aStudent.Name = nameTextBox.Text;
            aStudent.Email = emailTextBox.Text;
            aStudent.Address = addTextBox.Text;
            aStudent.Department = deptTextBox.Text;

            string connectionString = @"Data Source=YEASIN_TANIM_PC;Initial Catalog=UniDB;Integrated Security=True";


            SqlConnection connection = new SqlConnection(connectionString);


            string query = "INSERT INTO StuTable (RegNO, Name,Email,Address, Department)" +
                           "VALUES (@RegNO, @Name, @Email, @Address, @Department)";


            SqlCommand command =  new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@RegNO", aStudent.Regno);
            command.Parameters.AddWithValue("@Name", aStudent.Name);
            command.Parameters.AddWithValue("@Email", aStudent.Email);
            command.Parameters.AddWithValue("@Address", aStudent.Address);
            command.Parameters.AddWithValue("@Department", aStudent.Department);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();

            connection.Close();

            if (rowAffect>0)
            {
                outputLabel.Text = "save";

                regTextBox.Text = String.Empty;
                nameTextBox.Text = String.Empty;
                emailTextBox.Text = String.Empty;
                addTextBox.Text = String.Empty;
                deptTextBox.Text = String.Empty;

            }
            else
            {
                outputLabel.Text = "failed";
            }

        }


       
    }
}
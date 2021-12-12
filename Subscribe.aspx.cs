using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Dates
{
    public partial class Subscribe : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\YVAN ETOUMAN\source\repos\Dates\App_Data\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fname = txtFname.Text;
            string lname = txtLname.Text;
            string email = txtEA.Text;
            string password = txtPW.Text;
            string age = txtAge.Text;
            string color = drpColor.SelectedValue;
            string religion = drpReligion.SelectedValue;
            string sex = drpSex.SelectedValue;
            string child = drpChild.SelectedValue;

            conn.Open();
            string query = "Insert into UsersSet values (@fname,@lname,@email,@password,@age,@sex,@color,@religion,@child)";
            SqlCommand insertCommand = new SqlCommand(query, conn);
            insertCommand.Parameters.AddWithValue("@fname", fname);
            insertCommand.Parameters.AddWithValue("@lname", lname);
            insertCommand.Parameters.AddWithValue("@email", email);
            insertCommand.Parameters.AddWithValue("@password", password);
            insertCommand.Parameters.AddWithValue("@age", age);
            insertCommand.Parameters.AddWithValue("@sex", sex);
            insertCommand.Parameters.AddWithValue("@color", color);
            insertCommand.Parameters.AddWithValue("@religion", religion);
            insertCommand.Parameters.AddWithValue("@child", child);
            try
            {
                insertCommand.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            
            conn.Close();
        }
    }
}
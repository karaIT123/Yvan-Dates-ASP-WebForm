using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Dates
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\YVAN ETOUMAN\source\repos\Dates\App_Data\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtEA.Text;
            string password = txtPW.Text;

            conn.Open();
            string query = "Select * from UsersSet where email = '"+email+"' and password = '"+password+"'";
            SqlCommand selectCommand = new SqlCommand(query, conn);
            try
            {
                SqlDataReader reader = selectCommand.ExecuteReader();
                while (reader.Read())
                {
                    string id = reader["id"].ToString();
                    string sex = reader["sex"].ToString();
                    Session["id"] = id;
                    Session["sex"] = sex;
                    
                    Server.Transfer("index.aspx");
                }

            }
            catch (Exception)
            {

                throw;
            }

            conn.Close();
        }
    }
}
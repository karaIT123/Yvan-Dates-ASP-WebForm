using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dates.Model;
using System.Data.SqlClient;

namespace Dates
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\YVAN ETOUMAN\source\repos\Dates\App_Data\Database.mdf;Integrated Security=True");
        string sex = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(Session["id"].ToString()))
            {
                Server.Transfer("Login.aspx");
            }
                
            string sessionSex = Session["sex"].ToString();
            sex = sessionSex == "Men" ? "Women" : "Men";
        }

        public List<UserClass> MyList()
        {
            List<UserClass> itemlist = new List<UserClass>();
            conn.Open();
            string query = "Select * from UsersSet where sex = '"+sex+"'";
            SqlCommand selectCommand = new SqlCommand(query, conn);
            try
            {
                SqlDataReader reader = selectCommand.ExecuteReader();
                while (reader.Read())
                {
                    UserClass user = new UserClass();

                    user.id = reader["Id"].ToString();
                    user.fname = reader["Fname"].ToString();
                    user.lname = reader["Lname"].ToString();
                    user.sex = reader["Sex"].ToString();
                    user.color = reader["Color"].ToString();
                    user.religion = reader["Religion"].ToString();
                    user.child = reader["Child"].ToString() == "True" ? "Yes":"No" ;
                    user.age = reader["Age"].ToString();

                    itemlist.Add(user);
                    
                }

            }
            catch (Exception)
            {

                throw;
            }

            conn.Close();
            
            
            return itemlist;
        }
    }
}
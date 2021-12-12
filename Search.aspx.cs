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
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\YVAN ETOUMAN\source\repos\Dates\App_Data\Database.mdf;Integrated Security=True");
        bool st = false;
        //string query = "Select * from usersSet where id > 0 ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["id"].ToString()))
            {
                Server.Transfer("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            st = true;
            //MyListSearch(query);
        }
        public List<UserClass> MyListSearch()
        {
            List<UserClass> itemlist = new List<UserClass>();
            conn.Open();
            string query = "Select * from UsersSet where id > 0";
            if (st)
            {
                string age = txtAge.Text;
                if (!string.IsNullOrEmpty(age))
                {
                    query += " and age <= '" + age + "'";
                }

                string sex = drpSex.SelectedValue;
                if (!sex.Equals("0"))
                {
                    query += " and sex = '" + sex + "'";
                }

                string color = drpColor.SelectedValue;
                if (!color.Equals("0"))
                {
                    query += " and color = '" + color + "'";
                }
                string religion = drpReligion.SelectedValue;
                if (!religion.Equals("0"))
                {
                    query += " and religion = '" + religion + "'";
                }

                string child = drpChild.SelectedValue;
                if (!child.Equals("0"))
                {
                    query += " and child = '" + child + "'";
                }
            }
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
                    user.child = reader["Child"].ToString() == "True" ? "Yes" : "No";
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

        public List<UserClass> MyList()
        {
            List<UserClass> itemlist = new List<UserClass>();
            conn.Open();
            string query = "Select * from UsersSet";
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
                    user.child = reader["Child"].ToString() == "True" ? "Yes" : "No";
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
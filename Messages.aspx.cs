using Dates.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dates
{
    public partial class Messages : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\YVAN ETOUMAN\source\repos\Dates\App_Data\Database.mdf;Integrated Security=True");
        string ida = null;
        string idde = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            ida = Request.QueryString["a"];
            idde = Session["id"].ToString();
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {

            conn.Open();
            string query = "Insert into MessageSet values (@to,@from,@content,@created_at)";
            SqlCommand insertCommand = new SqlCommand(query, conn);
            insertCommand.Parameters.AddWithValue("@content", ida);
            insertCommand.Parameters.AddWithValue("@from", idde);
            insertCommand.Parameters.AddWithValue("@to", txtContenu.Text.ToString());
            insertCommand.Parameters.AddWithValue("@created_at", DateTime.Now);
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

        public List<MessageClass> MessageList()
        {
            List<MessageClass> itemlist = new List<MessageClass>();
            conn.Open();
            string query = "Select * from MessageSet where (From_id = '" + idde + "' Or To_id = '" + idde + "') AND (To_id = '" + ida + "' Or From_id = '" + ida + "') ORDER BY created_at ASC";
            SqlCommand selectCommand = new SqlCommand(query, conn);
            try
            {
                SqlDataReader reader = selectCommand.ExecuteReader();
                while (reader.Read())
                {
                    MessageClass message = new MessageClass();

                    message.id = reader["Id"].ToString();
                    message.content = reader["content"].ToString();
                    message.from = reader["from_id"].ToString();
                    message.to = reader["to_id"].ToString();

                    itemlist.Add(message);
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
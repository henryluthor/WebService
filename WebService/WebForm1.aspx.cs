using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebService
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //texto1.InnerText = "Hola";
        }

        protected void btnExecuteSP_Click(object sender, EventArgs e)
        {
            //texto1.InnerText = "Hola2";
            
            string connectionString = "Data Source = LAPTOP-R601H3RA\\SQLEXPRESS; Initial Catalog=BGTest; Integrated Security=True";

            string storedProcedureName;
            //storedProcedureName = "AccountData";
            storedProcedureName = "BGSP";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using(SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@AccountNum", idProductoTextInput.Value);

                    command.Parameters.AddWithValue("@Cedula", cedulaTextInput.Value);

                    SqlDataAdapter adapter = new SqlDataAdapter(command);

                    DataSet dataset = new DataSet();

                    adapter.Fill(dataset);

                    var tableCount = dataset.Tables.Count;


                    gridView1.DataSource = dataset.Tables[0];
                    gridView1.DataBind();

                    if(tableCount > 1)
                    {
                        gridView2.DataSource = dataset.Tables[1];
                        gridView2.DataBind();
                    }

                    //command.ExecuteNonQuery();
                }
            }
        }

    }
}
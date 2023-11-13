using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class consultarCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["descripcion"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
                this.Label2.Text = "ID:" + datos["id"];
            else 
                this.Label2.Text = "No existe la cuenta";
        }
    }
}
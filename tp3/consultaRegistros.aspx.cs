using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class consultaRegistros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                string tipo = registros["tipo"].ToString();
                if (tipo == "False")
                    tipo = "Debe";
                else
                    tipo = "Haber";
                this.Label2.Text = "Id:" + registros["id"] + "<br>" + "Monto:" + registros["monto"] + "<br>" + "Tipo:" + tipo + "<br>" + "Cuenta:" + registros["descripcion"];
            }
            else
            {
                this.Label2.Text = "No existe un registro con ese id";
            }
        }
    }
}
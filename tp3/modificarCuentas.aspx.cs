using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class modificarCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read()) {
                this.TextBox2.Text = datos["descripcion"].ToString();
            } 
            else
                this.Label2.Text = "No existe la cuenta";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.UpdateParameters["descripcion"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource1.UpdateParameters["id"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSource1.Update();
            if (cant == 1)
                this.Label4.Text = "Se modificaron los datos";
            else
                this.Label4.Text = "Error";
        }
    }
}
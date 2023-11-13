using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class modificarRegistros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceModificacion.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceModificacion.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSourceModificacion.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.TextBox2.Text = registros["monto"].ToString();
                this.DropDownList1.DataSource = this.SqlDataSourceCuentas;
                this.DropDownList1.DataValueField = registros["tipo"].ToString();
                this.DropDownList1.DataBind();
                //this.DropDownList2.Text = registros["descripcion"].ToString();
                this.DropDownList2.SelectedValue = registros["idCuenta"].ToString();
                //this.DropDownList2.DataSource = this.SqlDataSourceCuentas;
                this.DropDownList2.DataTextField = "descripcion";
                this.DropDownList2.DataValueField = "idCuenta";
                this.DropDownList2.DataBind();
            }
            else
            {
                this.Label2.Text = "No existe un registro con dicho código";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceModificacion.UpdateParameters["monto"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSourceModificacion.UpdateParameters["tipo"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceModificacion.UpdateParameters["cuenta"].DefaultValue = this.DropDownList2.SelectedValue;
            int cant;
            cant = this.SqlDataSourceModificacion.Update();
            if (cant == 1)
                this.Label6.Text = "Se modifico el registro";
            else
                this.Label6.Text = "No existe el id";
        }
    }
}
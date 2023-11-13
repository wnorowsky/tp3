using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class altaCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["descripcion"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.Insert();
            this.Label2.Text = "Se efectuó la carga";
            this.TextBox1.Text = "";
        }
    }
}
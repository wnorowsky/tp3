using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class altaRegistros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceAlta.InsertParameters["monto"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceAlta.InsertParameters["tipo"].DefaultValue = this.DropDownList2.SelectedValue;
            this.SqlDataSourceAlta.InsertParameters["cuenta"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceAlta.Insert();
            this.Label4.Text = "se efectuó la carga";
            this.TextBox1.Text = "";
        }
    }
}
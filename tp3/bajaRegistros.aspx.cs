using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3
{
    public partial class bajaRegistros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DeleteParameters["id"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSource1.Delete();
            if (cant == 1) 
                this.Label2.Text = "Se borró el registro";
            else
                this.Label2.Text = "No existe el id";
        }
    }
}
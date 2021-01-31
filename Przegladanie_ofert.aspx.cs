using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Przegladanie_ofert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if (CheckBox1.Checked) {
                GridView1.DataSource = SqlDataSource2;
             } else {
                GridView1.DataSource = SqlDataSource1;
             }
             GridView1.DataBind();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                TextBox3.Visible = true;
                TextBox3.Enabled = true;
            }
            else {
                TextBox3.Visible = false;
                TextBox3.Enabled = false;
                TextBox3.Text = "";
            }
        }

        
    }
}
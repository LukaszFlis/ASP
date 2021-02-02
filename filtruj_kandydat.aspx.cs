using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User?.Identity.IsAuthenticated == false)
                Response.Redirect("~/Account/Login.aspx");
            //User?.Identity.Name
        }

        protected void GV_DataSql_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GV_kandydat.DataBind();
        }
    }
}
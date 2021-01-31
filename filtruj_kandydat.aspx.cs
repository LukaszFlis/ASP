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

        protected void DV_kandydat_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            GV_kandydat.DataBind();
        }

        protected void GV_DataSql_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DV_oferta_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DV_kandydat_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GV_kandydat.DataBind();
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
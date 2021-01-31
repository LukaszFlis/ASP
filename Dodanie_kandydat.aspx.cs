using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DodajKandydat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User?.Identity.IsAuthenticated == false)
                Response.Redirect("~/Account/Login.aspx");
            //User?.Identity.Name
        }

        protected void DV_EdytujKandydat_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}
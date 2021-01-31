using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Dodanie_oferty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User?.Identity.IsAuthenticated == false)
                Response.Redirect("~/Account/Login.aspx");
            //User?.Identity.Name
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (GV_Dodaj_oferta.SelectedRow == null)
            {
                DV_dodaj_oferta.Visible = false;
            }
            else {
                DV_dodaj_oferta.Visible = true;
            }
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DV_dodaj_oferta_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            GV_Dodaj_oferta.DataBind();
            GV_Dodaj_oferta.SelectRow(-1);
        }

        protected void DV_dodaj_oferta_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GV_Dodaj_oferta.DataBind();
            GV_Dodaj_oferta.SelectRow(-1);
        }

        protected void DV_dodaj_oferta_ItemDeleted(object sender, DetailsViewInsertedEventArgs e)
        {
            GV_Dodaj_oferta.DataBind();
            GV_Dodaj_oferta.SelectRow(-1);
        }
    }
}
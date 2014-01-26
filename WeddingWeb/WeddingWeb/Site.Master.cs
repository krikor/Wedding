using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeddingWeb
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Request.AppRelativeCurrentExecutionFilePath;
            foreach (MenuItem item in NavigationMenu.Items)
            {
                item.Selected = item.NavigateUrl.Equals(path, StringComparison.InvariantCultureIgnoreCase);
            }
        }

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void MobileMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeddingWeb
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UserAgent.Contains("Phone") || Request.UserAgent.Contains("phone") || Request.UserAgent.Contains("android") || Request.UserAgent.Contains("Android") || Request.UserAgent.Contains("ipad") || Request.UserAgent.Contains("iPad") || Request.UserAgent.Contains("Surface") || Request.UserAgent.Contains("surface"))
            {
                Response.Redirect("~/MobileDefault.aspx");

            }
        }
    }
}

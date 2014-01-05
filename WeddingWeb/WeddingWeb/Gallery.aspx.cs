using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Threading;

namespace WeddingWeb
{
    public partial class Gallery : System.Web.UI.Page
    {
        bool show;
        int picNumber;

        protected void Page_Load(object sender, EventArgs e)
        {
            show = true;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            NextPic();
        }

        protected void NextPic()
        {
            string resultString = Regex.Match(ImageButton1.ImageUrl, @"\d+").Value;
            picNumber = Int32.Parse(resultString);

            picNumber = picNumber + 1;
            

            if (picNumber >= 7)
            {
                picNumber = 1;
            }

            string nextpicture = "~/images/pictures/img_" + picNumber.ToString() + ".jpg";
            ImageButton1.ImageUrl = nextpicture;
        }

        protected void PreviousPic()
        {
            string resultString = Regex.Match(ImageButton1.ImageUrl, @"\d+").Value;
            picNumber = Int32.Parse(resultString);

            picNumber = picNumber - 1;
           

            if (picNumber <= 0)
            {
                picNumber = 6;
            }

            string nextpicture = "~/images/pictures/img_" + picNumber.ToString() + ".jpg";
            ImageButton1.ImageUrl = nextpicture;
            
        }

        protected void StartPauseButton_Click(object sender, EventArgs e)
        {
            PreviousPic();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NextPic();
        }

    }
}
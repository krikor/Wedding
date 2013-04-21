using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.Script.Serialization;

namespace WeddingWeb
{
    public partial class RSVP : System.Web.UI.Page
    {
        string message;        

        protected void Page_Load(object sender, EventArgs e)
        {
            message = "";
           
            if (IsPostBack)
            {
                postDynamics();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String decision = "";

            if (Attending.Checked == true)
            {
                decision = "ACCEPTED";
            }
            else
            {
                decision = "DENIED";
            }

            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("krikor.ni@gmail.com");
                mail.To.Add("alexis-and-krikor@outlook.com");
                mail.Subject = "RSVP";

               
                message = message + "Email: " + EmailBox.Text +
                    "\n" + FirstName.Text + " " + LastName.Text + " has " + decision + " your invitation."
                    + "\n" + FirstName.Text + (FirstName.Text.EndsWith("s") ? "\' " : "\'s ") + "party includes " + numberAttending.Text + " people.";

                message = message + " The following guests are attending: \n";

                foreach (Control c in NamesPanel.Controls)
                {
                    if (c is TextBox)
                    {
                        TextBox temp = (TextBox)c;
                        message = message + temp.Text + " MEAL: ";
                    }
                    if (c is DropDownList)
                    {
                        DropDownList temp = (DropDownList)c;
                        message = message + temp.SelectedItem.Text + "\n";
                    }
                }

                mail.Body = message;
                SmtpServer.Port = 587;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("krikor.ni", "nor1359136");
                SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                
                //email to confirm
                MailMessage confirmation = new MailMessage();
                confirmation.From = new MailAddress("krikor.ni@gmail.com");
                confirmation.To.Add(EmailBox.Text);
                confirmation.Subject = "RSVP Confirmation";

                confirmation.Body = "Thank you for your response. \n";
                confirmation.Body = confirmation.Body + "Your reservation was: \n";
                confirmation.Body = confirmation.Body + numberAttending.Text + " Guests:\n";
                foreach (Control c in NamesPanel.Controls)
                {
                    if (c is TextBox)
                    {
                        TextBox temp = (TextBox)c;
                        confirmation.Body = confirmation.Body + temp.Text + " MEAL: ";
                    }
                    if (c is DropDownList)
                    {
                        DropDownList temp = (DropDownList)c;
                        confirmation.Body = confirmation.Body + temp.SelectedItem.Text + "\n";
                    }
                }

                confirmation.Body = confirmation.Body + "\nRegards," + "\nAlexis & Krikor";

                SmtpServer.Send(confirmation);

                Response.Redirect("ConfirmRSVP.aspx", false);
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }

        void postDynamics()
        {
            int boxesToCreate = int.Parse(numberAttending.SelectedValue);

            TextBox[] t = new TextBox[boxesToCreate];
            DropDownList[] t2 = new DropDownList[boxesToCreate];
            for (int i = 0; i < boxesToCreate; i++)
            {
                t[i] = new TextBox();
                t[i].Visible = true;
                t[i].Text = "";

                t2[i] = new DropDownList();
                t2[i].Items.Add("Chicken");
                t2[i].Items.Add("Beef");
                t2[i].Items.Add("Vegetarian");
                t2[i].Visible = true;

                Label name = new Label();
                name.Text = "Guest " + (i + 1) + " Full Name: ";
                Label food = new Label();
                food.Text = " Prefered Meal: ";

                NamesPanel.Controls.Add(name);
                NamesPanel.Controls.Add(t[i]);
                NamesPanel.Controls.Add(food);
                NamesPanel.Controls.Add(t2[i]);
                NamesPanel.Controls.Add(new LiteralControl("<br />"));

            }
        }

        protected void numberAttending_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
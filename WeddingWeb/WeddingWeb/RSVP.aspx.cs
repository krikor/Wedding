﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.Script.Serialization;
using System.Security.Cryptography;
using System.Text;

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
            string n = String.Format("{0}", Request.Form["invitePassword"]);
            if (MD5Hash(n).Equals("ae4cca422f528fe14cb9168fc941bb14"))
            {
                validPass.Visible = false;
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
                    SmtpClient SmtpServer = new SmtpClient("smtp.live.com");

                    mail.From = new MailAddress("alexis-and-krikor@outlook.com");
                    mail.To.Add("alexis-and-krikor@outlook.com");
                    mail.To.Add("lisacohen@q.com");
                    
                    mail.Subject = FirstName.Text + "'s RSVP";

                    message = message + "Contact's Email: " + EmailBox.Text +
                        "\n" + FirstName.Text + " " + LastName.Text + " has " + decision + " your invitation."
                        + "\n" + FirstName.Text + (FirstName.Text.EndsWith("s") ? "\' " : "\'s ") + "party includes " + numberAttending.Text + " person(s).";

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

                    message = message + "\nRegards," + "\nAlexis & Krikor";

                    mail.Body = message;
                    SmtpServer.Port = 587;
                    SmtpServer.UseDefaultCredentials = false;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("alexis-and-krikor@outlook.com", "dirtyhobo99");
                    SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Send(mail);

                    //email to confirm
                    MailMessage confirmation = new MailMessage();
                    confirmation.From = new MailAddress("alexis-and-krikor@outlook.com");
                    confirmation.To.Add(EmailBox.Text);
                    confirmation.Subject = "RSVP Confirmation";

                    confirmation.Body = "Thank you for your response. \n";
                    confirmation.Body = confirmation.Body + "Your reservation was: \n";
                    confirmation.Body = confirmation.Body + numberAttending.Text + " Guest(s):\n";
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
            else
            {
                validPass.Visible = true;
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

        public static string MD5Hash(string text)
        {
            MD5 md5 = new MD5CryptoServiceProvider();

            //compute hash from the bytes of text
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(text));

            //get hash result after compute it
            byte[] result = md5.Hash;

            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                //change it into 2 hexadecimal digits
                //for each byte
                strBuilder.Append(result[i].ToString("x2"));
            }

            return strBuilder.ToString();
        }

        protected void numberAttending_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Attending_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void notAttending_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}
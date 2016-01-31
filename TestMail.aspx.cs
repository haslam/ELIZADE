using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       string CURRENT_PATH = @"C:\Projects\RestralRecruitmentLocal\Mailer\";
        string current_email = "";
        try
        {
            Hashtable ht = new Hashtable();
            string CurrentDirectory = CURRENT_PATH;
            // string[] files = Directory.GetFiles(CurrentDirectory);
            string[] files = new string[]
            {
                    "oriolaakeem@gmail.com"
            };
            /*  "pateossai@yahoo.co.uk",
                    "aaadeoye@yahoo.com",
                    "mokwudolor@yahoo.com",
                    "austin.otiede@gmail.com",
                    "abana7tene@yahoo.com"
                    ,"aamygrace@yahoo.com"
                    ,"aadegbite2010@gmail.com"
                    ,"anwanaid@yahoo.com",
                    "olurotimi_afolabi@yahoo.com",
                    "j.adeyemi-offor@outlook.com"*/
            foreach (string item in files)
            {

                // current_email = item.Remove(item.Length - 4, 4);
                // string me = current_email.Remove(0, "C:\\Projects\\RestralRecruitmentLocal\\Mailer\\".Length);
                // UserDetail cuurr = DataService.Provider.GetUserDetailByUsernamewithJob(item.Trim());
                //if (cuurr != null)
                //  {
                try
                {
                    using (MailMessage mail = new MailMessage())
                    {
                        SmtpClient SmtpServer = new SmtpClient("mail.lifeworthhmo.net");
                        mail.From = new MailAddress("support@lifeworthhmo.net");
                        mail.To.Add("oriolaakeem@outlook.com");
                        mail.To.Add("oriolaakeem@gmail.com");
                        mail.To.Add("oriolaakeem@yahoo.com");
                        //mail.To.Add("oriolaakeem@outlook.com");
                        mail.Subject = "Invitation for the NERC Headquarters Recruitment Test";
                        mail.Body = "Test Email here";
                        mail.IsBodyHtml = true;
                        //string real_file = "C:\\Projects\\RestralRecruitmentLocal\\Mailer\\" + item + ".pdf";
                        //Attachment attachment = new Attachment(real_file);
                        //mail.Attachments.Add(attachment);

                        SmtpServer.Port = 995;
                        SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
                        SmtpServer.UseDefaultCredentials = false;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("support@lifeworthhmo.net", "123abc,./");
                        //SmtpServer.Timeout = 0;
                        SmtpServer.EnableSsl = true;

                        SmtpServer.Send(mail);
                    }

                    // File.Delete(item);
                }
                catch (Exception ex)
                {
                    continue;
                }
                // txtMessages.Text += current_email + " Processed <br/>";
                //  }
            }
            lblMsg.Text = "Finished!";
        }
        catch (Exception ex)
        {
            //txtMessages.Text += current_email + " Not Processed <br/>";
        }
    }    
}
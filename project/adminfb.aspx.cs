using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace project
{
    public partial class adminfb : System.Web.UI.Page
    {
        Cls con = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select User_Id,message from feedback where status='1'";
            DataSet da = con.Fn_dataset(s);
            GridView1.DataSource = da;
            GridView1.DataBind();

        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Panel1.Visible = true;
           string s = "select Name,Email from User_reg where User_Id=" + getid + "";
            SqlDataReader dr = con.fn_reader(s);
            while (dr.Read())
            {
                TextBox3.Text = dr["Name"].ToString();
                TextBox4.Text = dr["Email"].ToString();
            }
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEmail2(TextBox1.Text, TextBox2.Text, "jiki ouxc hnxe csgr", TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
            string s = "update feedback set replay_message='" + TextBox6.Text + "'";
            int i = con.Fn_nonqry(s);
        }

     }
}
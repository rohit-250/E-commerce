using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {


        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            string s = "insert into BankAccount values (" + Session["Id"] + ","+TextBox1.Text+",'"+TextBox2.Text+ "'," + TextBox3.Text + ")";
            int i = obj.Fn_nonqry(s);
           
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            string U_bill = "select Grand_Total from Bill where User_Id=" + Session["Id"] + " and status='Ordered'";
            int G_sum = Convert.ToInt32(obj.Fn_scalar(U_bill));
            Session["grandtotal"] = G_sum;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            BankAccount.ServiceClient obj = new BankAccount.ServiceClient();

            int accountNumber= Convert.ToInt32(TextBox4.Text);
            int ba = obj.checkbalance(accountNumber);

            Session["accountNumber"] =accountNumber;

            Session["balance"] = ba;

            int grandtotal= Convert.ToInt32(Session["grandtotal"]);
            if (grandtotal > ba)
            {

                Label1.Visible = true;
                Label1.Text = "insufficient :" + ba;
            }
            else
            {
                Response.Redirect("paymentcompleted.aspx");
            }



        }

       
    }
    
}
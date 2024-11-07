using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace project
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string s = "select Category_Id,Name from Category";
                DataSet ds = obj.Fn_dataset(s);
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "Name";
                DropDownList2.DataValueField = "Category_Id";
                DropDownList2.DataBind();

            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string p = "~/pdtpic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string s = "insert into Product values ('" + DropDownList2.SelectedItem.Value + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + p + "'," + TextBox3.Text + ", 'available',"+TextBox4.Text+") ";
            int n = obj.Fn_nonqry(s);
            if (n == 1)
            {
                Label1.Visible = true;
                Label1.Text = "inserted";
            }
            else
            {
                Label1.Text = "Notinserted";
            }
        }

      
    }
}
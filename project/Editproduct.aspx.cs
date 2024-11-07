using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace project
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            gridfun();
        }
        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string del = "delete from Product where Product_Id=" + getid + "";
            int i = obj.Fn_nonqry(del);
            gridfun();
        }
        public void gridfun()
        {
            string s = "select * from Product";
            DataSet ds = obj.Fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Panel1.Visible = true;
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            int i = e.NewSelectedIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["uid"] = getid;
            string sl = "select Product_Name,Product_Description,Product_Image,Product_stock,Product_Status,Price from Product where Product_Id =" +getid+"";
            SqlDataReader dr = obj.fn_reader(sl);
            while (dr.Read())
            {
                TextBox1.Text = dr["Product_Name"].ToString();
                TextBox2.Text = dr["Product_Description"].ToString();
                Image1.ImageUrl = dr["Product_Image"].ToString();
                TextBox4.Text = dr["Product_stock"].ToString();
                TextBox3.Text = dr["Product_Status"].ToString();
                TextBox5.Text = dr["Price"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            int getid = Convert.ToInt32(Session["uid"]);
            string p = "~/pdtpic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string str = "update Product set Product_Name='" + TextBox1.Text + "', Product_Description='" + TextBox2.Text + "',Product_Image='"+p+"',Product_Stock='" + TextBox4.Text + "', Product_Status='" + TextBox3.Text + "', Price=" + TextBox5.Text + "where Product_Id=" + getid+"";
            int x = obj.Fn_nonqry(str);
            gridfun();
        }

        


    }
}
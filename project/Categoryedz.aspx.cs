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
    public partial class WebForm9 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            gridfun();
        }
        public void gridfun()
        {
            string s = "select * from Category";
            DataSet ds = obj.Fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
      
        protected void LinkButton4_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string del = "delete from Category where Category_Id=" + getid + "";
            int i = obj.Fn_nonqry(del);
            gridfun(); 
        }



        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Panel1.Visible = true;
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            int i = e.NewSelectedIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["uid"] = getid;
           string sl = "select Name,Description,Image,Status from Category where Category_Id =" + getid + "";
            SqlDataReader dr = obj.fn_reader(sl);
            while (dr.Read())
            {
                TextBox1.Text = dr["Name"].ToString();
                TextBox2.Text = dr["Description"].ToString();
                Image1.ImageUrl = dr["Image"].ToString();
                TextBox3.Text = dr["Status"].ToString();
                

            }
        }

     


        protected void Button1_Click(object sender, EventArgs e)
        {
            int getid = Convert.ToInt32(Session["uid"]);
            string p = "~/pdtpic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string str = "update Category set Name='" + TextBox1.Text + "', Description='" + TextBox2.Text + "',Image='" + p + "',Status='" + TextBox3.Text + "' where Product_Id=" + getid + "";
            int x = obj.Fn_nonqry(str);
            gridfun();
        }
    }
}
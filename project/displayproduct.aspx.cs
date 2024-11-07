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
    public partial class WebForm11 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select Product_Name,Product_Description,Product_Image,Product_Status,Price from Product where Product_Id=" + Session["pid"] + "";
                SqlDataReader dr = obj.fn_reader(s);
                while (dr.Read())
                {
                    Label1.Text = dr["Product_Name"].ToString();
                    Label2.Text = dr["Product_Description"].ToString();
                    Label3.Text = dr["Product_Status"].ToString();
                    Label5.Text = dr["Price"].ToString();
                    Image1.ImageUrl = dr["Product_Image"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(Cart_Id) from Cart";
                string id = obj.Fn_scalar(s);
            int Cart_Id = 0;
            if (id == "")
            {
                Cart_Id = 1;
            }
            else
            {
                int newid = Convert.ToInt32(id);
                Cart_Id = newid + 1;
            }

            int quantity = Convert.ToInt32(TextBox1.Text);

            string Productquantity = "select Product_Stock from Product where Product_Id=" + Session["pid"] + "";
            int Product_stock = Convert.ToInt32(obj.Fn_scalar(Productquantity));

            if (quantity<=Product_stock)
            {
                string ad = "select Price from Product where Product_Id=" + Session["pid"] + "";
                string p = obj.Fn_scalar(ad);
                int price = Convert.ToInt32(p);


                int totalprice = price * quantity;



                string str = "insert into Cart values(" + Cart_Id + "," + Session["pid"] + "," + Session["id"] + "," + TextBox1.Text + "," + totalprice + ")";
                int i = obj.Fn_nonqry(str);
                if (i == 1)
                {
                    Label6.Visible = true;
                    Label6.Text = "Added";
                }
             
            }
            else
            {
                Label6.Visible = true;

                Label6.Text = "Out of stock";
                
            }
        

           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewproduct.aspx");
        }
    }
}
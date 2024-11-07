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
    public partial class WebForm12 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string t_Price = "select sum(Total_Price) from Cart where User_Id=" + Session["id"] + "";
            string s_p = obj.Fn_scalar(t_Price);

            string emp = "select count(Cart_ID) from Cart where User_Id=" + Session["id"] + "";
            int ty= Convert.ToInt32( obj.Fn_scalar(emp));
            if (ty > 0)
            {
               Label1.Text = "Grand Price :"+ s_p;
            }
       
            if (!IsPostBack)
                cart_display();
        }
        public void cart_display()
        {
            string s = "select Cart_Id,Product.Product_Name,Product.Product_Description,Cart.Quantity,Cart.Total_Price from Product inner join Cart on Product.Product_Id=Cart.Product_Id  where User_Id=" + Session["id"] + "";
            DataSet ds = obj.Fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from Cart where Cart_Id=" + getid + "";
            int ie = obj.Fn_nonqry(del);
            cart_display();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            cart_display();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            cart_display();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtQuantity = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
           
            string product_id= "select Product_Id from cart where Cart_Id=" + getid + "";
            string p_id = obj.Fn_scalar(product_id);
            string price = "select Price from Product where Product_Id='" + p_id + "'";
            string ps = obj.Fn_scalar(price);
            int p_Price = Convert.ToInt32(ps);

            int quantity = Convert.ToInt32(txtQuantity.Text);
            int totalprice = p_Price * quantity;

            string Q_update = "update Cart set Quantity = " + txtQuantity.Text + ",Total_Price= " + totalprice + " where Cart_Id = " + getid + "";
            int ie = obj.Fn_nonqry(Q_update);

         
     
            cart_display();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            
            string c = "select count(Cart_Id) from Cart where User_Id=" + Session["id"] + "";
            int count = Convert.ToInt32(obj.Fn_scalar(c));
            if (count >0)
            {
                string s = "select Max(Cart_Id) from Cart where User_Id=" + Session["id"] + "";
                int max = Convert.ToInt32(obj.Fn_scalar(s));
                for (int i = 1; i <= max; i++)
                {
                    string cart = "select Product_Id,User_Id,Quantity,Total_Price from Cart where Cart_Id=" + i + " and User_Id=" + Session["id"] + "";
                    SqlDataReader dr = obj.fn_reader(cart);
                    while (dr.Read())
                    {
                        int product_id = Convert.ToInt32(dr["Product_Id"]);
                        int user_id = Convert.ToInt32(dr["User_Id"]);
                        int quantity = Convert.ToInt32(dr["Quantity"]);
                        int total_price = Convert.ToInt32(dr["Total_Price"]);

                        string insert = "insert into Ordertable values (" + product_id + "," + user_id + "," + quantity + ",'" + total_price + "','Order') ";
                        int it = obj.Fn_nonqry(insert);

                        string delete = "Delete from cart where Cart_Id=" + i + " and User_Id=" + Session["id"] + "";
                        int del = obj.Fn_nonqry(delete);
                        break;
                    }


                }
                string sum = "select sum(Total_Price) from Ordertable where User_Id=" + Session["Id"] + " and status='Order'";
                int sm = Convert.ToInt32(obj.Fn_scalar(sum));

                string date = DateTime.Now.ToString("yyyy-MM-dd");

                String bill = "select count(Bill_Id) from Bill where User_Id=" + Session["Id"] + " and status='Ordered'";
                int a = Convert.ToInt32(obj.Fn_scalar(bill));

                if (a > 0)
                {
                    string updatebill = "update Bill set Grand_Total=" + sm + " where User_Id=" + Session["Id"] + " and status='Ordered' ";
                    int up = obj.Fn_nonqry(updatebill);

                    Response.Redirect("order.aspx");
                }
                else
                {
                    string bill1 = "insert into Bill values (" + Session["Id"] + "," + sm + ",'" + date + "','Ordered') ";
                    int insrt = obj.Fn_nonqry(bill1);
  
                    Response.Redirect("order.aspx");
                     
                }

                

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Add to Cart";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("order.aspx");
        }
    }
}
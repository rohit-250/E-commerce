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
    public partial class WebForm13 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Panel1.Visible = true;
            string use = "select * from User_reg where User_Id=" + Session["Id"] + "";
            DataTable dt = obj.fn_datatable(use);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            string der = "select Product.Product_Name,Product.Product_Image,Product.Product_Description,Ordertable.Quantity,Ordertable.Total_Price from Product inner join Ordertable on Ordertable.Product_Id=Product.Product_Id where Ordertable.User_Id=" + Session["Id"] + " and Ordertable.status='Order'";

            DataTable dtt = obj.fn_datatable(der);
            DataList2.DataSource = dtt;
            DataList2.DataBind();


            string bill = "select * from Bill where User_Id=" + Session["Id"] + " and status='ordered'";
            SqlDataReader dr = obj.fn_reader(bill);
            while (dr.Read())
            {
                Label4.Text = dr["Grand_Total"].ToString();
                Label5.Text = dr["status"].ToString();
                Label7.Text = dr["Date_Type"].ToString();
            }

        } 
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }
    }
}
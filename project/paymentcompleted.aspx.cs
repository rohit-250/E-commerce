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
    public partial class paymentcompleted : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int grandtotal = Convert.ToInt32(Session["grandtotal"]);
                int bal = Convert.ToInt32(Session["balance"]);

                int balance = bal - grandtotal;

                string update_account = "update BankAccount set Balance =" + balance + " where User_Id =" + Session["Id"] + " and Account_No=" + Session["accountNumber"] + "";
                int bank_balance = obj.Fn_nonqry(update_account);


                string update_B = "update Bill set status ='Paid' where User_Id = " + Session["Id"] + "";
                int update_bill = obj.Fn_nonqry(update_B);

               
                //  string Prt_id = "select Product_Id from Ordertalbe where User_Id=" + Session["Id"] + " and status='Order'";

                // string updateorder = "update Ordertable set status='Ordered'  where User_Id=" + Session["Id"] + " and status='Order'";
                //int up = obj.Fn_nonqry(updateorder);

                string Product_id2 = "select Product_Id from Ordertable where User_Id=" + Session["Id"] + " and status='Order'";
                List<int> lst = new List<int>();
                SqlDataReader dr = obj.fn_reader(Product_id2);
                while (dr.Read())
                {
                    lst.Add (Convert.ToInt32(dr["Product_Id"].ToString()));
                }

                 foreach(var p in lst)
                {
                   string Quantity= "select Product_Stock from Product where  Product_Id=" + p + "";
                    int product_quantity = Convert.ToInt32(obj.Fn_scalar(Quantity));

                    string Quantity2 = "select Quantity from Ordertable where User_Id=" + Session["Id"] + " and  Product_Id=" + p + "";
                    int order_quantity = Convert.ToInt32(obj.Fn_scalar(Quantity2));


                     
                    int updated_quantity=product_quantity - order_quantity;

                    if(updated_quantity==0)
                    {


                        string q = "update Product set Product_Status='outofstock' , Product_Stock= 0 where  Product_Id=" + p + "";
                        int set_quantity = obj.Fn_nonqry(q);

                    }
                    else
                    {
                     
                        string q = "update Product set Product_Stock=" + updated_quantity + " where Product_Id=" + p + "";
                        int set_quantity = obj.Fn_nonqry(q);
                    }

                    string updateorder = "update Ordertable set status='Ordered'  where User_Id=" + Session["Id"] + " and Product_Id=" + p + "";
                    int up = obj.Fn_nonqry(updateorder);

                }

                
                 string max= "select max(Bill_Id) from Bill where User_Id= " + Session["Id"] + "  and status = 'paid'";
                int maxid = Convert.ToInt32( obj.Fn_scalar(max));

                string bill = "SELECT " +
                "User_reg.Name, User_reg.Email, User_reg.Phone, User_reg.Address, " +
                "Bill.Grand_Total, Bill.status " +
                "FROM User_reg " +
                "JOIN Bill ON User_reg.User_Id = Bill.User_Id " +
                "WHERE User_reg.User_Id =" + Session["Id"] + "  AND Bill.Bill_Id = "+maxid+"";

                DataTable dt = obj.fn_datatable(bill);
                DataList1.DataSource = dt;
                DataList1.DataBind();



                Label1.Visible = true;
                Label1.Text = "Oreder placed";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("feedback.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string bill = "SELECT " +
            "User_reg.Name, User_reg.Email, User_reg.Phone, User_reg.Address, " +
            "Bill.Grand_Total, Bill.status " +
            "FROM User_reg " +
            "JOIN Bill ON User_reg.User_Id = Bill.User_Id " +
            "WHERE User_reg.User_Id =" + Session["Id"] + "  AND Bill.status = 'paid'";

            DataTable dt = obj.fn_datatable(bill);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}
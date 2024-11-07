using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace project
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        Cls obj = new Cls();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from product where Category_ID=" + Session["uid"] + "";
                DataTable dt = obj.fn_datatable(s);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

       

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = getid;
            Response.Redirect("displayproduct.aspx");
        }
    }
}
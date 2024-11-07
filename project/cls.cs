using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public class Cls
    {
        SqlConnection con;
        SqlCommand cmd;

        public Cls()
        {
            con = new SqlConnection(@"server=DESKTOP-8EGJO2M\SQLEXPRESS;database=Project;integrated security=true");
        }
        public int Fn_nonqry(string qy)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(qy, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string Fn_scalar(string qy)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(qy, con);
            con.Open();
            string i = cmd.ExecuteScalar().ToString();
            con.Close();
            return i;
        }

        public SqlDataReader fn_reader(string qy)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(qy, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
       
        public DataSet Fn_dataset(string qy)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(qy, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable fn_datatable(string qy)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(qy, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPLoginSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection SQLconn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=ASPLogin; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("SELECT * FROM useraccount WHERE UserName='"+TextUsername.Text+"' AND Password='"+TextPassword.Text+"'",SQLconn);

            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            MsgLabel.Text = "";
            if (DT.Rows.Count > 0)
            {
                MsgLabel.Visible=true;
                MsgLabel.Text = "You've succesfully logged in";
                MsgLabel.ForeColor = System.Drawing.Color.Green;

                Session["username"] = DT.Rows[0][1];
                Session["role"]= DT.Rows[0][3];
                Response.Redirect("Users.aspx");

            }    
            else
            {
                MsgLabel.Visible = true;
                MsgLabel.Text = "Invalid username or Password";
                MsgLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
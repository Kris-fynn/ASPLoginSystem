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
    public partial class Users : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = Session["username"].ToString()+", "+ Session["role"].ToString();
            if (Session["role"].ToString() == "Administrator")
            {
                btnAddUsers.Enabled = true;
                btnDelete.Enabled = true;
                btnEdit.Enabled = true;
            }else if(Session["role"].ToString() == "FrontDesk")
            {
                btnAddUsers.Enabled = false;
                btnDelete.Enabled = false;
                btnEdit.Enabled = false;
            }else if(Session["role"].ToString() == "Manager")
            {
                btnAddUsers.Enabled = false;
                btnDelete.Enabled = false;
                btnEdit.Enabled = true;
            }
            SqlConnection SQLconn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=ASPLogin; Integrated Security=True");
            string sql = "SELECT * from useraccount";
            SqlCommand cmd = new SqlCommand(sql, SQLconn);
            SQLconn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            SQLconn.Close();
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void btnAddUsers_Click(object sender, EventArgs e)
        {
            DropDownListUsers.Visible = false;
            lblNewName.Visible = true;
            lblPassword.Visible = true;
            Label2.Visible = true;
            txtNewPass.Visible = true;
            txtNewName.Visible = true;
            RadioButtonList1.Visible = true;
            btnAdd.Visible = true;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DropDownListUsers.Visible = false;
            string name, password, role;
            name = txtNewName.Text.ToString();
            password = txtNewPass.Text.ToString();
            role = RadioButtonList1.SelectedItem.Text;

            SqlConnection SQLconn = new SqlConnection("Data Source=DESKTOP-PV4SGFP; Initial Catalog=ASPLogin; Integrated Security=True");
            string sql = "INSERT INTO useraccount(UserName,Password,UserType) VALUES('"+name+"','"+password+"','"+role+"')";
            SqlCommand cmd = new SqlCommand(sql, SQLconn);
            SQLconn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            SQLconn.Close();
            Response.Redirect("Users.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DropDownListUsers.Visible = true;
            LabelDropdown.Visible = true;
            SqlConnection SQLconn = new SqlConnection("Data Source=DESKTOP-PV4SGFP; Initial Catalog=ASPLogin; Integrated Security=True");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("SELECT * FROM useraccount", SQLconn);

            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            for(int i = 0; i < DT.Rows.Count; i++)
            {
                DropDownListUsers.Items.Add(DT.Rows[i][0].ToString()+"-"+ DT.Rows[i][1].ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CRUD_HDFC_LOAN
{
    public partial class RemoveApplication : System.Web.UI.Page
    {
        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\2MCA\.NET\CRUD_HDFC_LOAN\CRUD_HDFC_LOAN\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnremoveApplication_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            string query = "Delete from Loan Where AccountNo=@actno";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@actno", txtsavingno.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Record Deleted.......')</Script>");
        }

        protected void btngetactno_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "select * from Loan Where AccountNo=@Accountno";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Accountno", txtsavingno.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtloanno.Text = dr[0].ToString();
                ddLoanCategory.SelectedValue = dr[2].ToString();
                ddloantype.SelectedValue = dr[3].ToString();
                txtissueDate.Text = dr[4].ToString();
                txtloanAmmount.Text = dr[5].ToString();
                txtAddress.Text = dr[6].ToString();
                txtRemarks.Text = dr[7].ToString();
            }
        }
    }
}
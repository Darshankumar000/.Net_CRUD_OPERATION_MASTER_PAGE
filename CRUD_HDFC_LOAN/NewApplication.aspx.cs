using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CRUD_HDFC_LOAN
{
    public partial class NewApplication : System.Web.UI.Page
    {
        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\2MCA\.NET\CRUD_HDFC_LOAN\CRUD_HDFC_LOAN\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddnewApplication_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);

            con.Open();

            string query = "insert into Loan(AccountNo,LoanCategory,LoanType,IssueDate,Amount,CurrentAddress,LoanRemarks) " +
                "values(@accountno,@loancat,@loantype,@loandate,@loanamt,@currentadd,@loanremark)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@accountno", txtSavingActNo.Text);
            cmd.Parameters.AddWithValue("@loancat",ddLoanCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@loantype",ddloantype.SelectedValue);
            cmd.Parameters.AddWithValue("@loandate",txtissueDate.Text);
            cmd.Parameters.AddWithValue("@loanamt",txtloanAmmount.Text);
            cmd.Parameters.AddWithValue("@currentadd",txtAddress.Text);
            cmd.Parameters.AddWithValue("@loanremark",txtRemarks.Text);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Write("<script>alert('Record Inserted............')</script>");
        }
    }
}
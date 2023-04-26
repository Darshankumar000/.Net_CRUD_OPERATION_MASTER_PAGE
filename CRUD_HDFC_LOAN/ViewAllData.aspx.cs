using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace CRUD_HDFC_LOAN
{
    public partial class ViewAllData : System.Web.UI.Page
    {
        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\2MCA\.NET\CRUD_HDFC_LOAN\CRUD_HDFC_LOAN\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "select Loan.LoanNo,Account.SavingActNo,Account.ActHolderName,Account.Profession,Account.Email,Account.ContactNo,Loan.LoanCategory,Loan.LoanType,Loan.IssueDate,Loan.Amount,Loan.CurrentAddress,Loan.LoanRemarks from Account ,Loan  Where Account.SavingActNo=Loan.AccountNo";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}
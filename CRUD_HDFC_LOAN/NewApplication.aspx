<%@ Page Title="" Language="C#" MasterPageFile="~/HDFC.Master" AutoEventWireup="true" CodeBehind="NewApplication.aspx.cs" Inherits="CRUD_HDFC_LOAN.NewApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ShowMessageBox="true" runat="server" />
    <center>
        <table cellSpacing="5">
            <tr>
                <th colspan="2"><h1>NEW LOAN APPLICATION</h1></th>
            </tr>
            <tr>
                <td>Saving Account No :</td>
                <td>
                    <asp:TextBox ID="txtSavingActNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RFVtxtSavingActNo" 
                        runat="server"
                        ErrorMessage="Account No is required"
                        Text="*"
                        ForeColor="Red"
                        ControlToValidate="txtSavingActNo"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                 <td>Loan Category :</td>
                <td>
                    <asp:DropDownList ID="ddLoanCategory" runat="server">
                        <asp:ListItem>--Select Loan Category--</asp:ListItem>
                        <asp:ListItem>Home Loan</asp:ListItem>
                        <asp:ListItem>Gold Loan</asp:ListItem>
                        <asp:ListItem>Education Loan</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                 <td>Loan Type :</td>
                <td>
                    <asp:DropDownList ID="ddloantype" runat="server">
                        <asp:ListItem>--Select Loan Type--</asp:ListItem>
                        <asp:ListItem>Secured Loan</asp:ListItem>
                        <asp:ListItem>Unsecurd Loan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                 <td>Loan Issue Date :</td>
                <td>
                    <asp:TextBox ID="txtissueDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RFVtxtissuedate" 
                        runat="server"
                        ErrorMessage="Issue Date is required"
                        Text="*"
                        ForeColor="Red"
                        ControlToValidate="txtissueDate"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                 <td>Loan Amount :</td>
                <td>
                    <asp:TextBox ID="txtloanAmmount" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RFVtxtamount" 
                        runat="server"
                        ErrorMessage="Amount is required"
                        Text="*"
                        ForeColor="Red"
                        ControlToValidate="txtloanAmmount"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                 <td>Current Address :</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RFVtxtaddress" 
                        runat="server"
                        ErrorMessage="Address is required"
                        Text="*"
                        ForeColor="Red"
                        ControlToValidate="txtAddress"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                 <td>Loan Remarks :</td>
                <td>
                    <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="RFVtxtremarks" 
                        runat="server"
                        ErrorMessage="Remarks is required"
                        Text="*"
                        ForeColor="Red"
                        ControlToValidate="txtRemarks"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <th colspan="2">
                    <asp:Button ID="btnAddnewApplication" runat="server" Text="Add New Application" OnClick="btnAddnewApplication_Click" />
                </th>
            </tr>
        </table>
    </center>
</asp:Content>

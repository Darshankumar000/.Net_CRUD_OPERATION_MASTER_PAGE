<%@ Page Title="" Language="C#" MasterPageFile="~/HDFC.Master" AutoEventWireup="true" CodeBehind="RemoveApplication.aspx.cs" Inherits="CRUD_HDFC_LOAN.RemoveApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <center>
        <table cellSpacing="5">
            <tr>
                <th colspan="2"><h1>REMOVE LOAN APPLICATION</h1></th>
            </tr>
            <tr>
                <td>Loan No :</td>
                <td>
                    <asp:TextBox ID="txtloanno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Saving Account No :</td>
                <td>
                    <asp:TextBox ID="txtsavingno" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btngetactno" runat="server" Text="GET INFORMATION" OnClick="btngetactno_Click" />
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
                </td>
            </tr>
             <tr>
                 <td>Loan Amount :</td>
                <td>
                    <asp:TextBox ID="txtloanAmmount" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td>Current Address :</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td>Loan Remarks :</td>
                <td>
                    <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <th colspan="2">
                    <asp:Button ID="btnremoveApplication" runat="server" Text="Remove Application" OnClick="btnremoveApplication_Click"  />
                </th>
            </tr>
        </table>
    </center>
</asp:Content>

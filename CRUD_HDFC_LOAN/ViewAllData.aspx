<%@ Page Title="" Language="C#" MasterPageFile="~/HDFC.Master" AutoEventWireup="true" CodeBehind="ViewAllData.aspx.cs" Inherits="CRUD_HDFC_LOAN.ViewAllData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:TemplateField HeaderText="Loan No">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("LoanNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Account No">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("SavingActNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Account Holder Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ActHolderName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Profession">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Profession") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("ContactNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loan Category">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("LoanCategory") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loan Type">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("LoanType") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Issue Date">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("IssueDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ammount">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Current Address">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("CurrentAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loan Remarks">
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("LoanRemarks") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

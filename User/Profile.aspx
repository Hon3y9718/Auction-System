<%@ Page Title="Profile -AS" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:DataList ID="DataList1" runat="server" class="dataList" BackColor="Gray"
            CellPadding="3" CellSpacing="2"
            Font-Size="Small" GridLines="Both" RepeatColumns="1" RepeatDirection="Horizontal"
            Width="600px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderTemplate>
                Profile</HeaderTemplate>
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="0px" />
            <ItemTemplate>
                <b>User Name: </b>
                <asp:Label ID="username" runat="server" class="value" Text='<%# Eval("username") %>'></asp:Label>
                <br /><br />
                <b>Name:</b>
                <asp:Label ID="name" runat="server" class="value" Text='<%# Eval("Name") %>'></asp:Label>
                <br /><br />
               <b>Address:</b>
                <asp:Label ID="add" runat="server" class="value" Text=' <%# Eval("address") %>'></asp:Label>
                <br /><br />
                <b>Bank Name:</b>
                <asp:Label ID="bN" runat="server" class="value" Text='<%# Eval("BankName") %>'></asp:Label>
                <br /><br />
                <b>Email:</b>
                <asp:Label ID="email" runat="server" class="value" Text='<%# Eval("Email") %>'></asp:Label>
                <br /><br />
                <b>Mobile:</b>
                <asp:Label ID="mob" runat="server" class="value" Text='<%# Eval("Mobile") %>'></asp:Label>
                <br /><br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="lblMsg" runat="server" />
        </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/AuctMasterPage.master" AutoEventWireup="true" CodeFile="AdminMain.aspx.cs" Inherits="Admin_AdminMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Admin/styles.css" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftDiv">
        <h1>Admin Login</h1>
        <div class="Box">
           <a href="Home.aspx"><img class="userImg" src="Images/User.png" /></a>
            <h3>Admin Sign In</h3>
                <div class="inputBox">
                   <asp:TextBox ID="userName" runat="server" placeholder="User Name" required="" ></asp:TextBox>
                </div>
                
                <div class="inputBox">
                     <asp:TextBox ID="Password" runat="server" class="Pass" placeholder="Password" type="password" required=""></asp:TextBox>
                </div>
               
            <asp:Button ID="Submit" runat="server" Text="Sign In" class="btn" OnClick="Submit_Click" />
            <p>Not an Admin?</p>
            <a href="Login.aspx">Go to User Login</a>
        </div>
    </div>
</asp:Content>


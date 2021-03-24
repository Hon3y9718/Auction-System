<%@ Page Title="Login - AS" Language="C#" MasterPageFile="~/AuctMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Login.css" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftDiv">
        <div class="Box">
           <a href="Home.aspx"><img class="userImg" src="Images/User.png" /></a>
            <h3>Sign In</h3>
                <div class="inputBox">
                   <asp:TextBox ID="userName" runat="server" placeholder="User Name" required="" ></asp:TextBox>
                </div>
                
                <div class="inputBox">
                     <asp:TextBox ID="Password" runat="server" class="Pass" placeholder="Password" type="password" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:TextBox>
                </div>
               
            <asp:Button ID="Submit" runat="server" Text="Sign In" class="btn" OnClick="Submit_Click" />
            <p>Don't Have an Account?</p>
            <a href="Register.aspx">Register here</a>
            <a href="AdminMain.aspx">Admin Login</a>
        </div>
    </div>
    <div class="rightDiv">
        <img class="animate" src="Images/LoginPage.svg" />
    </div>
</asp:Content>


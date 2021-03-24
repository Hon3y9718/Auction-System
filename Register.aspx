<%@ Page Title="Register - AS" Language="C#" MasterPageFile="~/AuctMasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Register.css" rel="stylesheet" />   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftDiv">
        <div class="Box" id="Box">
           <a href="Home.aspx"><img class="userImg" src="Images/User.png" /></a>
            <h3>Register</h3>
                 <div class="inputBox">
                    <asp:TextBox ID="Name" runat="server" placeholder="Full Name" required=""></asp:TextBox>
                </div>
                <div class="inputBox">
                    <asp:TextBox ID="Email" runat="server" placeholder="Email" required=""  type="email"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <asp:TextBox ID="userName" runat="server" placeholder="User Name" required="" ></asp:TextBox>
                </div>
                
                <div class="inputBox">
                    <asp:TextBox ID="Password" runat="server" class="Pass" placeholder="Password" type="password" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:TextBox>
                </div>
                <div class="inputBox">
                   <asp:TextBox ID="ConfirmPassword" runat="server" onkeypress="checkPass()" class="ConPass" placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required=""></asp:TextBox>
                </div>
                 <div class="inputBox">
                    <asp:TextBox ID="Mobile" runat="server" placeholder="Mobile Number" required="" pattern="[1-9]{1}[0-9]{9}"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <asp:TextBox ID="AcNumber" runat="server" placeholder="Account Number" required="" pattern="[0-9]{9,18}"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <asp:TextBox ID="Bank" runat="server" placeholder="Bank Name" required=""></asp:TextBox>
                </div>
                <div class="inputBox">
                    <asp:TextBox ID="Address" runat="server" placeholder="Address" required=""></asp:TextBox>
                </div>
                <div class="inputBox">
                    <asp:DropDownList ID="u_type" runat="server" class="DropDown" required="">
                        <asp:ListItem Value="Select">Select</asp:ListItem>
                        <asp:ListItem>Vendor</asp:ListItem>
                        <asp:ListItem>Bidder</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <p> </p>
                <asp:Button ID="Submit" runat="server" Text="Register" class="btn" OnClick="Submit_Click"/>
            <p>Already Have an Account?</p>
            <a href="Login.aspx">Login here</a>
        </div>
    </div>
</asp:Content>


<%@ Page Title="Contact us" Language="C#" MasterPageFile="~/AuctMasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftDiv">
        <div class="Box">
           <a href="Home.aspx"><img class="userImg" src="Images/User.png" /></a>
            <h3>Contact us</h3>
                <div class="inputBox">
                    <asp:TextBox ID="UserEmail" runat="server" placeholder="Email"></asp:TextBox>
                </div>
                
                <div class="inputBox">
                    <asp:TextBox ID="Message" runat="server" placeholder="Message to us..."></asp:TextBox>
                </div>
                <asp:Button ID="Button" runat="server" CssClass="btn" Text="Send" OnClick="SendMsg" />
            <p>Or Email us/Call us:</p>
            <a href="mailto:dummy@AuctionSystem.com">dummy@AuctionSystem.com</a>
            <a href="tel:9737492921">+91-9737492921</a>
        </div>
    </div>
    <div class="rightDiv">
        <img class="animate" src="Images/Contact.svg" />
    </div>
</asp:Content>


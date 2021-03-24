<%@ Page Title="" Language="C#" MasterPageFile="~/AuctMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
    <div class="leftDiv">
       <h1>Simplified Auction</h1>
        <p><span class="Span1">Auction</span><span class="Span2">System</span> is the Simplified Version of Auction.<br/>
            Where you can Sale or Purchase anything on your own prices. Bid with full Confidence and get it Delivered.<br/>
            Sale with profits in your Bank Account. 💸
        </p>
        <a class="StartedButton" href="Register.aspx">Get Started Now</a><br/>
    </div>
    <div class="rightDiv">
         <img class="animate" src="Images/Home.svg" />
    </div>
</div>

<div class="row">
    <div class="HowRight">
        <img class="animate" src="Images/How.svg" />
    </div>
    <div class="HowLeft">
        <h1>How does it work?</h1>
        <p>There are two categories of users, Cutomer & Vendor. Vendor sales products and Customer purchases. Customer who puts the Highest Bid on a particular product takes the product home. One Cutomer can put more than one Bid on single Product. </br>
            Vendors can also have more than one product on Sale at the same time.
        </p>
    </div>
</div>

<div class="row">
    <div class="HappyDivLeft">
       <h1>Seems Happy!</h1>
        <p>You seems to be Happy! After knowing all about us.<br/>
            Why not give us a try?<br/>
            Register Now and Start your first Auction... 
        </p>
        <br />
        <a class="StartedButton1" href="Register.aspx">Register Now</a><br />
        <p class="Log">Already have an Account?</p><br />
        <a class="LoginButton" href="Login.aspx">Login Here</a><br />
    </div>
    <div class="HappyDivRight">
         <img class="animate" src="Images/Celebrate.svg" />
    </div>

</div>

</asp:Content>


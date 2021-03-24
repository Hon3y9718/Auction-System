<%@ Page Title="New Auction" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="AddAuction.aspx.cs" Inherits="User_AddAuction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Admin/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftDiv">
        <h1>Add New Auction</h1>
        <div class="Box">
                <div class="inputBox">
                   <asp:TextBox ID="auctionName" runat="server" placeholder="Name" required="" ></asp:TextBox>
                </div>
                
                <div class="inputBox">
                     <asp:TextBox ID="StartPrice" runat="server" placeholder="Starting Price" required=""></asp:TextBox>
                </div>

                 <div class="inputBox">
                      <p>Start Date: </p>
                     <asp:TextBox ID="StartDate" runat="server" placeholder="Auction Start Date" TextMode="Date" required="" CssClass="datePicker"></asp:TextBox>
                </div>

                 <div class="inputBox">
                     <p>End Date: </p>
                     <asp:TextBox ID="EndDate" runat="server" placeholder="Auction End Date" TextMode="Date" required="" CssClass="datePicker"></asp:TextBox>
                </div>
               
            <asp:Button ID="Submit" runat="server" Text="Add Auction" class="btn" OnClick="Submit_Click"  />
        </div>
    </div>
</asp:Content>


<%@ Page Title="Bids -AS" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AllBids.aspx.cs" Inherits="Admin_AllBids" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../User/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wlcm">
        <h3>All Bids</h3>      
    </div>

    <div class="SearchBox" id="searchDiv">
        <asp:TextBox ID="SearchBox" runat="server" placeholder="Search by Auction ID" required="" CssClass="SearchInput"></asp:TextBox>
        <asp:Button ID="SearchBtn" runat="server" Text="Search" OnClick="SearchBtn_Click" CssClass="BidButton"/>
    </div>

    <div class="girdView">

        <asp:GridView ID="GridView1" runat="server" AllowSorting="False" AutoGenerateColumns="False" DataKeyNames="i_auto_id" Width="100%" Height="150px" CssClass="girdView" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="i_auto_id" HeaderText="Bid ID" InsertVisible="False" ReadOnly="True" SortExpression="i_auto_id" />
                <asp:BoundField DataField="i_auction_id" HeaderText="Auction ID" SortExpression="i_auction_id" />
                <asp:BoundField DataField="bidCreateDate" HeaderText="Create Date" SortExpression="bidCreateDate" />
                <asp:BoundField DataField="bidPrice" HeaderText="Bid Price" SortExpression="bidPrice" />
                <asp:BoundField DataField="i_uid" HeaderText="User ID" SortExpression="i_uid" />
                <asp:ButtonField ButtonType="Button" CommandName="sale" DataTextField="i_auto_id" DataTextFormatString="Sell" ControlStyle-CssClass="saleButton" Text="Sell" />
                <asp:ButtonField ButtonType="Button" CommandName="call" DataTextField="i_uid" DataTextFormatString="Call" ControlStyle-CssClass="callButton" Text="Call" />

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
       
        <asp:Label ID="Label1" runat="server" Text="Nothing to Show" />

    </div>

</asp:Content>


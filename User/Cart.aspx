<%@ Page Title="Cart -AS" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="User_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wlcm">
        <h2>All your Bids are here.</h2>
    </div>

    <div class="SearchBox" id="searchDiv">
        <asp:TextBox ID="SearchBox" runat="server" placeholder="Search by Auction ID" required="" CssClass="SearchInput"></asp:TextBox>
        <asp:Button ID="SearchBtn" runat="server" Text="Search" OnClick="SearchBtn_Click" CssClass="BidButton"/>    
    </div>

    <div class="girdView">

        <asp:GridView ID="GridView1" runat="server" AllowSorting="False" AutoGenerateColumns="False" Height="150px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="i_auction_id" HeaderText="Auction ID" SortExpression="i_auction_id" />
                <asp:BoundField DataField="bidCreateDate" HeaderText="Bid Date" SortExpression="bidCreateDate" />
                <asp:BoundField DataField="bidPrice" HeaderText="Bid Price" SortExpression="bidPrice" />
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


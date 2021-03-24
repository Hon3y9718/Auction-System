<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AllAuctions.aspx.cs" Inherits="Admin_AllAuctions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../User/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wlcm">
        <h3>All Auctions Available</h3>
    </div>

    <div class="SearchBox" id="searchDiv">
        <asp:TextBox ID="SearchBox" runat="server" placeholder="Search by Auction ID" required="" CssClass="SearchInput"></asp:TextBox>
        <asp:Button ID="SearchBtn" runat="server" Text="Search" OnClick="SearchBtn_Click" CssClass="BidButton"/>
    </div>

    <div class="girdView">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="i_auto_id" Height="150px" Width="100%" CssClass="girdView" AllowSorting="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="i_auto_id" HeaderText="Auction ID" SortExpression="i_auto_id" />
                <asp:BoundField DataField="AuctionName" HeaderText="Auction Name" SortExpression="AuctionName" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="createDate" HeaderText="Create Date" SortExpression="createDate" />
                <asp:BoundField DataField="createdBy" HeaderText="Created By" SortExpression="createdBy" />
                <asp:BoundField DataField="AuctionStartDate" HeaderText="Auction Start Date" SortExpression="AuctionStartDate" />
                <asp:BoundField DataField="AuctionEndDate" HeaderText="Auction End Date" SortExpression="AuctionEndDate" />
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


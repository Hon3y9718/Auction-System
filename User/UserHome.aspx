
<%@ Page Title="Auction Home" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles.css" rel="stylesheet" />
    <script>  
        function closePopUpWindow() { 
            document.getElementById("leftDiv").style.display = "none";
            return true;
        }
</script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wlcm">
        <h2 class="wlcmtxt">Welcome to Auction System, <span><asp:Label ID="Label1" runat="server" /></span></h2>
    </div>

    <div class="leftDiv" id="leftDiv" runat="server">
        <div class="Box">
         
            <h3>Make Your Bid For: <asp:Label ID="AuctionIDLabel" runat="server"/></h3> 
                <div class="inputBox">
                   <asp:TextBox ID="BidPrice" runat="server" placeholder="Bid Amount" type="number" ></asp:TextBox>
                </div>
               
            <asp:Button ID="Submit" runat="server" Text="Make Bid" class="btn" OnClick="Submit_Click"  />
            <asp:Button ID="Close" runat="server" Text="Close" class="btn" OnClick="Close_Click" />
        </div>
    </div>

    <div class="girdView">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="i_auto_id" ForeColor="#333333" GridLines="None" Height="150px" Width="100%" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" CssClass="girdView">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="i_auto_id" HeaderText="Auction ID" InsertVisible="False" ReadOnly="True" SortExpression="i_auto_id" />
                <asp:BoundField DataField="AuctionName" HeaderText="Auction Name" SortExpression="AuctionName" />
                <asp:BoundField DataField="price" HeaderText="Start Price" SortExpression="price" />
                
                <asp:BoundField DataField="createdBy" HeaderText="Created By" SortExpression="createdBy" />
                <asp:BoundField DataField="AuctionStartDate" HeaderText="Auction Start Date" SortExpression="AuctionStartDate" />

                <asp:BoundField DataField="AuctionEndDate" HeaderText="Auction End Date" SortExpression="AuctionEndDate" />
                <asp:ButtonField ButtonType="Button" DataTextField="i_auto_id" DataTextFormatString="Bid" Text="Bid" CommandName="id" ControlStyle-CssClass="BidButton" />
                


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
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASConnectionString %>" SelectCommand="SELECT * FROM [auctionDetails]">
            
        </asp:SqlDataSource>
        
        <asp:Label ID="Label2" runat="server" Text="Nothing to Show" />

    </div>
</asp:Content>


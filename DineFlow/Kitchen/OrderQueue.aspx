<%@ Page Title="Order Queue | DineFlow" Language="C#" MasterPageFile="~/Kitchen/MasterPages/Kitchen.master" AutoEventWireup="true" CodeFile="OrderQueue.aspx.cs" Inherits="DineFlow.Kitchen.OrderQueue" %>

<asp:Content ID="OrderQueueHead" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="OrderQueueContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-heading">
        <div>
            <span class="eyebrow">Kitchen operations</span>
            <h1>Order queue</h1>
            <p>Review new orders waiting to be started.</p>
        </div>
        <div class="live-status"><span></span> <asp:Label ID="lblNewOrderCount" runat="server" /> new orders</div>
    </div>

    <section class="panel">
        <div class="panel-heading">
            <div><span class="eyebrow">Waiting to start</span><h2>New orders</h2></div>
            <span class="static-filter">All tables</span>
        </div>
        <asp:GridView ID="gvOrderQueue" runat="server" AutoGenerateColumns="false" CssClass="table kitchen-data-table" GridLines="None" EmptyDataText="No received orders right now." OnRowCommand="gvOrderQueue_RowCommand">
            <Columns>
                <asp:BoundField DataField="OrderNumber" HeaderText="Order" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
                <asp:BoundField DataField="TableNumber" HeaderText="Table" />
                <asp:BoundField DataField="ItemCount" HeaderText="Items" />
                <asp:BoundField DataField="TotalAmount" HeaderText="Total" DataFormatString="Rs. {0:N2}" />
                <asp:BoundField DataField="OrderedDate" HeaderText="Received" DataFormatString="{0:dd-MMM-yyyy hh:mm tt}" />
                <asp:TemplateField HeaderText="Action"><ItemTemplate><asp:Button ID="btnStart" runat="server" Text="Start order" CssClass="primary-button" CommandName="StartOrder" CommandArgument='<%# Eval("OrderId") %>' /></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>

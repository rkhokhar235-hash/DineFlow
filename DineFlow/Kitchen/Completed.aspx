<%@ Page Title="Completed Orders | DineFlow" Language="C#" MasterPageFile="~/Kitchen/MasterPages/Kitchen.master" AutoEventWireup="true" CodeFile="Completed.aspx.cs" Inherits="DineFlow.Kitchen.Completed" %>

<asp:Content ID="CompletedHead" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="CompletedContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-heading">
        <div>
            <span class="eyebrow">Kitchen history</span>
            <h1>Completed orders</h1>
            <p>See the orders finished by the kitchen today.</p>
        </div>
        <div class="live-status"><span></span> <asp:Label ID="lblCompletedCount" runat="server" /> completed today</div>
    </div>

    <section class="panel">
        <div class="panel-heading">
            <div><span class="eyebrow">Today</span><h2>Completed orders</h2></div>
            <span class="static-filter">Today</span>
        </div>
        <asp:GridView ID="gvCompleted" runat="server" AutoGenerateColumns="false" CssClass="table kitchen-data-table" GridLines="None" EmptyDataText="No completed orders yet.">
            <Columns>
                <asp:BoundField DataField="OrderNumber" HeaderText="Order" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
                <asp:BoundField DataField="TableNumber" HeaderText="Table" />
                <asp:BoundField DataField="ItemCount" HeaderText="Items" />
                <asp:BoundField DataField="TotalAmount" HeaderText="Total" DataFormatString="Rs. {0:N2}" />
                <asp:BoundField DataField="OrderedDate" HeaderText="Completed" DataFormatString="{0:dd-MMM-yyyy hh:mm tt}" />
                <asp:TemplateField HeaderText="Status"><ItemTemplate><b class="order-status ready">Completed</b></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>

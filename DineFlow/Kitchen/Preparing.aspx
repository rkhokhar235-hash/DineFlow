<%@ Page Title="Preparing Orders | DineFlow" Language="C#" MasterPageFile="~/Kitchen/MasterPages/Kitchen.master" AutoEventWireup="true" CodeFile="Preparing.aspx.cs" Inherits="DineFlow.Kitchen.Preparing" %>

<asp:Content ID="PreparingHead" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="PreparingContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-heading">
        <div>
            <span class="eyebrow">Kitchen operations</span>
            <h1>Preparing orders</h1>
            <p>Keep track of dishes currently being prepared.</p>
        </div>
        <div class="live-status"><span></span> <asp:Label ID="lblPreparingCount" runat="server" /> in preparation</div>
    </div>

    <section class="panel">
        <div class="panel-heading">
            <div><span class="eyebrow">In progress</span><h2>Active preparation</h2></div>
            <span class="static-filter">Sort: oldest first</span>
        </div>
        <asp:GridView ID="gvPreparing" runat="server" AutoGenerateColumns="false" CssClass="table kitchen-data-table" GridLines="None" EmptyDataText="No orders are being prepared." OnRowCommand="gvPreparing_RowCommand">
            <Columns>
                <asp:BoundField DataField="OrderNumber" HeaderText="Order" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
                <asp:BoundField DataField="TableNumber" HeaderText="Table" />
                <asp:BoundField DataField="ItemCount" HeaderText="Items" />
                <asp:BoundField DataField="TotalAmount" HeaderText="Total" DataFormatString="Rs. {0:N2}" />
                <asp:BoundField DataField="OrderedDate" HeaderText="Started" DataFormatString="{0:dd-MMM-yyyy hh:mm tt}" />
                <asp:TemplateField HeaderText="Action"><ItemTemplate><asp:Button ID="btnComplete" runat="server" Text="Mark complete" CssClass="secondary-button" CommandName="CompleteOrder" CommandArgument='<%# Eval("OrderId") %>' /></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>

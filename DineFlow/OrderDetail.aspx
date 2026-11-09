<%@ Page Title="Order Details | DineFlow" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeFile="OrderDetail.aspx.cs" Inherits="DineFlow.OrderDetail" %>

<asp:Content ID="OrderDetailHead" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/order.css") %>" />
</asp:Content>

<asp:Content ID="OrderDetailContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="order-page">
        <section class="order-hero">
            <div class="container container-xl">
                <span class="order-kicker">DineFlow table service</span>
                <h1>Order Details</h1>
                <p>See all items and quantities in your order.</p>
            </div>
        </section>

        <section class="container container-xl order-content">
            <div class="customer-card cart-card">
                <asp:Label ID="lblOrderMessage" runat="server" CssClass="form-message" />
                <asp:Panel ID="pnlOrderDetails" runat="server">
                    <h2>
                        Order:
                        <asp:Label ID="lblOrderNumber" runat="server" />
                    </h2>
                    <div class="order-detail-summary">
                        <span>Table: <strong><asp:Label ID="lblTableNumber" runat="server" /></strong></span>
                        <span>Status: <strong><asp:Label ID="lblOrderStatus" runat="server" /></strong></span>
                        <span>Total: <strong><asp:Label ID="lblOrderTotal" runat="server" /></strong></span>
                    </div>

                    <asp:GridView ID="gvOrderItems" runat="server" AutoGenerateColumns="false"
                        CssClass="table cart-table align-middle" GridLines="None"
                        EmptyDataText="No items found for this order.">
                        <Columns>
                            <asp:BoundField DataField="ItemName" HeaderText="Item" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="UnitPrice" HeaderText="Price" DataFormatString="Rs. {0:N2}" />
                            <asp:BoundField DataField="LineTotal" HeaderText="Total" DataFormatString="Rs. {0:N2}" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>

                <div class="cart-actions">
                    <asp:Button ID="btnBackToHistory" runat="server" Text="Back to Order History"
                        CssClass="btn btn-outline-dark" CausesValidation="false"
                        OnClick="btnBackToHistory_Click" />
                </div>
            </div>
        </section>
    </main>
</asp:Content>

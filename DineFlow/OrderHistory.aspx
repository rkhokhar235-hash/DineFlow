<%@ Page Title="Order History | DineFlow" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeFile="OrderHistory.aspx.cs" Inherits="DineFlow.OrderHistory" %>

<asp:Content ID="OrderHistoryHead" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/order.css") %>" />
</asp:Content>

<asp:Content ID="OrderHistoryContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="order-page">
        <section class="order-hero">
            <div class="container container-xl">
                <span class="order-kicker">DineFlow table service</span>
                <h1>Order History</h1>
                <p>Check your orders and their current kitchen status.</p>
            </div>
        </section>
        <section class="container container-xl order-content">
            <div class="customer-card cart-card">
                <asp:Label ID="lblHistoryMessage" runat="server" CssClass="form-message" />
                <asp:GridView ID="gvOrderHistory" runat="server" AutoGenerateColumns="false"
                    CssClass="table cart-table align-middle" GridLines="None"
                    EmptyDataText="No orders found for this customer.">
                    <Columns>
                        <asp:BoundField DataField="OrderNumber" HeaderText="Order" />
                        <asp:BoundField DataField="TableNumber" HeaderText="Table" />
                        <asp:BoundField DataField="Total" HeaderText="Total" DataFormatString="Rs. {0:N2}" />
                        <asp:BoundField DataField="OrderStatus" HeaderText="Status" />
                        <asp:BoundField DataField="OrderedDate" HeaderText="Date" DataFormatString="{0:dd-MMM-yyyy hh:mm tt}" />
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkViewOrder" runat="server"
                                    Text="View"
                                    CssClass="btn btn-sm btn-df-gold"
                                    NavigateUrl='<%# "OrderDetail.aspx?order=" + Server.UrlEncode(Eval("OrderNumber").ToString()) %>' />
                                <asp:HyperLink ID="lnkDownloadBill" runat="server"
                                    Text="Download Bill"
                                    CssClass="btn btn-sm btn-outline-dark ms-2"
                                    NavigateUrl='<%# "OrderBill.ashx?order=" + Server.UrlEncode(Eval("OrderNumber").ToString()) %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <div class="cart-actions">
                    <asp:Button ID="btnGoToMenu" runat="server" Text="Back to Menu" CssClass="btn btn-outline-dark" CausesValidation="false" OnClick="btnGoToMenu_Click" />
                </div>
            </div>
        </section>
    </main>
</asp:Content>

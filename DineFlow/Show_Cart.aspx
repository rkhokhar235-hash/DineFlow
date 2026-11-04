<%@ Page Title="Cart | DineFlow" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeFile="Show_Cart.aspx.cs" Inherits="DineFlow.Show_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/order.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="order-page">
        <section class="order-hero">
            <div class="container container-xl">
                <span class="order-kicker">DineFlow table service</span>
                <h1>Your Cart</h1>
                <p><asp:Literal ID="litCustomerDetails" runat="server" /></p>
            </div>
        </section>
        <section class="container container-xl order-content">
            <div class="customer-card cart-card">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Cart_Id"
                    CssClass="table cart-table align-middle" GridLines="None" EmptyDataText="Your cart is empty."
                    OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="Prod_Name" HeaderText="Item" ReadOnly="true" />
                        <asp:BoundField DataField="Prod_Price" HeaderText="Price" DataFormatString="Rs. {0:N2}" ReadOnly="true" />
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate><%# Eval("Quantity") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpqnt" runat="server" CssClass="form-select cart-quantity">
                                    <asp:ListItem Text="1" Value="1" /><asp:ListItem Text="2" Value="2" />
                                    <asp:ListItem Text="3" Value="3" /><asp:ListItem Text="4" Value="4" />
                                    <asp:ListItem Text="5" Value="5" /><asp:ListItem Text="6" Value="6" />
                                    <asp:ListItem Text="7" Value="7" /><asp:ListItem Text="8" Value="8" />
                                    <asp:ListItem Text="9" Value="9" /><asp:ListItem Text="10" Value="10" />
                                </asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Total" HeaderText="Total" DataFormatString="Rs. {0:N2}" ReadOnly="true" />
                        <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="lblGrandTotal" runat="server" CssClass="cart-grand-total" />
                <div class="cart-actions">
                    <asp:Button ID="btnBackToMenu" runat="server" Text="Back to Menu" CssClass="btn btn-outline-dark" CausesValidation="false" OnClick="btnBackToMenu_Click" />
                    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btn btn-df-gold" CausesValidation="false" OnClick="btnCheckout_Click" />
                </div>
                <asp:Label ID="lblCheckoutMessage" runat="server" CssClass="form-message" />
            </div>
        </section>
    </main>
</asp:Content>

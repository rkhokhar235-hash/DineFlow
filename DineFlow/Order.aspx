<%@ Page Title="Table Menu | DineFlow" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="DineFlow.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/order.css") %>" />
    <script src='<%= ResolveUrl("~/Assets/JS/order.js") %>' defer></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main class="order-page">
        <section class="order-hero">
            <div class="container container-xl">
                <div class="hero-topline">
                    <span class="order-kicker">DineFlow table service</span>
                    <span class="hero-status"><i class="fa-solid fa-circle"></i> Open for orders</span>
                </div>
                <div class="hero-layout">
                    <div class="hero-copy">
                        <h1><asp:Literal ID="litTableTitle" runat="server" /></h1>
                        <p class="hero-intro">A considered menu of comforting classics, bright plates and house signatures.</p>
                    </div>
                    <div class="hero-feature" aria-hidden="true">
                        <span>Tonight's edit</span>
                        <strong>Made to be shared</strong>
                        <small>Fresh plates, warm hospitality.</small>
                    </div>
                </div>
                <div class="order-toolbar">
                    <asp:Panel ID="pnlHeaderCustomerSummary" runat="server" CssClass="customer-summary" Visible="false">
                        <span class="customer-summary-label">Customer</span>
                        <strong><asp:Literal ID="litHeaderCustomerName" runat="server" /></strong>
                        <span><asp:Literal ID="litHeaderCustomerMobile" runat="server" /></span>
                    </asp:Panel>
                    <asp:LinkButton ID="btnCart" runat="server" CssClass="cart-button" CausesValidation="false" OnClick="btnCart_Click">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span>Cart</span>
                        <asp:Panel ID="pnlCartCount" runat="server" CssClass="cart-count" Visible="false">
                            <asp:Literal ID="litCartCount" runat="server" />
                        </asp:Panel>
                    </asp:LinkButton>
                </div>
            </div>
        </section>

        <section class="container container-xl order-content">
            <asp:Panel ID="pnlCartToast" runat="server" CssClass="cart-toast" Visible="false" role="status" aria-live="polite">
                <i class="fa-solid fa-circle-check" aria-hidden="true"></i>
                <asp:Literal ID="litCartToast" runat="server" />
            </asp:Panel>
            <asp:Panel ID="pnlCustomerForm" runat="server" CssClass="customer-card">
                <div>
                    <span class="order-kicker">Your details</span>
                    <h2>Tell us who is dining</h2>
                </div>
                <div class="row g-3 align-items-end">
                    <div class="col-md-5">
                        <label for="txtCustomerName" class="form-label">Customer Name</label>
                        <asp:TextBox ID="txtCustomerName" runat="server" CssClass="form-control" MaxLength="100" />
                    </div>
                    <div class="col-md-5">
                        <label for="txtMobileNumber" class="form-label">Mobile Number</label>
                        <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" MaxLength="10" TextMode="Phone" />
                    </div>
                    <div class="col-md-2 d-grid">
                        <asp:Button ID="btnContinue" runat="server" Text="Continue" CssClass="btn btn-df-gold" OnClick="btnContinue_Click" />
                    </div>
                </div>
                <asp:Label ID="lblFormMessage" runat="server" CssClass="form-message" />
            </asp:Panel>
            <asp:Panel ID="pnlCustomerSummary" runat="server" CssClass="customer-card customer-summary-card" Visible="false">
                <span class="order-kicker">Customer details</span>
                <div class="customer-summary-content">
                    <strong><asp:Literal ID="litCustomerName" runat="server" /></strong>
                    <span><asp:Literal ID="litCustomerMobile" runat="server" /></span>
                    <asp:Label ID="lblCustomerMessage" runat="server" CssClass="form-message" />
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlMenuMessage" runat="server" CssClass="menu-message" Visible="false">
                <asp:Literal ID="litMenuMessage" runat="server" />
            </asp:Panel>

            <div class="menu-section-heading">
                <div>
                    <span class="order-kicker">From the kitchen</span>
                    <h2>Today's menu</h2>
                </div>
                <span class="menu-note"><i class="fa-solid fa-leaf"></i> Crafted fresh for your table</span>
            </div>
            <div class="menu-tools">
                <div class="menu-filters" id="menuFilters" role="tablist" aria-label="Filter menu categories"></div>
                <label class="menu-search" for="menuSearch">
                    <i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i>
                        <input id="menuSearch" type="search" placeholder="Search dishes, ingredients..." autocomplete="off" />
                        <button type="button" class="menu-search-clear" id="menuSearchClear" aria-label="Clear menu search" hidden>
                            <i class="fa-solid fa-xmark" aria-hidden="true"></i>
                        </button>
                </label>
            </div>
            <div class="menu-rail" aria-label="Menu highlights">
                <span><i class="fa-solid fa-wand-magic-sparkles"></i> Chef's picks</span>
                <span><i class="fa-solid fa-seedling"></i> Fresh ingredients</span>
                <span><i class="fa-solid fa-fire-burner"></i> From the grill</span>
                <span><i class="fa-solid fa-heart"></i> Guest favourites</span>
            </div>

            <asp:DataList ID="DataList1" runat="server" CssClass="row g-4 menu-grid" RepeatDirection="Horizontal" RepeatColumns="3" RepeatLayout="Flow" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="col-sm-6 col-lg-4 menu-card-shell">
                        <article class="menu-item-card">
                            <asp:Image ID="Image1" runat="server" CssClass="menu-item-image" ImageUrl='<%# GetImageUrl(Eval("ImagePath")) %>' AlternateText='<%# Eval("ItemName") %>' />
                            <div class="menu-item-body">
                                <span class="menu-category"><%# Eval("CategoryName") %></span>
                                <h2><asp:Label ID="Label1" runat="server" Text='<%# Eval("ItemName") %>' /></h2>
                                <p><%# Eval("Description") %></p>
                                <div class="menu-item-footer">
                                    <strong class="menu-price">Rs. <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price", "{0:N2}") %>' /></strong>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cmd_addcart" CommandArgument='<%# Eval("MenuItemId") %>' CssClass="btn btn-df-gold btn-add-cart" CausesValidation="false">
                                        <i class="fa-solid fa-cart-plus"></i> Add to Cart
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </article>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div class="menu-empty-state" id="menuEmptyState" hidden>
                <i class="fa-solid fa-bowl-food"></i>
                <strong>No dishes found</strong>
                <span>Try another dish name or category.</span>
            </div>
        </section>
    </main>
</asp:Content>

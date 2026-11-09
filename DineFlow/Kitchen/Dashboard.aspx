<%@ Page Title="Kitchen Dashboard | DineFlow" Language="C#" MasterPageFile="~/Kitchen/MasterPages/Kitchen.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="DineFlow.Kitchen.Dashboard" %>

<asp:Content ID="KitchenHead" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="KitchenContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-heading">
        <div>
            <span class="eyebrow">Kitchen operations</span>
            <h1>Good morning, team.</h1>
            <p>Here is what is happening in the kitchen today.</p>
        </div>
        <div class="live-status"><span></span> Kitchen online</div>
    </div>

    <section class="summary-grid" aria-label="Kitchen summary">
        <article class="summary-card">
            <div class="summary-icon amber">◷</div>
            <div><span>New orders</span><strong>08</strong><small>+3 since last hour</small></div>
        </article>
        <article class="summary-card">
            <div class="summary-icon blue">▣</div>
            <div><span>Preparing</span><strong>05</strong><small>Across 4 tables</small></div>
        </article>
        <article class="summary-card">
            <div class="summary-icon green">✓</div>
            <div><span>Ready to serve</span><strong>12</strong><small>Today's completed items</small></div>
        </article>
    </section>

    <section class="dashboard-grid">
        <article class="panel order-panel">
            <div class="panel-heading">
                <div><span class="eyebrow">Live queue</span><h2>Recent orders</h2></div>
                <a href="#" class="view-link">View all</a>
            </div>
            <div class="order-list">
                <div class="order-row"><div><strong>#DF-1048</strong><span>Table 06 · 3 items</span></div><b class="order-status new">New</b><time>2 min ago</time></div>
                <div class="order-row"><div><strong>#DF-1047</strong><span>Table 02 · 5 items</span></div><b class="order-status cooking">Preparing</b><time>8 min ago</time></div>
                <div class="order-row"><div><strong>#DF-1046</strong><span>Table 09 · 2 items</span></div><b class="order-status ready">Ready</b><time>14 min ago</time></div>
                <div class="order-row"><div><strong>#DF-1045</strong><span>Table 04 · 4 items</span></div><b class="order-status cooking">Preparing</b><time>19 min ago</time></div>
            </div>
        </article>

        <article class="panel activity-panel">
            <div class="panel-heading"><div><span class="eyebrow">Kitchen pulse</span><h2>Today's activity</h2></div></div>
            <div class="activity-stat"><span>Orders completed</span><strong>42</strong></div>
            <div class="progress-track"><span style="width: 78%"></span></div>
            <p class="activity-note">78% of today's expected orders completed</p>
            <div class="activity-divider"></div>
            <div class="activity-stat"><span>Average preparation time</span><strong>18 <small>min</small></strong></div>
            <p class="activity-note positive">4 minutes faster than yesterday</p>
        </article>
    </section>
</asp:Content>

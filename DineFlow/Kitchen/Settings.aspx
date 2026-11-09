<%@ Page Title="Kitchen Settings | DineFlow" Language="C#" MasterPageFile="~/Kitchen/MasterPages/Kitchen.master" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="DineFlow.Kitchen.Settings" %>

<asp:Content ID="SettingsHead" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="SettingsContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-heading">
        <div>
            <span class="eyebrow">Workspace preferences</span>
            <h1>Settings</h1>
            <p>Manage your kitchen workspace preferences.</p>
        </div>
    </div>

    <section class="settings-grid">
        <article class="panel settings-card">
            <div class="panel-heading"><div><span class="eyebrow">Profile</span><h2>Kitchen account</h2></div></div>
            <div class="profile-block"><span class="large-avatar">K</span><div><strong>kitchen@gmail.com</strong><span>Kitchen staff account</span></div></div>
            <div class="setting-line"><span>Account status</span><b class="status-text">Active</b></div>
            <div class="setting-line"><span>Workspace</span><strong>DineFlow Kitchen</strong></div>
        </article>
        <article class="panel settings-card">
            <div class="panel-heading"><div><span class="eyebrow">Preferences</span><h2>Notifications</h2></div></div>
            <div class="setting-line"><div><strong>New order alerts</strong><small>Show a notification for every new order</small></div><span class="toggle-on">On</span></div>
            <div class="setting-line"><div><strong>Ready reminders</strong><small>Remind staff when an order is waiting</small></div><span class="toggle-on">On</span></div>
            <div class="setting-line"><div><strong>Sound alerts</strong><small>Play a sound for new orders</small></div><span class="toggle-off">Off</span></div>
        </article>
    </section>
</asp:Content>

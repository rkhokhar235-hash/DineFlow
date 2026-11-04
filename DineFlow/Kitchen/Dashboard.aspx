<%@ Page Title="Kitchen Dashboard | DineFlow" Language="C#" MasterPageFile="~/Kitchen/MasterPages/Kitchen.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DineFlow.Kitchen.Dashboard" %>

<asp:Content ID="KitchenHead" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="KitchenContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="welcome-card">
        <span class="eyebrow">Kitchen operations</span>
        <h1>Good morning, team.</h1>
        <p>Your secure kitchen workspace is ready. Order queue and preparation tools can be added here as the kitchen workflow is built.</p>
        <div class="status-pill"><span></span> Kitchen system online</div>
    </section>
</asp:Content>

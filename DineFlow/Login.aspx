<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="Login.aspx.cs" Inherits="DineFlow.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Sign in | DineFlow</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="<%: ResolveUrl("~/CSS/Login.css") %>" />
</head>
<body>
    <form id="loginForm" runat="server">
        <main class="login-shell">
            <section class="login-visual" aria-label="DineFlow restaurant">
                <div class="visual-overlay"></div>
                <div class="visual-content">
                    <a class="brand" href="<%: ResolveUrl("~/Visitor/Home.aspx") %>">
                        <span class="brand-mark" aria-hidden="true">DF</span>
                        <span>
                            <strong>DineFlow</strong>
                            <small>Pure vegetarian dining</small>
                        </span>
                    </a>
                    <div class="visual-copy">
                        <span class="eyebrow">The art of a seamless service</span>
                        <h1>Thoughtful hospitality,<br /><em>flowing beautifully.</em></h1>
                        <p>One calm workspace for every order, table and guest experience.</p>
                    </div>
                    <span class="tagline">Scan. Order. Enjoy.</span>
                </div>
            </section>

            <section class="login-panel" aria-labelledby="loginHeading">
                <div class="login-card">
                    <div class="mobile-brand brand">
                        <span class="brand-mark" aria-hidden="true">DF</span>
                        <span><strong>DineFlow</strong><small>Pure vegetarian dining</small></span>
                    </div>
                    <div class="form-intro">
                        <span class="eyebrow">Welcome back</span>
                        <h2 id="loginHeading">Sign in to your workspace</h2>
                        <p>Access your DineFlow service console securely.</p>
                    </div>

                    <asp:ValidationSummary ID="validationSummary" runat="server" CssClass="validation-summary" />
                    <asp:Label ID="lblMessage" runat="server" CssClass="message message-error" Visible="false" />

                    <div class="field-group">
                        <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txtUsername">Username</asp:Label>
                        <div class="input-wrap">
                            <span class="input-icon" aria-hidden="true">&#9679;</span>
                            <asp:TextBox ID="txtUsername" runat="server" ClientIDMode="Static" CssClass="form-input" MaxLength="50" autocomplete="username" />
                        </div>
                        <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="txtUsername" Display="Dynamic" CssClass="field-error" ErrorMessage="Enter your username." />
                    </div>

                    <div class="field-group">
                        <div class="field-label-row">
                            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword">Password</asp:Label>
                        </div>
                        <div class="input-wrap">
                            <span class="input-icon" aria-hidden="true">&#9679;</span>
                            <asp:TextBox ID="txtPassword" runat="server" ClientIDMode="Static" CssClass="form-input password-input" TextMode="Password" MaxLength="100" autocomplete="current-password" />
                            <button type="button" class="toggle-password" id="togglePassword" aria-label="Show password" aria-controls="txtPassword">Show</button>
                        </div>
                        <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="txtPassword" Display="Dynamic" CssClass="field-error" ErrorMessage="Enter your password." />
                    </div>

                    <asp:Button ID="btnLogin" runat="server" ClientIDMode="Static" Text="Sign in" CssClass="login-button" OnClick="btnLogin_Click" />
                    <p class="security-note"><span aria-hidden="true">&#10003;</span> Private access for DineFlow staff</p>
                </div>
                <footer class="login-footer">© <%: DateTime.Now.Year %> DineFlow · Crafted for better service</footer>
            </section>
        </main>
    </form>
    <script src="<%: ResolveUrl("~/JS/Login.js") %>"></script>
</body>
</html>

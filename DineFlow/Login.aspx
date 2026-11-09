<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeFile="Login.aspx.cs" Inherits="DineFlow.Login" %>

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
                        <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txteml">Email</asp:Label>
                        <div class="input-wrap">
                            <span class="input-icon" aria-hidden="true">&#9679;</span>
                            <asp:TextBox ID="txteml" runat="server" ClientIDMode="Static" CssClass="form-input" MaxLength="100" TextMode="Email" autocomplete="username" />
                        </div>
                        <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="txteml" Display="Dynamic" CssClass="field-error" ErrorMessage="Enter your email." />
                    </div>

                    <div class="field-group">
                        <div class="field-label-row">
                            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtpass">Password</asp:Label>
                        </div>
                        <div class="input-wrap">
                            <span class="input-icon" aria-hidden="true">&#9679;</span>
                            <asp:TextBox ID="txtpass" runat="server" ClientIDMode="Static" CssClass="form-input password-input" TextMode="Password" MaxLength="100" autocomplete="current-password" />
                            <button type="button" class="toggle-password" id="togglePassword" aria-label="Show password" aria-controls="txtpass">Show</button>
                        </div>
                        <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="txtpass" Display="Dynamic" CssClass="field-error" ErrorMessage="Enter your password." />
                    </div>

                    <asp:Button ID="btnlogin" runat="server" ClientIDMode="Static" Text="Sign in" CssClass="login-button" OnClick="btnlogin_Click" />
                    <p class="security-note"><span aria-hidden="true">&#10003;</span> Private access for DineFlow staff</p>
                </div>
                <footer class="login-footer">© <%: DateTime.Now.Year %> DineFlow · Crafted for better service</footer>
            </section>
        </main>
    </form>
    <script src="<%: ResolveUrl("~/JS/Login.js") %>"></script>
</body>
</html>

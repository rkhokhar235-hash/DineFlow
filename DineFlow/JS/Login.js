(function () {
    var password = document.getElementById("txtPassword");
    var toggle = document.getElementById("togglePassword");
    var form = document.getElementById("loginForm");
    var loginButton = document.getElementById("btnLogin");

    if (password && toggle) {
        toggle.addEventListener("click", function () {
            var showing = password.type === "text";
            password.type = showing ? "password" : "text";
            toggle.textContent = showing ? "Show" : "Hide";
            toggle.setAttribute("aria-label", showing ? "Show password" : "Hide password");
        });
    }

    window.beginLogin = function () {
        if (!form || !loginButton) {
            return true;
        }

        if (typeof (Page_ClientValidate) === "function" && !Page_ClientValidate()) {
            return false;
        }

        if (loginButton.disabled) {
            return false;
        }

        loginButton.disabled = true;
        loginButton.value = "Signing in...";
        return true;
    };
})();

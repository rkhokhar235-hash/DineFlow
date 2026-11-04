document.addEventListener('DOMContentLoaded', function () {
    document.title = 'Menu Management | DineFlow Admin Portal';
    var breadcrumb = document.querySelector('[id$="litBreadcrumbCurrent"]');
    if (breadcrumb) breadcrumb.textContent = 'Menu Management';
});

function openCategoryEditor() {
    var editor = document.getElementById('pnlItemEditor');
    var categoryInput = editor ? editor.querySelector('input[placeholder="New category"]') : null;

    if (!editor) return;

    editor.style.display = 'block';
    editor.className = 'modal fade show d-block';
    if (categoryInput) categoryInput.focus();
}

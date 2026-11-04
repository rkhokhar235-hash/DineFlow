/**
 * DINEFLOW CONTACT MESSAGES MANAGEMENT JAVASCRIPT
 * Location: ~/Admin/JS/contact-messages.js
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    // Auto-dismiss alerts after 5 seconds if present
    const alertBox = document.querySelector('.alert');
    if (alertBox) {
        setTimeout(() => {
            alertBox.style.transition = 'opacity 0.5s ease';
            alertBox.style.opacity = '0';
            setTimeout(() => {
                alertBox.remove();
            }, 500);
        }, 5000);
    }
});
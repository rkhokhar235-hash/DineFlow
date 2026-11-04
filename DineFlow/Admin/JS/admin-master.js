/**
 * DINEFLOW ADMIN GLOBAL MASTER JAVASCRIPT
 * Location: Rajkot, Gujarat, India
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    // Initialize Bootstrap Tooltips if present
    const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });
});

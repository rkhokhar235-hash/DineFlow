/**
 * DINEFLOW ADMIN SIDEBAR MOTION & INTERACTION ENGINE
 * Location: Rajkot, Gujarat, India
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const AdminSidebar = {
        init() {
            this.cacheDOM();
            this.bindEvents();
        },

        cacheDOM() {
            this.body = document.body;
            this.sidebarCollapseBtn = document.getElementById('sidebarCollapseBtn');
            this.sidebarMobileToggle = document.getElementById('sidebarMobileToggle');
            this.sidebarCloseBtn = document.getElementById('sidebarCloseBtn');
            this.sidebarOverlay = document.getElementById('sidebarOverlay');
        },

        bindEvents() {
            // Desktop Collapse Toggle
            if (this.sidebarCollapseBtn) {
                this.sidebarCollapseBtn.addEventListener('click', (e) => {
                    e.preventDefault();
                    this.toggleDesktopCollapse();
                });
            }

            // Mobile Drawer Open
            if (this.sidebarMobileToggle) {
                this.sidebarMobileToggle.addEventListener('click', (e) => {
                    e.preventDefault();
                    this.openMobileDrawer();
                });
            }

            // Mobile Drawer Close
            if (this.sidebarCloseBtn) {
                this.sidebarCloseBtn.addEventListener('click', (e) => {
                    e.preventDefault();
                    this.closeMobileDrawer();
                });
            }

            // Overlay Click
            if (this.sidebarOverlay) {
                this.sidebarOverlay.addEventListener('click', () => {
                    this.closeMobileDrawer();
                });
            }

            // ESC Key Close Mobile Drawer
            window.addEventListener('keydown', (e) => {
                if (e.key === 'Escape') {
                    this.closeMobileDrawer();
                }
            });
        },

        toggleDesktopCollapse() {
            this.body.classList.toggle('sidebar-collapsed');
            const isCollapsed = this.body.classList.contains('sidebar-collapsed');
            localStorage.setItem('dineflow_admin_sidebar_collapsed', isCollapsed);
        },

        openMobileDrawer() {
            this.body.classList.add('mobile-sidebar-open');
            if (this.sidebarOverlay) {
                this.sidebarOverlay.classList.add('show');
            }
        },

        closeMobileDrawer() {
            this.body.classList.remove('mobile-sidebar-open');
            if (this.sidebarOverlay) {
                this.sidebarOverlay.classList.remove('show');
            }
        }
    };

    AdminSidebar.init();
});
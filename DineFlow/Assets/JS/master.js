/**
 * DINEFLOW LUXURY MASTER ENGINE
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlow = {
        init() {
            this.initPreloader();
            this.initScrollProgress();
            this.initNavigation();
            this.initSearchModal();
            this.initBackToTop();
            this.initNewsletter();
            this.initFooterNewsletter();
            this.initThirdPartyLibraries();
        },

        // 1. Fullscreen Preloader Engine
        initPreloader() {
            const loader = document.getElementById('dfLoader');
            const percentEl = document.getElementById('loaderPercent');
            const barEl = document.getElementById('loaderBar');

            if (!loader) return;

            if (sessionStorage.getItem('df_visited')) {
                loader.style.display = 'none';
                return;
            }

            let progress = 0;
            const interval = setInterval(() => {
                progress += Math.floor(Math.random() * 12) + 5;
                if (progress >= 100) {
                    progress = 100;
                    clearInterval(interval);

                    setTimeout(() => {
                        loader.classList.add('fade-out');
                        sessionStorage.setItem('df_visited', 'true');
                    }, 500);
                }

                if (percentEl) percentEl.textContent = progress;
                if (barEl) barEl.style.width = `${progress}%`;
            }, 60);
        },

        // 2. Scroll Progress Bar
        initScrollProgress() {
            const progressBar = document.getElementById('scrollProgress');
            if (!progressBar) return;

            window.addEventListener('scroll', () => {
                const winScroll = document.documentElement.scrollTop || document.body.scrollTop;
                const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
                const scrolled = (winScroll / height) * 100;
                progressBar.style.width = `${scrolled}%`;
            }, { passive: true });
        },

        // 3. Navigation Header & Mobile Drawer
        initNavigation() {
            const header = document.getElementById('dfHeader');
            const hamburgerBtn = document.getElementById('btnMobileNavToggle');
            const drawer = document.getElementById('dfMobileDrawer');
            const backdrop = document.getElementById('drawerBackdrop');
            const closeDrawerBtn = document.getElementById('btnCloseDrawer');

            const updateHeaderState = () => {
                header?.classList.toggle('scrolled', window.scrollY > 50);
            };

            updateHeaderState();
            window.addEventListener('scroll', updateHeaderState, { passive: true });

            const openDrawer = () => {
                drawer?.classList.add('active');
                backdrop?.classList.add('active');
                document.body.style.overflow = 'hidden';
            };

            const closeDrawer = () => {
                drawer?.classList.remove('active');
                backdrop?.classList.remove('active');
                document.body.style.overflow = '';
            };

            hamburgerBtn?.addEventListener('click', openDrawer);
            closeDrawerBtn?.addEventListener('click', closeDrawer);
            backdrop?.addEventListener('click', closeDrawer);
        },

        // 4. Fullscreen Search Modal Popup
        initSearchModal() {
            const searchModal = document.getElementById('dfSearchModal');
            const btnSearchDesktop = document.getElementById('btnSearchDesktop');
            const btnSearchMobile = document.getElementById('btnSearchMobile');
            const btnCloseSearch = document.getElementById('btnCloseSearch');
            const searchInput = document.getElementById('dfSearchInput');

            const openSearch = () => {
                searchModal?.classList.add('active');
                document.body.style.overflow = 'hidden';
                setTimeout(() => searchInput?.focus(), 300);
            };

            const closeSearch = () => {
                searchModal?.classList.remove('active');
                document.body.style.overflow = '';
            };

            btnSearchDesktop?.addEventListener('click', openSearch);
            btnSearchMobile?.addEventListener('click', openSearch);
            btnCloseSearch?.addEventListener('click', closeSearch);

            document.addEventListener('keydown', (e) => {
                if (e.key === 'Escape' && searchModal?.classList.contains('active')) {
                    closeSearch();
                }
            });
        },

        // 5. Back To Top Controller
        initBackToTop() {
            const btnBackToTop = document.getElementById('btnBackToTop');
            if (!btnBackToTop) return;

            window.addEventListener('scroll', () => {
                if (window.scrollY > 400) {
                    btnBackToTop.classList.add('active');
                } else {
                    btnBackToTop.classList.remove('active');
                }
            }, { passive: true });

            btnBackToTop.addEventListener('click', () => {
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            });
        },

        // 6. Main Newsletter Handler
        initNewsletter() {
            const btnSubscribe = document.getElementById('btnSubscribe');
            const emailInput = document.getElementById('txtNewsletterEmail');
            const msgLabel = document.getElementById('lblNewsletterMsg');

            btnSubscribe?.addEventListener('click', () => {
                const email = emailInput?.value.trim();

                if (!email || !this.validateEmail(email)) {
                    if (msgLabel) {
                        msgLabel.textContent = 'Please enter a valid email address.';
                        msgLabel.className = 'newsletter-msg error';
                    }
                    return;
                }

                if (msgLabel) {
                    msgLabel.textContent = 'Thank you for joining our privilege club.';
                    msgLabel.className = 'newsletter-msg success';
                }
                if (emailInput) emailInput.value = '';
            });
        },

        // 7. Footer Newsletter Handler
        initFooterNewsletter() {
            const btnFooterSubscribe = document.getElementById('btnFooterSubscribe');
            const txtFooterEmail = document.getElementById('txtFooterEmail');

            btnFooterSubscribe?.addEventListener('click', () => {
                const email = txtFooterEmail?.value.trim();
                if (email && this.validateEmail(email)) {
                    alert('Thank you for subscribing to DineFlow!');
                    if (txtFooterEmail) txtFooterEmail.value = '';
                } else {
                    alert('Please enter a valid email address.');
                }
            });
        },

        // Utility: Email Validation
        validateEmail(email) {
            return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
        },

        // 8. Third-Party Libraries (GSAP & AOS)
        initThirdPartyLibraries() {
            if (typeof AOS !== 'undefined') {
                AOS.init({
                    duration: 1000,
                    once: true,
                    offset: 120,
                    easing: 'ease-out-cubic'
                });
            }

            if (typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.registerPlugin(ScrollTrigger);
            }
        }
    };

    DineFlow.init();
});
/**
 * DINEFLOW ERROR 404 PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Search Simulation & Parallax Motion
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowError404 = {
        init() {
            this.initSearchHandler();
            this.initParallax();
        },

        // 1. Search Simulation Handler
        initSearchHandler() {
            const searchBtn = document.getElementById('errorSearchBtn');
            const searchInput = document.getElementById('errorSearchInput');

            if (!searchBtn || !searchInput) return;

            const performSearch = () => {
                const query = searchInput.value.trim();
                if (!query) {
                    searchInput.focus();
                    searchInput.style.borderColor = '#e74c3c';
                    return;
                }

                searchInput.style.borderColor = '';
                const originalText = searchBtn.innerHTML;

                searchBtn.innerHTML = `<i class="fa-solid fa-spinner fa-spin"></i>`;
                searchBtn.disabled = true;

                setTimeout(() => {
                    searchBtn.innerHTML = `<i class="fa-solid fa-check"></i>`;
                    searchBtn.style.backgroundColor = '#2ecc71';
                    searchBtn.style.color = '#fff';

                    setTimeout(() => {
                        window.location.href = `OurMenu.aspx?search=${encodeURIComponent(query)}`;
                    }, 800);
                }, 800);
            };

            searchBtn.addEventListener('click', performSearch);
            searchInput.addEventListener('keypress', (e) => {
                if (e.key === 'Enter') {
                    e.preventDefault();
                    performSearch();
                }
            });
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.error-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.error-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowError404.init();
});
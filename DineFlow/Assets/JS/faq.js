/**
 * DINEFLOW FAQ PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Live FAQ Question Filtering & Category Switching
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowFAQ = {
        init() {
            this.initLiveSearch();
            this.initCategoryFilter();
            this.initParallax();
        },

        // 1. Live Search Input Filter for FAQ Items
        initLiveSearch() {
            const searchInput = document.getElementById('faqSearchInput');
            const clearBtn = document.getElementById('btnClearSearch');
            const faqItems = document.querySelectorAll('.faq-item');

            if (!searchInput || !faqItems.length) return;

            searchInput.addEventListener('input', (e) => {
                const query = e.target.value.toLowerCase().trim();

                if (query.length > 0) {
                    clearBtn.classList.remove('d-none');
                } else {
                    clearBtn.classList.add('d-none');
                }

                faqItems.forEach(item => {
                    const text = item.textContent.toLowerCase();
                    const parentSection = item.closest('.faq-category-section');

                    if (text.includes(query)) {
                        item.style.display = 'block';
                        if (parentSection) parentSection.style.display = 'block';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });

            if (clearBtn) {
                clearBtn.addEventListener('click', () => {
                    searchInput.value = '';
                    clearBtn.classList.add('d-none');
                    faqItems.forEach(item => {
                        item.style.display = 'block';
                    });
                    document.querySelectorAll('.faq-category-section').forEach(sec => {
                        sec.style.display = 'block';
                    });
                    searchInput.focus();
                });
            }
        },

        // 2. Category Tab Filter
        initCategoryFilter() {
            const categoryBtns = document.querySelectorAll('.faq-category-btn');
            const categorySections = document.querySelectorAll('.faq-category-section');

            if (!categoryBtns.length || !categorySections.length) return;

            categoryBtns.forEach(btn => {
                btn.addEventListener('click', () => {
                    const selectedCat = btn.getAttribute('data-cat');

                    // Update Active Button UI
                    categoryBtns.forEach(b => b.classList.remove('active'));
                    btn.classList.add('active');

                    // Show/Hide Sections
                    categorySections.forEach(section => {
                        const secCat = section.getAttribute('data-category');

                        if (selectedCat === 'all' || secCat === selectedCat) {
                            section.style.display = 'block';
                        } else {
                            section.style.display = 'none';
                        }
                    });

                    // Clear search input if active
                    const searchInput = document.getElementById('faqSearchInput');
                    const clearBtn = document.getElementById('btnClearSearch');
                    if (searchInput && searchInput.value) {
                        searchInput.value = '';
                        if (clearBtn) clearBtn.classList.add('d-none');
                        document.querySelectorAll('.faq-item').forEach(item => {
                            item.style.display = 'block';
                        });
                    }
                });
            });
        },

        // 3. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.faq-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.faq-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowFAQ.init();
});
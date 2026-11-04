/**
 * DINEFLOW GALLERY PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Dynamic Category Filtering & Parallax Image Reveal
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowGallery = {
        init() {
            this.initFilter();
            this.initParallax();
        },

        // 1. Dynamic Gallery Category Filtering
        initFilter() {
            const filterBtns = document.querySelectorAll('.gallery-filter-btn');
            const categoryBlocks = document.querySelectorAll('.gallery-category-block');

            if (!filterBtns.length || !categoryBlocks.length) return;

            filterBtns.forEach(btn => {
                btn.addEventListener('click', () => {
                    const selectedCategory = btn.getAttribute('data-filter');

                    // Update Active Button UI
                    filterBtns.forEach(b => b.classList.remove('active'));
                    btn.classList.add('active');

                    // Show/Hide Gallery Sections based on Category
                    categoryBlocks.forEach(block => {
                        const blockCategory = block.getAttribute('data-category');

                        if (selectedCategory === 'all' || blockCategory === selectedCategory) {
                            block.style.display = 'block';
                            block.classList.add('animate__fadeIn');
                        } else {
                            block.style.display = 'none';
                        }
                    });

                    // Trigger layout recalculation if AOS animations exist
                    if (typeof AOS !== 'undefined') {
                        AOS.refresh();
                    }
                });
            });
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.gallery-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.gallery-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowGallery.init();
});
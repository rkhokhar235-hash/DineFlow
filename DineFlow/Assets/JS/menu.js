/**
 * DINEFLOW OUR MENU PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Ultra-Smooth Category Scroll & Sticky Active Highlights
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowMenu = {
        init() {
            this.initCategoryNav();
            this.initParallax();
        },

        // 1. Ultra-Smooth Category Bar & Scroll Engine
        initCategoryNav() {
            const navItems = document.querySelectorAll('.category-nav-item');
            const sections = document.querySelectorAll('section[id]');
            const categoryBar = document.querySelector('.sticky-category-bar');

            if (!navItems.length || !sections.length) return;

            // Calculate Dynamic Header & Category Bar Height Offset
            const getOffset = () => {
                const header = document.getElementById('dfHeader');
                const headerHeight = header ? header.offsetHeight : 70;
                const barHeight = categoryBar ? categoryBar.offsetHeight : 50;
                return headerHeight + barHeight + 10;
            };

            // Smooth Scroll On Category Item Click
            navItems.forEach(item => {
                item.addEventListener('click', (e) => {
                    e.preventDefault();
                    const targetId = item.getAttribute('href');
                    if (!targetId || targetId === '#') return;

                    const targetSection = document.querySelector(targetId);

                    if (targetSection) {
                        const targetPosition = targetSection.getBoundingClientRect().top + window.pageYOffset - getOffset();

                        window.scrollTo({
                            top: targetPosition,
                            behavior: 'smooth'
                        });

                        // Instantly update active state
                        navItems.forEach(nav => nav.classList.remove('active'));
                        item.classList.add('active');
                    }
                });
            });

            // Highlight Active Category Link On Window Scroll
            let isScrolling = false;

            const onScroll = () => {
                if (isScrolling) return;
                isScrolling = true;

                requestAnimationFrame(() => {
                    const scrollPos = window.pageYOffset + getOffset() + 50;
                    let currentSectionId = '';

                    sections.forEach(section => {
                        const top = section.offsetTop;
                        const height = section.offsetHeight;

                        if (scrollPos >= top && scrollPos < top + height) {
                            currentSectionId = section.getAttribute('id');
                        }
                    });

                    if (currentSectionId) {
                        navItems.forEach(item => {
                            item.classList.remove('active');
                            if (item.getAttribute('href') === `#${currentSectionId}`) {
                                item.classList.add('active');

                                // Auto Scroll Category Bar Horizontally on Mobile Screens
                                const navWrapper = document.querySelector('.category-nav-wrapper');
                                if (navWrapper) {
                                    const itemLeft = item.offsetLeft;
                                    const itemWidth = item.offsetWidth;
                                    const wrapperWidth = navWrapper.offsetWidth;

                                    navWrapper.scrollTo({
                                        left: itemLeft - (wrapperWidth / 2) + (itemWidth / 2),
                                        behavior: 'smooth'
                                    });
                                }
                            }
                        });
                    }

                    isScrolling = false;
                });
            };

            window.addEventListener('scroll', onScroll, { passive: true });
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.menu-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.menu-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowMenu.init();
});
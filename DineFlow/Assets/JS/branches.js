/**
 * DINEFLOW BRANCHES PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Multi-Branch Smooth Scroll & Parallax Scroll
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowBranches = {
        init() {
            this.initSmoothNav();
            this.initParallax();
        },

        // 1. Smooth Scroll to Directions / Map Section
        initSmoothNav() {
            const directionBtns = document.querySelectorAll('a[href^="#"]');

            directionBtns.forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const targetId = btn.getAttribute('href');
                    if (targetId && targetId !== '#') {
                        const targetEl = document.querySelector(targetId);
                        if (targetEl) {
                            e.preventDefault();
                            const headerOffset = 100;
                            const elementPosition = targetEl.getBoundingClientRect().top;
                            const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

                            window.scrollTo({
                                top: offsetPosition,
                                behavior: 'smooth'
                            });
                        }
                    }
                });
            });
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.branch-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.branch-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowBranches.init();
});
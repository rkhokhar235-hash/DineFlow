/**
 * DINEFLOW TERMS & CONDITIONS PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Parallax Motion
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowTerms = {
        init() {
            this.initParallax();
        },

        // Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.terms-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.terms-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowTerms.init();
});
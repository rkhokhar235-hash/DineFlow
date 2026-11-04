/**
 * DINEFLOW PRIVACY POLICY PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Parallax Motion & Interactive Smooth Scroll
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowPrivacy = {
        init() {
            this.initParallax();
        },

        // Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.privacy-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.privacy-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowPrivacy.init();
});
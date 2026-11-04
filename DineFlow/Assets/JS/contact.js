/**
 * DINEFLOW CONTACT PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Frontend Contact Form Validation & Submission Handling
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowContact = {
        init() {
            this.initParallax();
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.contact-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.contact-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowContact.init();
});
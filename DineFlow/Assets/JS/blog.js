/**
 * DINEFLOW BLOG PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Newsletter Subscription Handler & Parallax Motion
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowBlog = {
        init() {
            this.initNewsletterHandler();
            this.initParallax();
        },

        // 1. Newsletter Subscription Handler
        initNewsletterHandler() {
            const subscribeBtn = document.querySelector('.cta-banner-glass button.btn-df-gold');
            const emailInput = document.querySelector('.cta-banner-glass input[type="email"]');

            if (!subscribeBtn || !emailInput) return;

            subscribeBtn.addEventListener('click', (e) => {
                e.preventDefault();

                const emailVal = emailInput.value.trim();
                if (!emailVal || !emailVal.includes('@')) {
                    emailInput.focus();
                    emailInput.style.borderColor = '#e74c3c';
                    return;
                }

                emailInput.style.borderColor = '';
                const originalText = subscribeBtn.innerHTML;

                subscribeBtn.innerHTML = `<i class="fa-solid fa-spinner fa-spin me-2"></i>Subscribing...`;
                subscribeBtn.disabled = true;

                setTimeout(() => {
                    subscribeBtn.innerHTML = `<i class="fa-solid fa-circle-check me-2"></i>Subscribed!`;
                    subscribeBtn.style.backgroundColor = '#2ecc71';
                    subscribeBtn.style.color = '#fff';
                    emailInput.value = '';

                    setTimeout(() => {
                        subscribeBtn.innerHTML = originalText;
                        subscribeBtn.disabled = false;
                        subscribeBtn.style.backgroundColor = '';
                        subscribeBtn.style.color = '';
                    }, 3500);
                }, 1000);
            });
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.blog-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.blog-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowBlog.init();
});
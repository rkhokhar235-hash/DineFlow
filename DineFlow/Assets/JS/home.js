/**
 * DINEFLOW HOME PAGE MOTION ENGINE
 * Features: GSAP ScrollTrigger Animations & Counter Increments
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowHome = {
        init() {
            this.initCounters();
            this.initParallax();
        },

        // 1. Numerical Counter Animation Engine for Statistics
        initCounters() {
            const counters = document.querySelectorAll('.counter');
            if (!counters.length) return;

            let animated = false;

            const animateCounters = () => {
                counters.forEach(counter => {
                    const target = +counter.getAttribute('data-target');
                    const duration = 2000; // 2 seconds
                    const stepTime = 30;
                    const steps = duration / stepTime;
                    const increment = target / steps;
                    let current = 0;

                    const timer = setInterval(() => {
                        current += increment;
                        if (current >= target) {
                            counter.textContent = target;
                            clearInterval(timer);
                        } else {
                            counter.textContent = Math.ceil(current);
                        }
                    }, stepTime);
                });
            };

            // Trigger counter when stats section is scrolled into view
            const statsSection = document.querySelector('.stats-section');
            if (statsSection) {
                window.addEventListener('scroll', () => {
                    const rect = statsSection.getBoundingClientRect();
                    if (rect.top <= window.innerHeight * 0.8 && !animated) {
                        animated = true;
                        animateCounters();
                    }
                }, { passive: true });
            }
        },

        // 2. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.hero-bg-img');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 20,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowHome.init();
});
/**
 * DINEFLOW ABOUT PAGE MOTION ENGINE
 * Features: Counter Animations & Parallax Motion
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowAbout = {
        init() {
            this.initCounters();
            this.initParallax();
        },

        // 1. Numerical Counter Animation Engine
        initCounters() {
            const counters = document.querySelectorAll('.counter');
            if (!counters.length) return;

            let animated = false;

            const animateCounters = () => {
                counters.forEach(counter => {
                    const target = +counter.getAttribute('data-target');
                    const duration = 2000;
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

            const statsSection = document.querySelector('.stats-banner-section');
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
            const heroImg = document.querySelector('.about-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.about-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowAbout.init();
});
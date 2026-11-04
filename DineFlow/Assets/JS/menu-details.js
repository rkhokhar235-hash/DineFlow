/**
 * DINEFLOW MENU DETAILS PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Image Gallery Switcher, GSAP Animations & Interactive Elements
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowMenuDetails = {
        init() {
            this.initGallery();
            this.initParallax();
        },

        // 1. Interactive Image Gallery Switcher
        initGallery() {
            window.switchDishImage = function(imageSrc, thumbnailEl) {
                const mainImg = document.getElementById('mainDishImg');
                if (!mainImg || !imageSrc) return;

                // Smooth Fade Transition
                mainImg.style.opacity = '0.3';
                mainImg.style.transform = 'scale(0.98)';

                setTimeout(() => {
                    mainImg.src = imageSrc;
                    mainImg.style.opacity = '1';
                    mainImg.style.transform = 'scale(1)';
                }, 200);

                // Update Active Thumbnail State
                const thumbnails = document.querySelectorAll('.thumb-item');
                thumbnails.forEach(thumb => thumb.classList.remove('active'));

                if (thumbnailEl) {
                    thumbnailEl.classList.add('active');
                }
            };
        },

        // 2. Parallax Motion for Dish Hero Background
        initParallax() {
            const heroImg = document.querySelector('.dish-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.dish-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowMenuDetails.init();
});
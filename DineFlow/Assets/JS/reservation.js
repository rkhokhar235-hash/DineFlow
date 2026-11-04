/**
 * DINEFLOW RESERVATION PAGE MOTION ENGINE
 * Location: Rajkot, Gujarat
 * Features: Frontend Form Handler, Date Constraint Setter & Parallax Scroll
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    const DineFlowReservation = {
        init() {
            this.initDateConstraints();
            this.initFormHandler();
            this.initParallax();
        },

        // 1. Set Minimum Date Constraint to Today
        initDateConstraints() {
            const dateInput = document.getElementById('resDate');
            if (dateInput) {
                const today = new Date().toISOString().split('T')[0];
                dateInput.setAttribute('min', today);
                dateInput.value = today;
            }
        },

        // 2. Interactive Frontend Form Submission Handler
        initFormHandler() {
            const submitBtn = document.getElementById('btnReserveSubmit');
            const alertBox = document.getElementById('resSuccessAlert');

            if (!submitBtn || !alertBox) return;

            submitBtn.addEventListener('click', (e) => {
                e.preventDefault();

                // Simple Name Validation Check
                const nameInput = document.getElementById('custName');
                const mobileInput = document.getElementById('custMobile');

                if (nameInput && !nameInput.value.trim()) {
                    nameInput.focus();
                    nameInput.style.borderColor = '#e74c3c';
                    return;
                }

                if (mobileInput && !mobileInput.value.trim()) {
                    mobileInput.focus();
                    mobileInput.style.borderColor = '#e74c3c';
                    return;
                }

                // Show Loading Animation on Button
                const originalText = submitBtn.innerHTML;
                submitBtn.innerHTML = `<i class="fa-solid fa-spinner fa-spin me-2"></i>Processing Reservation...`;
                submitBtn.disabled = true;

                // Simulate Booking Process (Frontend Only)
                setTimeout(() => {
                    submitBtn.innerHTML = `<i class="fa-solid fa-circle-check me-2"></i>Table Reserved!`;
                    submitBtn.classList.remove('btn-df-gold');
                    submitBtn.style.backgroundColor = '#2ecc71';
                    submitBtn.style.color = '#fff';

                    // Reveal Success Alert Box
                    alertBox.classList.remove('d-none');
                    alertBox.scrollIntoView({ behavior: 'smooth', block: 'center' });

                    // Reset Form State after Delay
                    setTimeout(() => {
                        submitBtn.innerHTML = originalText;
                        submitBtn.disabled = false;
                        submitBtn.style.backgroundColor = '';
                        submitBtn.style.color = '';
                    }, 4000);
                }, 1200);
            });
        },

        // 3. Parallax Motion for Hero Background
        initParallax() {
            const heroImg = document.querySelector('.res-hero-bg');
            if (heroImg && typeof gsap !== 'undefined' && typeof ScrollTrigger !== 'undefined') {
                gsap.to(heroImg, {
                    yPercent: 15,
                    ease: 'none',
                    scrollTrigger: {
                        trigger: '.res-hero-section',
                        start: 'top top',
                        end: 'bottom top',
                        scrub: true
                    }
                });
            }
        }
    };

    DineFlowReservation.init();
});
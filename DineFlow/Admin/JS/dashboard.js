/**
 * DINEFLOW ADMIN DASHBOARD MOTION & INTERACTION ENGINE
 * Location: ~/Admin/JS/dashboard.js
 */

document.addEventListener('DOMContentLoaded', () => {
    'use strict';

    // 1. Initialize Weekly Contact Messages Chart via Chart.js
    const ctx = document.getElementById('weeklyMessagesChart');
    if (ctx) {
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: 'Contact Inquiries',
                    data: [8, 14, 11, 22, 19, 28, 25],
                    borderColor: '#D4AF37',
                    backgroundColor: 'rgba(212, 175, 55, 0.08)',
                    borderWidth: 3,
                    fill: true,
                    tension: 0.35,
                    pointBackgroundColor: '#D4AF37',
                    pointBorderColor: '#FFFFFF',
                    pointBorderWidth: 2,
                    pointRadius: 4,
                    pointHoverRadius: 6
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false
                    },
                    tooltip: {
                        backgroundColor: '#151515',
                        titleFont: { family: 'Plus Jakarta Sans', size: 13 },
                        bodyFont: { family: 'Plus Jakarta Sans', size: 12 },
                        padding: 10,
                        cornerRadius: 6,
                        displayColors: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: {
                            color: '#F1F5F9',
                            drawBorder: false
                        },
                        ticks: {
                            font: { family: 'Plus Jakarta Sans', size: 11 },
                            color: '#777777',
                            stepSize: 10
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        },
                        ticks: {
                            font: { family: 'Plus Jakarta Sans', size: 11 },
                            color: '#777777'
                        }
                    }
                }
            }
        });
    }

    // 2. Statistics Counter Animation
    const counters = document.querySelectorAll('.counter-value');
    counters.forEach(counter => {
        const target = +counter.getAttribute('data-target');
        let count = 0;
        const speed = target / 30;

        const updateCount = () => {
            count += speed;
            if (count < target) {
                counter.innerText = Math.ceil(count);
                setTimeout(updateCount, 40);
            } else {
                counter.innerText = target;
            }
        };
        updateCount();
    });
});
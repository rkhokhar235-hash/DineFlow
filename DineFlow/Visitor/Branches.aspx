<%@ Page Title="Our Branches | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="Branches.aspx.cs" Inherits="DineFlow.Visitor.Branches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/branches.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="branch-hero-section">
        <div class="branch-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Hero/home-hero.png") %>" alt="DineFlow Luxury Restaurant Destinations" class="branch-hero-bg" />
        <div class="container container-xl branch-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="branch-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-location-dot me-2"></i>OUR LUXURY DESTINATIONS
                        </span>
                        <h1 class="hero-title">Discover DineFlow Locations Across Gujarat</h1>
                        <p class="hero-description">
                            Experience the pinnacle of royal pure vegetarian hospitality. Visit our flagship outlet in Rajkot or explore our upcoming culinary destinations designed with modern elegance.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome to Our Branches (Intro Section) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">ROYAL PRESENCE</span>
                    <h2 class="section-title">Crafted for Excellence in Every City</h2>
                    <p class="branch-text">
                        DineFlow is expanding its signature pure vegetarian dining experience across major hubs in Gujarat. Every branch reflects our core philosophy: authentic recipes, cold-pressed oils, pure A2 Gir Cow Ghee, and state-of-the-art QR table ordering.
                    </p>
                    <p class="branch-text">
                        Whether you are dining with family in Rajkot or planning a business luncheon, our branches provide identical standards of luxury, hygiene, and authentic flavor.
                    </p>
                    <div class="d-flex flex-wrap gap-3 mt-4">
                        <div class="branch-badge-pill"><i class="fa-solid fa-building-flag me-2"></i>Flagship Outlet</div>
                        <div class="branch-badge-pill"><i class="fa-solid fa-square-parking me-2"></i>Valet Available</div>
                        <div class="branch-badge-pill"><i class="fa-solid fa-wifi me-2"></i>High-Speed Wi-Fi</div>
                        <div class="branch-badge-pill"><i class="fa-solid fa-wheelchair me-2"></i>Accessible</div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="DineFlow Royal Interior" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Featured Flagship Branch Section (Rajkot) -->
    <section class="section-padding bg-dark-canvas position-relative">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">FLAGSHIP LOCATION</span>
                <h2 class="section-title">Rajkot Main Branch</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="branch-featured-card p-4 p-md-5 rounded-4 border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-6">
                        <div class="branch-img-wrapper position-relative rounded-4 overflow-hidden border-subtle">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="DineFlow Rajkot Branch Exterior & Interior" class="img-fluid w-100 branch-img" />
                            <span class="branch-status-tag active-tag"><i class="fa-solid fa-circle-check me-1"></i>Now Open</span>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <span class="badge-gold mb-2"><i class="fa-solid fa-star me-1"></i>KALAWAD ROAD, RAJKOT</span>
                        <h3 class="branch-card-title my-2">DineFlow - Crystal Mall Outlet</h3>
                        <p class="text-muted fs-6 mb-4">
                            Our flagship outlet located on the prime Kalawad Road corridor. Featuring opulent chandeliers, 180+ seating capacity, private AC family cabins, and an open-sky terrace lounge.
                        </p>

                        <ul class="list-unstyled branch-info-list mb-4">
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="fa-solid fa-location-dot text-gold fs-5 mt-1"></i>
                                <div>
                                    <strong class="text-main d-block">Full Address</strong>
                                    <span class="text-muted fs-7">Opposite Crystal Mall, Kalawad Road, Rajkot, Gujarat 360005</span>
                                </div>
                            </li>
                            <li class="d-flex align-items-center gap-3 mb-3">
                                <i class="fa-solid fa-phone text-gold fs-5"></i>
                                <div>
                                    <strong class="text-main d-block">Direct Contact</strong>
                                    <span class="text-muted fs-7">+91 98765 43210 / +91 281 2345678</span>
                                </div>
                            </li>
                            <li class="d-flex align-items-center gap-3">
                                <i class="fa-solid fa-envelope text-gold fs-5"></i>
                                <div>
                                    <strong class="text-main d-block">Branch Email</strong>
                                    <span class="text-muted fs-7">rajkot@dineflow.in</span>
                                </div>
                            </li>
                        </ul>

                        <div class="d-flex flex-wrap gap-3 pt-2">
                            <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-md">
                                <span>Reserve Table Here</span>
                                <i class="fa-solid fa-calendar-check ms-2"></i>
                            </a>
                            <a href="#map-section" class="btn-df-outline btn-md">
                                <span>Get Directions</span>
                                <i class="fa-solid fa-route ms-2"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Branch Information Cards (Future Ready Multi-Branch Grid) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">EXPANDING CULINARY FOOTPRINT</span>
                <h2 class="section-title">All Locations & Upcoming Outlets</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <!-- Branch Card 1: Rajkot (Active) -->
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="branch-grid-card p-4 rounded-4 bg-dark-canvas border-gold-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <span class="badge-gold">Rajkot</span>
                                <span class="status-indicator open"><i class="fa-solid fa-circle me-1"></i>Open Now</span>
                            </div>
                            <h4 class="branch-card-heading text-main mb-2">Kalawad Road Outlet</h4>
                            <p class="text-muted fs-7 mb-3"><i class="fa-solid fa-map-pin text-gold me-2"></i>Opp. Crystal Mall, Kalawad Road, Rajkot</p>
                            <p class="text-muted fs-7">Featuring 180+ Seats, Private Cabins, Valet Parking & QR Ordering.</p>
                        </div>
                        <div class="pt-3 border-top-subtle d-flex justify-content-between align-items-center">
                            <span class="text-gold fw-bold fs-7"><i class="fa-solid fa-clock me-1"></i>11 AM - 11 PM</span>
                            <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Book Table</a>
                        </div>
                    </div>
                </div>

                <!-- Branch Card 2: Ahmedabad (Upcoming - Future Ready Layout) -->
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="branch-grid-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 d-flex flex-column justify-content-between opacity-85">
                        <div>
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <span class="badge-subtle">Ahmedabad</span>
                                <span class="status-indicator coming"><i class="fa-solid fa-hourglass-half me-1"></i>Opening Soon</span>
                            </div>
                            <h4 class="branch-card-heading text-main mb-2">SG Highway Outlet</h4>
                            <p class="text-muted fs-7 mb-3"><i class="fa-solid fa-map-pin text-gold me-2"></i>Near ISCON Circle, SG Highway, Ahmedabad</p>
                            <p class="text-muted fs-7">Our flagship 250-seater grand dining hall currently under construction.</p>
                        </div>
                        <div class="pt-3 border-top-subtle d-flex justify-content-between align-items-center">
                            <span class="text-muted fs-7"><i class="fa-solid fa-calendar me-1"></i>Coming Q4 2026</span>
                            <span class="badge-subtle fs-7">In Progress</span>
                        </div>
                    </div>
                </div>

                <!-- Branch Card 3: Surat (Upcoming - Future Ready Layout) -->
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="branch-grid-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 d-flex flex-column justify-content-between opacity-85">
                        <div>
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <span class="badge-subtle">Surat</span>
                                <span class="status-indicator coming"><i class="fa-solid fa-hourglass-half me-1"></i>Opening Soon</span>
                            </div>
                            <h4 class="branch-card-heading text-main mb-2">Vesu Main Road Outlet</h4>
                            <p class="text-muted fs-7 mb-3"><i class="fa-solid fa-map-pin text-gold me-2"></i>VIP Road, Vesu, Surat</p>
                            <p class="text-muted fs-7">Luxury pure veg experience tailored for Surat's food enthusiasts.</p>
                        </div>
                        <div class="pt-3 border-top-subtle d-flex justify-content-between align-items-center">
                            <span class="text-muted fs-7"><i class="fa-solid fa-calendar me-1"></i>Coming Q1 2027</span>
                            <span class="badge-subtle fs-7">Planning Phase</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Opening Hours (Full Width Glass Card Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="opening-hours-card p-4 p-md-5 rounded-4 border-gold-subtle bg-dark-surface shadow-lg text-center" data-aos="zoom-in">
                <span class="sub-title text-gold">TIMINGS & SERVICE SCHEDULE</span>
                <h2 class="section-title my-2">Rajkot Branch Operating Hours</h2>
                <p class="text-muted max-w-700 mx-auto mb-4">We are open 365 days a year to serve fresh Gujarati thalis, Punjabi curries, and sizzlers.</p>

                <div class="row g-4 justify-content-center">
                    <div class="col-md-5 col-lg-4">
                        <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                            <i class="fa-solid fa-sun text-gold fs-3 mb-2"></i>
                            <h5 class="text-main mb-1">Lunch Service</h5>
                            <p class="text-gold fw-bold fs-5 mb-0">11:00 AM - 03:30 PM</p>
                            <small class="text-muted fs-7">Unlimited Thalis & A La Carte</small>
                        </div>
                    </div>
                    <div class="col-md-5 col-lg-4">
                        <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                            <i class="fa-solid fa-moon text-gold fs-3 mb-2"></i>
                            <h5 class="text-main mb-1">Dinner Service</h5>
                            <p class="text-gold fw-bold fs-5 mb-0">07:00 PM - 11:00 PM</p>
                            <small class="text-muted fs-7">Grand Evening Buffet & Sizzlers</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Restaurant Facilities (Feature Cards Grid) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">WORLD-CLASS AMENITIES</span>
                <h2 class="section-title">Rajkot Branch Facilities</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="facility-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="facility-icon-box mx-auto mb-3"><i class="fa-solid fa-couch"></i></div>
                        <h4 class="facility-title fs-5">Plush AC Seating</h4>
                        <p class="facility-desc text-muted fs-7 mb-0">Ergonomic seating with temperature-controlled central air conditioning.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="facility-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="facility-icon-box mx-auto mb-3"><i class="fa-solid fa-users-viewfinder"></i></div>
                        <h4 class="facility-title fs-5">Private Cabins</h4>
                        <p class="facility-desc text-muted fs-7 mb-0">Dedicated soundproof AC cabins for corporate luncheons and family privacy.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="facility-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="facility-icon-box mx-auto mb-3"><i class="fa-solid fa-qrcode"></i></div>
                        <h4 class="facility-title fs-5">Instant QR Ordering</h4>
                        <p class="facility-desc text-muted fs-7 mb-0">Scan table QR standee to view digital menu & order without waiting for staff.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="facility-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="facility-icon-box mx-auto mb-3"><i class="fa-solid fa-seedling"></i></div>
                        <h4 class="facility-title fs-5">100% Pure Veg</h4>
                        <p class="facility-desc text-muted fs-7 mb-0">Strictly pure vegetarian kitchen with separate dedicated Jain prep section.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Parking & Accessibility (Split Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="DineFlow Valet Parking Area" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <span class="sub-title">HASSLE-FREE ARRIVAL</span>
                    <h2 class="section-title">Valet Parking & Full Accessibility</h2>
                    <p class="branch-text">
                        We understand that a great dining experience begins with a seamless arrival. Our Rajkot outlet on Kalawad Road features complimentary valet parking service for all dining guests.
                    </p>
                    <ul class="list-unstyled space-list my-4">
                        <li class="d-flex align-items-center gap-3 py-2 border-bottom-subtle">
                            <i class="fa-solid fa-square-parking text-gold fs-4"></i>
                            <div>
                                <h6 class="text-main mb-0">Complimentary Valet Service</h6>
                                <small class="text-muted fs-7">Drive in directly; our trained valets handle your vehicle safely.</small>
                            </div>
                        </li>
                        <li class="d-flex align-items-center gap-3 py-2 border-bottom-subtle">
                            <i class="fa-solid fa-wheelchair text-gold fs-4"></i>
                            <div>
                                <h6 class="text-main mb-0">Wheelchair Accessible Ramp</h6>
                                <small class="text-muted fs-7">Easy ramp access and spacious elevator for senior citizens.</small>
                            </div>
                        </li>
                        <li class="d-flex align-items-center gap-3 py-2 border-bottom-subtle">
                            <i class="fa-solid fa-shield-halved text-gold fs-4"></i>
                            <div>
                                <h6 class="text-main mb-0">24/7 CCTV Monitored Parking</h6>
                                <small class="text-muted fs-7">Complete peace of mind for your vehicle security.</small>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Google Map Preview Section -->
    <section id="map-section" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">GEOGRAPHIC LOCATION</span>
                <h2 class="section-title">Find Rajkot Branch on Map</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row align-items-center g-4">
                <div class="col-lg-8" data-aos="fade-right">
                    <div class="map-frame rounded-4 overflow-hidden border-gold-subtle shadow-lg">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/qr-scan.jfif") %>" alt="DineFlow Rajkot Google Map Directions" class="img-fluid w-100 h-100 object-fit-cover" />
                    </div>
                </div>
                <div class="col-lg-4" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-canvas border-subtle">
                        <h4 class="text-gold mb-3"><i class="fa-solid fa-compass me-2"></i>Navigation Guide</h4>
                        <p class="text-muted fs-7 mb-3">
                            Located right opposite Crystal Mall on the main Kalawad Road artery. Easily accessible from Kotecha Chowk, Yagnik Road, and University Road.
                        </p>
                        <div class="d-grid gap-2">
                            <a href="https://maps.google.com" target="_blank" rel="noopener noreferrer" class="btn-df-gold text-center">
                                <span>Open in Google Maps</span>
                                <i class="fa-solid fa-up-right-from-square ms-2"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Nearby Landmarks -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">PRIME LANDMARKS</span>
                <h2 class="section-title">Nearby Rajkot Points of Interest</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 justify-content-center">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-bag-shopping text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-1">Crystal Mall</h5>
                        <p class="text-muted fs-7 mb-0">Directly Opposite (100 Meters)</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-graduation-cap text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-1">Saurashtra University</h5>
                        <p class="text-muted fs-7 mb-0">2.5 Kms away via University Road</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-plane text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-1">Rajkot Airport</h5>
                        <p class="text-muted fs-7 mb-0">8.0 Kms via Ring Road Bypass</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Customer Reviews -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">VERIFIED VISITOR REVIEWS</span>
                <h2 class="section-title">What Diners Say About Our Rajkot Outlet</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="review-card p-4 rounded-4 bg-dark-canvas border-subtle h-100">
                        <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="text-main fs-6 italic">"The location on Kalawad Road is super convenient. Valet parking was prompt, and the private AC cabin made our family reunion dinner very peaceful."</p>
                        <div class="mt-3 pt-3 border-top-subtle">
                            <h6 class="text-gold mb-0">Harshil Mehta</h6>
                            <small class="text-muted">Rajkot Resident</small>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="review-card p-4 rounded-4 bg-dark-canvas border-subtle h-100">
                        <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="text-main fs-6 italic">"Finest pure vegetarian ambiance in Rajkot. The Unlimited Kathiyawadi Thali with fresh Bajra Rotla and A2 Ghee was world-class!"</p>
                        <div class="mt-3 pt-3 border-top-subtle">
                            <h6 class="text-gold mb-0">Pooja Shah</h6>
                            <small class="text-muted">Kalawad Road, Rajkot</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Reserve Table CTA Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <span class="sub-title">PLAN YOUR VISIT</span>
                <h2 class="section-title my-3">Book Your Table at DineFlow Rajkot</h2>
                <p class="text-muted mx-auto mb-4 max-w-700">
                    Ensure zero waiting time for your family. Reserve online and experience contactless ordering at your table.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book Table at Rajkot Outlet</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Closing Premium Banner -->
    <section class="final-branch-banner position-relative py-5 bg-dark-surface text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Bringing Royal Pure Veg Dining To Your Neighborhood"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/branches.js") %>"></script>
</asp:Content>
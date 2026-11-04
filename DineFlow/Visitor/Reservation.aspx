<%@ Page Title="Reserve A Table | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="DineFlow.Visitor.Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/reservation.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="res-hero-section">
        <div class="res-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Reservation/hero.jpg") %>" alt="DineFlow Rajkot Table Reservation" class="res-hero-bg" />
        <div class="container container-xl res-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="res-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-chair me-2"></i>TABLE RESERVATIONS
                        </span>
                        <h1 class="hero-title">Reserve Your Royal Dining Experience in Rajkot</h1>
                        <p class="hero-description">
                            Avoid weekend waiting queues. Secure your private AC cabin or main dining table online and enjoy contactless QR ordering from the moment you step in.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome Reservation Message (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">SEAMLESS HOSPITALITY</span>
                    <h2 class="section-title">A Warm Gujarati Welcome Awaits You</h2>
                    <p class="res-text">
                        Located conveniently on Kalawad Road near Crystal Mall, DineFlow offers a serene, luxurious atmosphere crafted for multi-generational family dinners, romantic dates, and business luncheons.
                    </p>
                    <p class="res-text">
                        Booking your table in advance ensures preferred seating, customized celebratory table decor, and zero waiting friction for your entire family.
                    </p>
                    <div class="row g-3 mt-3">
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Instant Table Confirmation</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Zero Cancellation Fee</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Special Occasion Setup</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Dedicated Valet Parking</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Reservation/dining-area.jpg") %>" alt="DineFlow Luxury Dining Area" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Luxury Reservation Form Section (Glass Card Form) -->
    <section id="booking-form-section" class="section-padding bg-dark-canvas position-relative">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">ONLINE TABLE BOOKING</span>
                <h2 class="section-title">Reserve Your Table</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10 col-xl-9" data-aos="fade-up" data-aos-delay="100">
                    <div class="res-form-card p-4 p-md-5 rounded-4 border-gold-subtle bg-dark-surface shadow-lg">
                        
                        <!-- Success Alert Message (Frontend Toggle Only) -->
                        <div id="resSuccessAlert" class="alert alert-gold border-gold-subtle text-main p-3 rounded-3 mb-4 d-none">
                            <i class="fa-solid fa-circle-check text-gold fs-5 me-2"></i>
                            <strong>Table Reserved Successfully!</strong> We have received your booking request for DineFlow Rajkot. Our team will contact you shortly for confirmation.
                        </div>

                        <div class="row g-4">
                            <!-- Customer Name -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="custName" class="form-label-df"><i class="fa-solid fa-user text-gold me-2"></i>Full Name</label>
                                    <input type="text" id="custName" class="form-control-df" placeholder="e.g. Harshil Mehta" />
                                </div>
                            </div>

                            <!-- Mobile Number -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="custMobile" class="form-label-df"><i class="fa-solid fa-phone text-gold me-2"></i>Mobile Number</label>
                                    <input type="tel" id="custMobile" class="form-control-df" placeholder="e.g. +91 98765 43210" />
                                </div>
                            </div>

                            <!-- Email Address -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="custEmail" class="form-label-df"><i class="fa-solid fa-envelope text-gold me-2"></i>Email Address</label>
                                    <input type="email" id="custEmail" class="form-control-df" placeholder="e.g. harshil@example.com" />
                                </div>
                            </div>

                            <!-- Number of Guests -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="guestCount" class="form-label-df"><i class="fa-solid fa-users text-gold me-2"></i>Number of Guests</label>
                                    <select id="guestCount" class="form-select-df">
                                        <option value="2">2 Guests (Couple Dining)</option>
                                        <option value="4" selected="selected">4 Guests (Small Family)</option>
                                        <option value="6">6 Guests (Family Table)</option>
                                        <option value="8">8 Guests (Large Group)</option>
                                        <option value="12">12+ Guests (Party/Private Cabin)</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Reservation Date -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="resDate" class="form-label-df"><i class="fa-solid fa-calendar-days text-gold me-2"></i>Reservation Date</label>
                                    <input type="date" id="resDate" class="form-control-df" />
                                </div>
                            </div>

                            <!-- Reservation Time Slot -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="resTime" class="form-label-df"><i class="fa-solid fa-clock text-gold me-2"></i>Time Slot</label>
                                    <select id="resTime" class="form-select-df">
                                        <optgroup label="Lunch Hours">
                                            <option value="11:30 AM">11:30 AM</option>
                                            <option value="12:30 PM" selected="selected">12:30 PM</option>
                                            <option value="01:30 PM">01:30 PM</option>
                                            <option value="02:30 PM">02:30 PM</option>
                                        </optgroup>
                                        <optgroup label="Dinner Hours">
                                            <option value="07:00 PM">07:00 PM</option>
                                            <option value="08:00 PM">08:00 PM</option>
                                            <option value="09:00 PM">09:00 PM</option>
                                            <option value="10:00 PM">10:00 PM</option>
                                        </optgroup>
                                    </select>
                                </div>
                            </div>

                            <!-- Preferred Seating Area -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="seatingPref" class="form-label-df"><i class="fa-solid fa-couch text-gold me-2"></i>Seating Preference</label>
                                    <select id="seatingPref" class="form-select-df">
                                        <option value="Main Hall AC">Main AC Dining Hall</option>
                                        <option value="Private Family Cabin">Private AC Family Cabin</option>
                                        <option value="Terrace Open Lounge">Open Sky Terrace Lounge</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Occasion -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="occasionType" class="form-label-df"><i class="fa-solid fa-cake-candles text-gold me-2"></i>Occasion (Optional)</label>
                                    <select id="occasionType" class="form-select-df">
                                        <option value="Casual Dinner">Casual Family Dinner</option>
                                        <option value="Birthday Celebration">Birthday Celebration</option>
                                        <option value="Anniversary">Anniversary Celebration</option>
                                        <option value="Business Lunch">Business Meeting/Lunch</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Special Requests -->
                            <div class="col-12">
                                <div class="form-group-df">
                                    <label for="specialReq" class="form-label-df"><i class="fa-solid fa-pen-to-square text-gold me-2"></i>Special Requests or Food Instructions</label>
                                    <textarea id="specialReq" class="form-control-df text-area-df" rows="3" placeholder="e.g. Require high chair for baby, Jain food options required, or birthday cake arrangement..."></textarea>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="col-12 text-center mt-4">
                                <button type="button" id="btnReserveSubmit" class="btn-df-gold btn-lg w-100 py-3">
                                    <span>Confirm Table Reservation</span>
                                    <i class="fa-solid fa-arrow-right ms-2"></i>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Dining Experience Benefits (4 Column Grid) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">THE DINEFLOW ADVANTAGE</span>
                <h2 class="section-title">Why Reserve With Us?</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="benefit-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="benefit-icon-box mx-auto mb-3"><i class="fa-solid fa-clock-rotate-left"></i></div>
                        <h4 class="benefit-title fs-5">Zero Wait Time</h4>
                        <p class="benefit-desc text-muted fs-7 mb-0">Your table is prepared and ready prior to your arrival, even during weekend rushes.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="benefit-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="benefit-icon-box mx-auto mb-3"><i class="fa-solid fa-chair"></i></div>
                        <h4 class="benefit-title fs-5">Guaranteed Seating</h4>
                        <p class="benefit-desc text-muted fs-7 mb-0">Choose between main AC hall, private family cabins, or open terrace lounge.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="benefit-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="benefit-icon-box mx-auto mb-3"><i class="fa-solid fa-wand-magic-sparkles"></i></div>
                        <h4 class="benefit-title fs-5">Celebration Setup</h4>
                        <p class="benefit-desc text-muted fs-7 mb-0">Complimentary table decor for birthdays and anniversaries upon prior note.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="benefit-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 text-center">
                        <div class="benefit-icon-box mx-auto mb-3"><i class="fa-solid fa-qrcode"></i></div>
                        <h4 class="benefit-title fs-5">Smart QR Ordering</h4>
                        <p class="benefit-desc text-muted fs-7 mb-0">Order directly from your phone standee at table for ultra-fast food delivery.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Restaurant Timings (Full Width Image Overlay) -->
    <section class="timing-banner-section position-relative py-5">
        <div class="timing-banner-bg" style="background-image: url('<%= ResolveUrl("~/Assets/Images/Reservation/timing-bg.jpg") %>');"></div>
        <div class="timing-banner-overlay"></div>
        <div class="container container-xl position-relative z-index-2 py-5 text-center" data-aos="zoom-in">
            <span class="sub-title text-gold">OPERATIONAL HOURS</span>
            <h2 class="banner-title text-white my-3">We Are Open 7 Days A Week</h2>
            <div class="row g-4 justify-content-center mt-3 max-w-700 mx-auto">
                <div class="col-md-6">
                    <div class="timing-glass-card p-3 rounded-3 border-gold-subtle bg-dark-surface">
                        <h5 class="text-gold mb-1">Lunch Hours</h5>
                        <p class="text-white fs-6 mb-0">11:00 AM - 03:30 PM</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="timing-glass-card p-3 rounded-3 border-gold-subtle bg-dark-surface">
                        <h5 class="text-gold mb-1">Dinner Hours</h5>
                        <p class="text-white fs-6 mb-0">07:00 PM - 11:00 PM</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Seating Options (3 Column Image Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">AMBIANCE & SEATING</span>
                <h2 class="section-title">Choose Your Dining Atmosphere</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="seating-card rounded-4 border-subtle overflow-hidden bg-dark-surface h-100">
                        <div class="seating-img-wrap overflow-hidden">
                            <img src="<%= ResolveUrl("~/Assets/Images/Reservation/dining-area.jpg") %>" alt="Main AC Dining Hall" class="img-fluid w-100" />
                        </div>
                        <div class="p-4">
                            <h4 class="text-gold fs-5 mb-2">Main AC Dining Hall</h4>
                            <p class="text-muted fs-7 mb-0">Spacious plush seating surrounded by warm chandeliers, suitable for families and large groups.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="seating-card rounded-4 border-subtle overflow-hidden bg-dark-surface h-100">
                        <div class="seating-img-wrap overflow-hidden">
                            <img src="<%= ResolveUrl("~/Assets/Images/Reservation/private-table.jpg") %>" alt="Private Family Cabins" class="img-fluid w-100" />
                        </div>
                        <div class="p-4">
                            <h4 class="text-gold fs-5 mb-2">Private Family Cabins</h4>
                            <p class="text-muted fs-7 mb-0">Enclosed luxury cabins providing complete privacy for intimate family celebrations and corporate discussions.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="seating-card rounded-4 border-subtle overflow-hidden bg-dark-surface h-100">
                        <div class="seating-img-wrap overflow-hidden">
                            <img src="<%= ResolveUrl("~/Assets/Images/Reservation/family-seating.jpg") %>" alt="Open Sky Terrace Lounge" class="img-fluid w-100" />
                        </div>
                        <div class="p-4">
                            <h4 class="text-gold fs-5 mb-2">Open Sky Terrace Lounge</h4>
                            <p class="text-muted fs-7 mb-0">Enjoy Rajkot's pleasant evening weather with outdoor breeze seating and soft ambient lighting.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Celebration Packages (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <img src="<%= ResolveUrl("~/Assets/Images/Reservation/celebration.jpg") %>" alt="Birthday & Anniversary Celebrations" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <span class="sub-title">SPECIAL OCCASIONS</span>
                    <h2 class="section-title">Host Birthdays & Anniversaries</h2>
                    <p class="res-text">
                        Make your special milestones unforgettable at DineFlow Rajkot. Our guest relations team provides complete celebration arrangements including:
                    </p>
                    <ul class="celebration-list list-unstyled my-4">
                        <li class="py-2 border-bottom-subtle text-main"><i class="fa-solid fa-gift text-gold me-2"></i>Customized table balloon & floral decor</li>
                        <li class="py-2 border-bottom-subtle text-main"><i class="fa-solid fa-cake-candles text-gold me-2"></i>Handcrafted eggless birthday cake on request</li>
                        <li class="py-2 border-bottom-subtle text-main"><i class="fa-solid fa-music text-gold me-2"></i>Special celebration music & sparkler candles</li>
                        <li class="py-2 border-bottom-subtle text-main"><i class="fa-solid fa-utensils text-gold me-2"></i>Customized multi-course banquet thali menu</li>
                    </ul>
                    <a href="#booking-form-section" class="btn-df-gold">
                        <span>Book Celebration Table</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Reservation Guidelines (Timeline/Step Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">POLICY & GUIDELINES</span>
                <h2 class="section-title">Reservation Guidelines</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 justify-content-center">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="guide-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <span class="guide-num text-gold fw-bold display-6 d-block mb-2">01</span>
                        <h5 class="text-main mb-2">15-Minute Grace Period</h5>
                        <p class="text-muted fs-7 mb-0">Tables are held for 15 minutes past reservation time. Please inform us if running late.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="guide-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <span class="guide-num text-gold fw-bold display-6 d-block mb-2">02</span>
                        <h5 class="text-main mb-2">Strict 100% Pure Veg</h5>
                        <p class="text-muted fs-7 mb-0">We strictly serve pure vegetarian cuisine with dedicated separate Jain food preparation protocols.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="guide-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <span class="guide-num text-gold fw-bold display-6 d-block mb-2">03</span>
                        <h5 class="text-main mb-2">Large Group Pre-Orders</h5>
                        <p class="text-muted fs-7 mb-0">For parties over 12 guests, pre-selecting a banquet thali menu ensures smooth kitchen coordination.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Google Map & Location Preview -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-4">
                <div class="col-lg-5" data-aos="fade-right">
                    <span class="sub-title">PRIME LOCATION</span>
                    <h2 class="section-title">Find Us in Rajkot</h2>
                    <p class="res-text">
                        Conveniently situated opposite Crystal Mall on Kalawad Road, Rajkot. Ample valet parking available for all guests.
                    </p>
                    <div class="location-info mt-4">
                        <p class="text-main mb-2"><i class="fa-solid fa-location-dot text-gold me-2"></i>Opp. Crystal Mall, Kalawad Road, Rajkot, Gujarat 360005</p>
                        <p class="text-main mb-2"><i class="fa-solid fa-phone text-gold me-2"></i>+91 98765 43210 / +91 281 2345678</p>
                        <p class="text-main mb-0"><i class="fa-solid fa-envelope text-gold me-2"></i>reservations@dineflow.in</p>
                    </div>
                </div>
                <div class="col-lg-7" data-aos="fade-left">
                    <div class="map-frame rounded-4 overflow-hidden border-gold-subtle shadow-lg">
                        <img src="<%= ResolveUrl("~/Assets/Images/Reservation/location-map.jpg") %>" alt="DineFlow Rajkot Location Map" class="img-fluid w-100 h-100 object-fit-cover" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Customer Testimonials -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">HAPPY DINERS</span>
                <h2 class="section-title">Guest Experiences</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="review-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="text-main fs-6 italic">"We booked a private cabin for my father's 60th birthday. The table setup with flowers was waiting for us, and the Kathiyawadi Thali was spectacular!"</p>
                        <div class="mt-3 pt-3 border-top-subtle">
                            <h6 class="text-gold mb-0">Harshil Mehta</h6>
                            <small class="text-muted">Rajkot Resident</small>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="review-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="text-main fs-6 italic">"Online reservation was super smooth. Zero waiting on a crowded Sunday night! The QR table order system is so fast."</p>
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
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-canvas shadow-lg" data-aos="zoom-in">
                <span class="sub-title">SECURE YOUR TABLE TODAY</span>
                <h2 class="section-title my-3">Ready to Dining With Us?</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Experience Rajkot's finest pure vegetarian thalis, tandoori starters, and international fast food under one luxury roof.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href="#booking-form-section" class="btn-df-gold btn-lg">
                        <span>Book Your Table Now</span>
                        <i class="fa-solid fa-arrow-up ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Closing Premium Banner -->
    <section class="final-res-banner position-relative py-5 bg-dark-canvas text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Atithi Devo Bhava - Hospitality From The Heart"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/reservation.js") %>"></script>
</asp:Content>
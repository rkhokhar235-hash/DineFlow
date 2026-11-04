<%@ Page Title="Frequently Asked Questions | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="DineFlow.Visitor.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/faq.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="faq-hero-section">
        <div class="faq-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/FAQ/hero.jpg") %>" alt="DineFlow Help Center & FAQ" class="faq-hero-bg" />
        <div class="container container-xl faq-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="faq-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-circle-question me-2"></i>HELP CENTER & KNOWLEDGE BASE
                        </span>
                        <h1 class="hero-title">Frequently Asked Questions</h1>
                        <p class="hero-description">
                            Find immediate answers to questions regarding table reservations, our 100% pure veg menu, Jain food options, valet parking, and private event celebrations at DineFlow Rajkot.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome Help Center (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">ASSISTANCE & GUIDANCE</span>
                    <h2 class="section-title">Everything You Need To Know Before Dining</h2>
                    <p class="faq-text">
                        At DineFlow, we believe in complete transparency and flawless hospitality. To make your dining experience smooth from arrival to departure, we have compiled comprehensive answers to common guest inquiries.
                    </p>
                    <p class="faq-text">
                        If you cannot find an answer to your specific query, our guest relations team on Kalawad Road is always available via phone or live WhatsApp desk.
                    </p>
                    <div class="row g-3 mt-3">
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Categorized Instant Answers</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Interactive Live Search Bar</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Clear Reservation Guidelines</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Direct Support Escalation</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/FAQ/help-center.jpg") %>" alt="DineFlow Help Desk Support" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Search FAQ Bar (Interactive Filter Bar) -->
    <section class="faq-search-section py-4 bg-dark-canvas border-top-subtle border-bottom-subtle sticky-faq-bar">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="faq-search-box position-relative">
                        <i class="fa-solid fa-magnifying-glass search-icon text-gold"></i>
                        <input type="text" id="faqSearchInput" class="form-control-df search-input-df" placeholder="Search questions (e.g., reservation, Jain food, parking, timings)..." />
                        <button type="button" id="btnClearSearch" class="btn-clear-search d-none"><i class="fa-solid fa-xmark"></i></button>
                    </div>
                </div>
            </div>
            <!-- Category Pills Filter -->
            <div class="d-flex justify-content-center flex-wrap gap-2 mt-3">
                <button type="button" class="faq-category-btn active" data-cat="all"><i class="fa-solid fa-layer-group me-2"></i>All Topics</button>
                <button type="button" class="faq-category-btn" data-cat="reservations"><i class="fa-solid fa-calendar-check me-2"></i>Reservations</button>
                <button type="button" class="faq-category-btn" data-cat="menu"><i class="fa-solid fa-utensils me-2"></i>Menu & Food</button>
                <button type="button" class="faq-category-btn" data-cat="policies"><i class="fa-solid fa-shield-halved me-2"></i>Policies & Payments</button>
                <button type="button" class="faq-category-btn" data-cat="facilities"><i class="fa-solid fa-couch me-2"></i>Facilities & Location</button>
            </div>
        </div>
    </section>

    <!-- 4. Reservation Questions (Accordion Layout) -->
    <section id="sec-reservations" class="section-padding bg-dark-surface faq-category-section" data-category="reservations">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">BOOKING & TABLES</span>
                <h2 class="section-title">Table Reservation Questions</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10" data-aos="fade-up">
                    <div class="accordion df-accordion" id="accReservations">
                        
                        <div class="accordion-item bg-dark-canvas border-gold-subtle rounded-3 mb-3 faq-item">
                            <h2 class="accordion-header" id="resHeading1">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#resCollapse1" aria-expanded="false" aria-controls="resCollapse1">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>How far in advance can I reserve a table at DineFlow Rajkot?
                                </button>
                            </h2>
                            <div id="resCollapse1" class="accordion-collapse collapse" aria-labelledby="resHeading1" data-bs-parent="#accReservations">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Online table reservations can be made up to 30 days in advance via our website. For urgent same-day bookings or large group reservations, you can also call our direct guest hotline at +91 98765 43210.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-canvas border-gold-subtle rounded-3 mb-3 faq-item">
                            <h2 class="accordion-header" id="resHeading2">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#resCollapse2" aria-expanded="false" aria-controls="resCollapse2">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>What happens if I arrive late for my reserved table?
                                </button>
                            </h2>
                            <div id="resCollapse2" class="accordion-collapse collapse" aria-labelledby="resHeading2" data-bs-parent="#accReservations">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    We hold reserved tables for a grace period of 15 minutes past the scheduled time. If you are running late due to traffic on Kalawad Road, please call us to hold your table longer.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-canvas border-gold-subtle rounded-3 faq-item">
                            <h2 class="accordion-header" id="resHeading3">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#resCollapse3" aria-expanded="false" aria-controls="resCollapse3">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Can I request a private AC cabin or specific seating area?
                                </button>
                            </h2>
                            <div id="resCollapse3" class="accordion-collapse collapse" aria-labelledby="resHeading3" data-bs-parent="#accReservations">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Yes! When filling out the online reservation form, you can select your preferred seating area: Main AC Hall, Private AC Family Cabin, or Open-Sky Terrace Lounge. Cabin requests are allocated on a first-come basis.
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Menu & Food Questions (Accordion Layout) -->
    <section id="sec-menu" class="section-padding bg-dark-canvas faq-category-section" data-category="menu">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CULINARY & DIET</span>
                <h2 class="section-title">Menu & Food Questions</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10" data-aos="fade-up">
                    <div class="accordion df-accordion" id="accMenu">
                        
                        <div class="accordion-item bg-dark-surface border-gold-subtle rounded-3 mb-3 faq-item">
                            <h2 class="accordion-header" id="menuHeading1">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#menuCollapse1" aria-expanded="false" aria-controls="menuCollapse1">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Are Jain food preparations available across all menu categories?
                                </button>
                            </h2>
                            <div id="menuCollapse1" class="accordion-collapse collapse" aria-labelledby="menuHeading1" data-bs-parent="#accMenu">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Absolutely. Over 80% of our menu items—including Unlimited Rajwadi Thalis, North Indian paneer curries, sizzling starters, soups, and wood-fired pizzas—are available in strict Jain preparations without onion, garlic, or root vegetables.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-surface border-gold-subtle rounded-3 mb-3 faq-item">
                            <h2 class="accordion-header" id="menuHeading2">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#menuCollapse2" aria-expanded="false" aria-controls="menuCollapse2">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>What cooking oils and dairy products do you use?
                                </button>
                            </h2>
                            <div id="menuCollapse2" class="accordion-collapse collapse" aria-labelledby="menuHeading2" data-bs-parent="#accMenu">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    We maintain strict health standards. All Kathiyawadi and Gujarati delicacies are prepared using 100% pure A2 Gir Cow Ghee. For frying and sizzlers, we use single-use cold-pressed groundnut oil. We never reuse cooking oils.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-surface border-gold-subtle rounded-3 faq-item">
                            <h2 class="accordion-header" id="menuHeading3">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#menuCollapse3" aria-expanded="false" aria-controls="menuCollapse3">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>What is included in the Rajwadi Unlimited Gujarati Thali?
                                </button>
                            </h2>
                            <div id="menuCollapse3" class="accordion-collapse collapse" aria-labelledby="menuHeading3" data-bs-parent="#accMenu">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Our signature Unlimited Thali includes 4 seasonal Gujarati vegetables/shaak, Kathiyawadi farsan, fresh hot Bajra Rotla hand-patted on clay hearths, Phulka Rotis, Gujarati Kadhi, Dal, Steamed Rice, Sweet dish, and chilled Masala Chaas.
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Restaurant Policies & Payments (Split Layout) -->
    <section id="sec-policies" class="section-padding bg-dark-surface faq-category-section" data-category="policies">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">TRANSPARENT TERMS</span>
                    <h2 class="section-title">Payment & Cancellation Policies</h2>
                    <p class="faq-text">
                        We aim to make transactions smooth and effortless. We accept all major digital and traditional payment modes without any additional surcharge.
                    </p>
                    <div class="row g-3 mt-3">
                        <div class="col-sm-6">
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                                <h6 class="text-gold mb-1"><i class="fa-solid fa-credit-card me-2"></i>Accepted Payment Cards</h6>
                                <p class="text-muted fs-7 mb-0">Visa, Mastercard, RuPay & Amex accepted.</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                                <h6 class="text-gold mb-1"><i class="fa-solid fa-qrcode me-2"></i>UPI & Wallet Payments</h6>
                                <p class="text-muted fs-7 mb-0">Google Pay, PhonePe, Paytm QR code payments.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="accordion df-accordion" id="accPolicies">
                        <div class="accordion-item bg-dark-canvas border-gold-subtle rounded-3 mb-3 faq-item">
                            <h2 class="accordion-header" id="polHeading1">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#polCollapse1" aria-expanded="false" aria-controls="polCollapse1">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Is there any cancellation fee for table reservations?
                                </button>
                            </h2>
                            <div id="polCollapse1" class="accordion-collapse collapse" aria-labelledby="polHeading1" data-bs-parent="#accPolicies">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    No, table reservations are completely free of charge and can be modified or canceled anytime without penalty.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-canvas border-gold-subtle rounded-3 faq-item">
                            <h2 class="accordion-header" id="polHeading2">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#polCollapse2" aria-expanded="false" aria-controls="polCollapse2">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Do you charge extra service charge on the final bill?
                                </button>
                            </h2>
                            <div id="polCollapse2" class="accordion-collapse collapse" aria-labelledby="polHeading2" data-bs-parent="#accPolicies">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    No compulsory service charge is added to your bill. Tipping is strictly voluntary at your discretion for good service.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Restaurant Facilities & Parking (Grid Layout) -->
    <section id="sec-facilities" class="section-padding bg-dark-canvas faq-category-section" data-category="facilities">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">LOCATION & COMFORT</span>
                <h2 class="section-title">Facilities & Parking Questions</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="faq-facility-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <i class="fa-solid fa-square-parking text-gold fs-3"></i>
                            <h5 class="text-main mb-0">Is valet parking available at Kalawad Road?</h5>
                        </div>
                        <p class="text-muted fs-7 mb-0">
                            Yes! We offer complimentary valet parking for all dining guests directly at our main entrance opposite Crystal Mall. Our valets park your vehicle in a secure 24/7 CCTV-monitored basement.
                        </p>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="faq-facility-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <i class="fa-solid fa-wheelchair text-gold fs-3"></i>
                            <h5 class="text-main mb-0">Is the restaurant wheelchair accessible?</h5>
                        </div>
                        <p class="text-muted fs-7 mb-0">
                            Yes, our entry features wheelchair ramps, wide door frames, and a spacious elevator providing seamless access to the main AC hall and private family cabins.
                        </p>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="300">
                    <div class="faq-facility-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <i class="fa-solid fa-cake-candles text-gold fs-3"></i>
                            <h5 class="text-main mb-0">Can we host birthday or anniversary parties?</h5>
                        </div>
                        <p class="text-muted fs-7 mb-0">
                            Yes! We offer customized table balloon decorations, eggless birthday cakes, and private cabin bookings for groups of 10 to 40 guests upon prior reservation.
                        </p>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                    <div class="faq-facility-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <i class="fa-solid fa-wifi text-gold fs-3"></i>
                            <h5 class="text-main mb-0">Is high-speed Wi-Fi provided for guests?</h5>
                        </div>
                        <p class="text-muted fs-7 mb-0">
                            Complimentary high-speed fiber Wi-Fi is available throughout the restaurant for seamless QR code scanning, digital menu browsing, and business meetings.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Contact Support CTA (Split Image Left) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <img src="<%= ResolveUrl("~/Assets/Images/FAQ/support.jpg") %>" alt="DineFlow Guest Support Desk" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <span class="sub-title">STILL HAVE QUESTIONS?</span>
                    <h2 class="section-title">Our Guest Relations Team Is Ready To Assist</h2>
                    <p class="faq-text">
                        If you need custom banquet menu pricing, specific allergy information, or assistance with bulk corporate bookings, connect directly with our manager.
                    </p>
                    <div class="d-flex flex-wrap gap-3 mt-4">
                        <a href='<%= ResolveUrl("~/Visitor/Contact.aspx") %>' class="btn-df-gold btn-md">
                            <span>Contact Desk</span>
                            <i class="fa-solid fa-headset ms-2"></i>
                        </a>
                        <a href="https://wa.me/919876543210" target="_blank" class="btn-df-outline btn-md">
                            <span>WhatsApp Chat</span>
                            <i class="fa-brands fa-whatsapp ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Reserve Table CTA Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <span class="sub-title">EXPERIENCE ROYAL HOSPITALITY</span>
                <h2 class="section-title my-3">Ready For A Memorable Meal?</h2>
                <p class="text-muted mx-auto mb-4 max-w-700">
                    Book your table online in seconds and enjoy zero waiting time on Kalawad Road, Rajkot.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book Table Now</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Closing Premium Banner -->
    <section class="final-faq-banner position-relative py-5 bg-dark-surface text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Clear Answers. Genuine Flavors. Unmatched Hospitality."</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/faq.js") %>"></script>
</asp:Content>
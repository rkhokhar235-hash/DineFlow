<%@ Page Title="Terms & Conditions | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="TermsConditions.aspx.cs" Inherits="DineFlow.Visitor.TermsConditions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/terms-conditions.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="terms-hero-section">
        <div class="terms-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Terms/terms-hero.jpg") %>" alt="DineFlow Terms and Conditions" class="terms-hero-bg" />
        <div class="container container-xl terms-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="terms-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-file-contract me-2"></i>LEGAL GUIDELINES & POLICIES
                        </span>
                        <h1 class="hero-title">Terms & Conditions</h1>
                        <p class="hero-description">
                            Please review the operating terms, table reservation guidelines, and website usage policies for dining at DineFlow Rajkot.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome to Our Terms (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">AGREEMENT & GUIDELINES</span>
                    <h2 class="section-title">Welcome to DineFlow Terms</h2>
                    <p class="terms-text">
                        By accessing our website, browsing our digital pure vegetarian menu, or booking a table at our flagship restaurant on Kalawad Road, Rajkot, you agree to comply with and be bound by the following terms and conditions.
                    </p>
                    <p class="terms-text">
                        We maintain these guidelines to ensure a pleasant, secure, and harmonious dining environment for all our valued families, couples, and corporate guests.
                    </p>
                    <div class="d-flex align-items-center gap-3 mt-3">
                        <span class="badge-gold"><i class="fa-solid fa-calendar-days me-1"></i>Effective Date: August 2026</span>
                        <span class="badge-subtle"><i class="fa-solid fa-gavel me-1"></i>Binding Agreement</span>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Terms/restaurant-policy.jpg") %>" alt="DineFlow Restaurant Hospitality" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Website Usage Policy (Card Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">DIGITAL PLATFORM</span>
                <h2 class="section-title">Website Usage Policy</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="terms-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="terms-icon-box mb-3"><i class="fa-solid fa-globe"></i></div>
                        <h4 class="text-main fs-5 mb-2">Permitted Access</h4>
                        <p class="text-muted fs-7 mb-0">Our website is provided for personal, non-commercial use to explore our pure vegetarian menu, reserve tables, and read culinary journal articles.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="terms-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="terms-icon-box mb-3"><i class="fa-solid fa-ban"></i></div>
                        <h4 class="text-main fs-5 mb-2">Prohibited Conduct</h4>
                        <p class="text-muted fs-7 mb-0">Users must not engage in scraping, unauthorized data extraction, introducing malicious scripts, or attempting to compromise server security.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="terms-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="terms-icon-box mb-3"><i class="fa-solid fa-circle-exclamation"></i></div>
                        <h4 class="text-main fs-5 mb-2">Content Accuracy</h4>
                        <p class="text-muted fs-7 mb-0">While we strive for absolute accuracy in pricing and menu descriptions, details are subject to seasonal updates and availability.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Reservation Terms (Timeline Style) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">TABLE BOOKINGS</span>
                <h2 class="section-title">Reservation Guidelines</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="timeline-wrapper">
                        
                        <div class="timeline-item p-4 rounded-4 bg-dark-canvas border-subtle mb-4" data-aos="fade-up">
                            <div class="d-flex align-items-start gap-3">
                                <div class="timeline-number text-gold fw-bold fs-4">01</div>
                                <div>
                                    <h5 class="text-main mb-1">Advance Booking Limit</h5>
                                    <p class="text-muted fs-7 mb-0">Table reservations can be made up to 30 days in advance via our online reservation portal or by contacting our guest relations hotline.</p>
                                </div>
                            </div>
                        </div>

                        <div class="timeline-item p-4 rounded-4 bg-dark-canvas border-subtle mb-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="d-flex align-items-start gap-3">
                                <div class="timeline-number text-gold fw-bold fs-4">02</div>
                                <div>
                                    <h5 class="text-main mb-1">Arrival Grace Period</h5>
                                    <p class="text-muted fs-7 mb-0">We hold reserved tables for a grace period of 15 minutes past the confirmed time. Kindly notify us if you encounter traffic delays on Kalawad Road.</p>
                                </div>
                            </div>
                        </div>

                        <div class="timeline-item p-4 rounded-4 bg-dark-canvas border-subtle" data-aos="fade-up" data-aos-delay="200">
                            <div class="d-flex align-items-start gap-3">
                                <div class="timeline-number text-gold fw-bold fs-4">03</div>
                                <div>
                                    <h5 class="text-main mb-1">Seating Allocation</h5>
                                    <p class="text-muted fs-7 mb-0">While we honor requested seating areas (AC Hall, Private Family Cabin, Terrace), specific table assignments remain subject to availability.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Cancellation & Modification Policy (Feature Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">FLEXIBILITY</span>
                <h2 class="section-title">Cancellation & Modification Policy</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 align-items-center">
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <h4 class="text-gold mb-3"><i class="fa-solid fa-calendar-xmark me-2"></i>Free Cancellation</h4>
                        <p class="text-muted fs-7 mb-3">
                            Table reservations at DineFlow are entirely free of charge. You may cancel or modify your reservation anytime without incurring any cancellation penalties.
                        </p>
                        <p class="text-muted fs-7 mb-0">
                            For large private banquets or corporate dining events, we kindly request at least 24 hours advance notice for headcount adjustments.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <h4 class="text-gold mb-3"><i class="fa-solid fa-clock-rotate-left me-2"></i>Booking Adjustments</h4>
                        <p class="text-muted fs-7 mb-3">
                            To modify your party size or arrival time, you can easily call our restaurant desk directly or submit a quick update through our contact portal.
                        </p>
                        <ul class="list-unstyled space-list fs-7 text-muted mb-0">
                            <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>Zero penalty for schedule changes</li>
                            <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>Prompt assistance via phone & WhatsApp</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Payment Terms (General Information) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">TRANSPARENT BILLING</span>
                    <h2 class="section-title">Payment Terms & Policies</h2>
                    <p class="terms-text">
                        All food and beverage charges incurred during your visit are payable upon the conclusion of your meal. We accept all major payment modes without hidden surcharges.
                    </p>
                    <div class="row g-3 mt-3">
                        <div class="col-sm-6">
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                                <h6 class="text-gold mb-1"><i class="fa-solid fa-credit-card me-2"></i>Cards Accepted</h6>
                                <p class="text-muted fs-7 mb-0">Visa, Mastercard, RuPay & Amex.</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                                <h6 class="text-gold mb-1"><i class="fa-solid fa-qrcode me-2"></i>Digital Payments</h6>
                                <p class="text-muted fs-7 mb-0">UPI QR code payments & mobile wallets.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-canvas border-gold-subtle">
                        <h5 class="text-gold mb-3"><i class="fa-solid fa-receipt me-2"></i>Billing Transparency</h5>
                        <ul class="list-unstyled space-list fs-7 text-muted mb-0">
                            <li class="mb-3"><i class="fa-solid fa-check text-gold me-2"></i>Applicable government taxes clearly itemized on bills</li>
                            <li class="mb-3"><i class="fa-solid fa-check text-gold me-2"></i>No compulsory service charges added</li>
                            <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>Staff tipping is strictly voluntary at your discretion</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Intellectual Property (Glass Card Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">COPYRIGHT & ASSETS</span>
                <h2 class="section-title">Intellectual Property Rights</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-copyright text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Brand Ownership</h5>
                        <p class="text-muted fs-7 mb-0">The DineFlow name, logo, typography, and visual brand identity are proprietary assets protected under intellectual property laws.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-camera-retro text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Media & Photography</h5>
                        <p class="text-muted fs-7 mb-0">All food photography, interior design imagery, and journal articles published on this website are owned by DineFlow Rajkot.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-shield-halved text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Restricted Usage</h5>
                        <p class="text-muted fs-7 mb-0">Unauthorized reproduction, distribution, or commercial exploitation of website content without prior written consent is strictly prohibited.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. User Responsibilities & Conduct (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">DINING ETIQUETTE</span>
                    <h2 class="section-title">User Responsibilities & Conduct</h2>
                    <p class="terms-text">
                        We take pride in offering a luxurious, serene, and family-friendly dining atmosphere. Guests visiting DineFlow are expected to maintain respectful behavior toward fellow patrons and our restaurant staff.
                    </p>
                    <p class="terms-text">
                        As a 100% pure vegetarian establishment, outside food, non-vegetarian items, and alcoholic beverages are strictly prohibited on restaurant premises.
                    </p>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-canvas border-gold-subtle">
                        <h5 class="text-gold mb-3"><i class="fa-solid fa-list-check me-2"></i>Guest Code of Conduct</h5>
                        <ul class="list-unstyled space-list fs-7 text-muted mb-0">
                            <li class="mb-3"><i class="fa-solid fa-check text-gold me-2"></i>Respectful demeanor towards staff and guests</li>
                            <li class="mb-3"><i class="fa-solid fa-check text-gold me-2"></i>Strictly 100% pure vegetarian premises</li>
                            <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>Supervision of children in dining areas</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Limitation of Liability (Notice Card) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center" data-aos="zoom-in">
                    <div class="p-4 p-md-5 rounded-4 bg-dark-surface border-gold-subtle shadow-lg">
                        <span class="sub-title">LEGAL DISCLAIMER</span>
                        <h3 class="text-main mb-3">Limitation of Liability</h3>
                        <p class="text-muted fs-7 mb-0">
                            DineFlow makes reasonable efforts to ensure the accuracy of website information and uninterrupted platform access. However, we shall not be held liable for temporary technical interruptions, third-party internet failures, or minor typographical variations in menu descriptions.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Changes to Terms (Accordion Section) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">POLICY UPDATES</span>
                <h2 class="section-title">Modifications to Terms</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10" data-aos="fade-up">
                    <div class="accordion df-accordion" id="accTerms">
                        <div class="accordion-item bg-dark-canvas border-subtle rounded-3 mb-3">
                            <h2 class="accordion-header" id="termHeading1">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#termCollapse1" aria-expanded="false" aria-controls="termCollapse1">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Can these terms and conditions be updated over time?
                                </button>
                            </h2>
                            <div id="termCollapse1" class="accordion-collapse collapse" aria-labelledby="termHeading1" data-bs-parent="#accTerms">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Yes. DineFlow reserves the right to modify these terms at any time to reflect operational enhancements or legal updates. Continued use of our website or dining facilities constitutes acceptance of the revised terms.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Contact for Legal & General Questions (Split Banner) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">SUPPORT & INQUIRIES</span>
                    <h2 class="section-title">Contact Management Desk</h2>
                    <p class="terms-text">
                        If you have any questions, clarifications, or feedback regarding our Terms & Conditions, please connect directly with our management team in Rajkot.
                    </p>
                    <div class="p-3 rounded-3 bg-dark-surface border-subtle mt-3">
                        <small class="text-muted d-block">Management Helpline</small>
                        <a href="mailto:support@dineflow.in" class="text-gold fw-bold fs-5 text-decoration-none"><i class="fa-solid fa-envelope me-2"></i>support@dineflow.in</a>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <img src="<%= ResolveUrl("~/Assets/Images/Terms/legal-banner.jpg") %>" alt="DineFlow Rajkot Management" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Reserve Table CTA Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-canvas shadow-lg" data-aos="zoom-in">
                <span class="sub-title">EXPERIENCE ROYAL HOSPITALITY</span>
                <h2 class="section-title my-3">Ready to Dine at DineFlow?</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Book your table online in seconds and enjoy authentic pure vegetarian dining on Kalawad Road, Rajkot.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Reserve Table Now</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 13. Closing Premium Banner -->
    <section class="final-terms-banner position-relative py-5 bg-dark-canvas text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Transparent Guidelines. Genuine Flavors. Unmatched Hospitality."</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/terms-conditions.js") %>"></script>
</asp:Content>
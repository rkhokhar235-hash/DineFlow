<%@ Page Title="Page Not Found (404) | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="DineFlow.Visitor.Error404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/error404.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Fullscreen Luxury Hero (Section 1) -->
    <section class="error-hero-section">
        <div class="error-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Error404/background.jpg") %>" alt="DineFlow 404 Background" class="error-hero-bg" />
        <div class="container container-xl error-hero-container">
            <div class="row align-items-center justify-content-center text-center min-vh-75">
                <div class="col-lg-10 col-xl-8">
                    
                    <!-- 2. Animated 404 Illustration / Typography (Section 2) -->
                    <div class="error-number-wrap mb-3" data-aos="zoom-in" data-aos-duration="1000">
                        <span class="error-404-number">404</span>
                        <div class="floating-badge">
                            <i class="fa-solid fa-utensils text-gold"></i>
                        </div>
                    </div>

                    <!-- 3. Friendly Error Message (Section 3) -->
                    <div data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-compass me-2"></i>CULINARY DETOUR
                        </span>
                        <h1 class="hero-title">Oops! Looks like this page enjoyed the last dish before you arrived.</h1>
                    </div>

                    <!-- 4. Short Explanation (Section 4) -->
                    <p class="hero-description mx-auto mt-3 mb-4" data-aos="fade-up" data-aos-delay="200">
                        The page you are looking for might have been moved, renamed, or is temporarily resting. Let us guide you back to something exceptionally delicious.
                    </p>

                    <!-- Primary Action Buttons -->
                    <div class="d-flex justify-content-center gap-3 flex-wrap" data-aos="fade-up" data-aos-delay="300">
                        <a href='<%= ResolveUrl("~/Visitor/Home.aspx") %>' class="btn-df-gold btn-lg">
                            <i class="fa-solid fa-house me-2"></i>Go To Home
                        </a>
                        <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-outline btn-lg">
                            <i class="fa-solid fa-bowl-food me-2"></i>Explore Our Menu
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!-- 5. Search Website Section (Section 5) -->
    <section class="py-5 bg-dark-surface border-bottom-subtle">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-8" data-aos="fade-up">
                    <div class="p-4 rounded-4 bg-dark-canvas border-subtle shadow text-center">
                        <h4 class="text-main mb-2">Looking for something specific?</h4>
                        <p class="text-muted fs-7 mb-4">Search across our menu, blog articles, and restaurant pages instantly.</p>
                        <div class="input-group error-search-box mx-auto">
                            <span class="input-group-text bg-transparent border-end-0 border-gold-subtle text-gold ps-3">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </span>
                            <input type="text" id="errorSearchInput" class="form-control-df border-start-0 ps-0" placeholder="Type dish name, blog title, or page..." />
                            <button type="button" id="errorSearchBtn" class="btn-df-gold px-4">Search</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Popular Navigation Cards (Section 6) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">QUICK NAVIGATION</span>
                <h2 class="section-title">Popular Destinations</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="nav-card-link text-decoration-none">
                        <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center nav-card">
                            <div class="error-icon-box mx-auto mb-3"><i class="fa-solid fa-utensils"></i></div>
                            <h5 class="text-main mb-2">Our Menu</h5>
                            <p class="text-muted fs-7 mb-0">Pure Thalis, Tandoori Starters & Royal Sweets.</p>
                        </div>
                    </a>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="nav-card-link text-decoration-none">
                        <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center nav-card">
                            <div class="error-icon-box mx-auto mb-3"><i class="fa-solid fa-calendar-days"></i></div>
                            <h5 class="text-main mb-2">Reservations</h5>
                            <p class="text-muted fs-7 mb-0">Book your dining table or private family cabin.</p>
                        </div>
                    </a>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="nav-card-link text-decoration-none">
                        <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center nav-card">
                            <div class="error-icon-box mx-auto mb-3"><i class="fa-solid fa-book-open-reader"></i></div>
                            <h5 class="text-main mb-2">Food Journal</h5>
                            <p class="text-muted fs-7 mb-0">Recipes, heritage stories & chef tips.</p>
                        </div>
                    </a>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <a href='<%= ResolveUrl("~/Visitor/Contact.aspx") %>' class="nav-card-link text-decoration-none">
                        <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center nav-card">
                            <div class="error-icon-box mx-auto mb-3"><i class="fa-solid fa-headset"></i></div>
                            <h5 class="text-main mb-2">Contact Us</h5>
                            <p class="text-muted fs-7 mb-0">Get in touch with our Kalawad Road desk.</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Featured Menu Preview (Section 7) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">CHEF'S SIGNATURE</span>
                    <h2 class="section-title">Craving Something Special?</h2>
                    <p class="error-text">
                        While you find your way back, why not explore our renowned Kathiyawadi Thali or freshly baked clay-oven rotlas prepared with pure A2 Gir Cow Ghee?
                    </p>
                    <ul class="list-unstyled space-list fs-7 text-muted my-3">
                        <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>100% Pure Vegetarian Kitchen Protocols</li>
                        <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>Authentic Saurashtra Spices & Organic Ingredients</li>
                        <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>AC Dining Halls & Private Family Cabins</li>
                    </ul>
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold mt-3">
                        <span>View Full Menu</span>
                        <i class="fa-solid fa-arrow-right ms-2"></i>
                    </a>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="rounded-4 overflow-hidden border-gold-subtle shadow-lg">
                        <img src="<%= ResolveUrl("~/Assets/Images/Error404/error-hero.png") %>" alt="DineFlow Signature Thali" class="img-fluid w-100 object-fit-cover" style="height: 380px;" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Reservation CTA (Section 8) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <span class="sub-title">JOIN US TONIGHT</span>
                <h2 class="section-title my-3">Reserve Your Table in Seconds</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Skip the lost pages and experience genuine hospitality directly at our Kalawad Road restaurant in Rajkot.
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

    <!-- 9. Contact CTA (Section 9) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center" data-aos="fade-up">
                    <span class="sub-title">WE ARE HERE TO HELP</span>
                    <h2 class="section-title mb-3">Need Immediate Assistance?</h2>
                    <p class="text-muted fs-6 mb-4" style="max-width: 600px; margin: 0 auto;">
                        If you believe this is a broken link or need help finding a specific reservation, our guest relations team is available right now.
                    </p>
                    <div class="d-flex justify-content-center gap-3 flex-wrap">
                        <a href='<%= ResolveUrl("~/Visitor/Contact.aspx") %>' class="btn-df-outline">
                            <i class="fa-solid fa-envelope me-2"></i>Contact Support
                        </a>
                        <a href="tel:+919876543210" class="btn-df-outline">
                            <i class="fa-solid fa-phone me-2"></i>+91 98765 43210
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Premium Closing Banner (Section 10) -->
    <section class="final-error-banner position-relative py-5 bg-dark-canvas text-center border-top-subtle">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Every Path at DineFlow Leads to Exceptional Taste"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/error404.js") %>"></script>
</asp:Content>
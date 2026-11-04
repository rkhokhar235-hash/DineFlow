<%@ Page Title="About Us | DineFlow Pure Veg Restaurant - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DineFlow.Visitor.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/about.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="about-hero-section">
        <div class="about-hero-overlay"></div>
        <img src="https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&amp;fit=crop&amp;w=2000&amp;q=85" alt="DineFlow Luxury Pure Veg Restaurant Rajkot" class="about-hero-bg" />
        <div class="container container-xl about-hero-container">
            <div class="row align-items-center min-vh-75">
                <div class="col-lg-10 col-xl-8">
                    <div class="about-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-seedling me-2"></i>A TRADITION OF PURE VEGETARIAN EXCELLENCE
                        </span>
                        <h1 class="hero-title">Redefining Fine Dining & Gujarati Hospitality in Rajkot</h1>
                        <p class="hero-description">
                            Where authentic Kathiyawadi flavors, rich Punjabi curries, and international vegetarian fare meet state-of-the-art contactless dining technology.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome to DineFlow (Split Image Left / Text Right) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="about-img-wrap">
                            <img src="https://images.unsplash.com/photo-1552566626-52f8b828?auto=format&amp;fit=crop&amp;w=1200&amp;q=85" alt="DineFlow Rajkot Dining Room" class="img-fluid rounded-4 shadow-lg" />
                        <div class="glass-experience-card">
                            <span class="exp-number">100%</span>
                            <span class="exp-text">Pure Veg & Pure A2 Desi Ghee</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="ps-lg-3">
                        <span class="sub-title">WELCOME TO DINEFLOW RAJKOT</span>
                        <h2 class="section-title">A Symphony of Authentic Flavors & Smart Ordering</h2>
                        <p class="about-text">
                            Situated on Kalawad Road in the heart of Rajkot, DineFlow was built to serve families, food enthusiasts, and tourists seeking the finest vegetarian cuisine under one luxurious roof.
                        </p>
                        <p class="about-text">
                            From authentic Gujarati Thalis and wood-fired Kathiyawadi specialties to North Indian, Chinese, Italian, and South Indian delicacies, every dish is crafted with passion and served with warmth.
                        </p>
                        <div class="row g-3 mt-3">
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                    <span class="fw-medium text-main">Pure Veg & Jain Options</span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                    <span class="fw-medium text-main">Instant Table QR Order</span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                    <span class="fw-medium text-main">Spacious Family Seating</span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                    <span class="fw-medium text-main">Hygienic Open Kitchen</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Our Story & Journey (Timeline Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">OUR CULINARY JOURNEY</span>
                <h2 class="section-title">The Story Behind DineFlow</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="timeline-container position-relative">
                <div class="timeline-line"></div>

                <div class="timeline-item left" data-aos="fade-right">
                    <div class="timeline-content-card">
                        <span class="timeline-year">2014</span>
                        <h4 class="timeline-title">The Dream Begins</h4>
                        <p class="timeline-desc">Started as a small family dining hall in Rajkot with a commitment to serving authentic Kathiyawadi food cooked in pure groundnut oil and A2 Ghee.</p>
                    </div>
                </div>

                <div class="timeline-item right" data-aos="fade-left">
                    <div class="timeline-content-card">
                        <span class="timeline-year">2018</span>
                        <h4 class="timeline-title">Expanding the Palette</h4>
                        <p class="timeline-desc">Introduced North Indian, Pan-Asian, and Italian sections to cater to the evolving palates of Rajkot’s young food lovers and multi-generational families.</p>
                    </div>
                </div>

                <div class="timeline-item left" data-aos="fade-right">
                    <div class="timeline-content-card">
                        <span class="timeline-year">2022</span>
                        <h4 class="timeline-title">Flagship Launch on Kalawad Road</h4>
                        <p class="timeline-desc">Relocated to a premier flagship space near Crystal Mall featuring royal interiors, private family cabins, and dedicated banquet arrangements.</p>
                    </div>
                </div>

                <div class="timeline-item right" data-aos="fade-left">
                    <div class="timeline-content-card">
                        <span class="timeline-year">Today</span>
                        <h4 class="timeline-title">The DineFlow Smart Dining Era</h4>
                        <p class="timeline-desc">Integrated seamless QR code tableside ordering, allowing guests to customize spice levels and Jain options instantly with total transparency.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Our Mission & Vision (Split Layout Glass Cards) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row g-4 align-items-stretch">
                <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="mission-card h-100">
                        <div class="card-icon-lg"><i class="fa-solid fa-bullseye"></i></div>
                        <h3 class="card-heading">Our Mission</h3>
                        <p class="card-text">
                            To deliver wholesome, hygienic, and authentic pure vegetarian food crafted with traditional recipes, uncompromised raw ingredients, and heartfelt Gujarati hospitality—enhanced by frictionless digital ordering.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="mission-card h-100">
                        <div class="card-icon-lg"><i class="fa-solid fa-eye"></i></div>
                        <h3 class="card-heading">Our Vision</h3>
                        <p class="card-text">
                            To be recognized across Gujarat as the premier benchmark for pure vegetarian fine dining, where heritage taste, family comfort, and modern technological convenience blend seamlessly.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Why Choose DineFlow (4 Column Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">WHY CUSTOMERS TRUST US</span>
                <h2 class="section-title">The DineFlow Standard</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="value-card text-center">
                        <div class="value-icon"><i class="fa-solid fa-leaf"></i></div>
                        <h4 class="value-title">100% Pure Veg & Jain</h4>
                        <p class="value-desc">Strictly vegetarian establishment with dedicated separate preparation protocols for Jain and Swaminarayan orders.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="value-card text-center">
                        <div class="value-icon"><i class="fa-solid fa-shield-halved"></i></div>
                        <h4 class="value-title">Zero Artificial Additives</h4>
                        <p class="value-desc">No artificial food colors, tasting salts, or re-used cooking oils. Pure ingredients ground daily in-house.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="value-card text-center">
                        <div class="value-icon"><i class="fa-solid fa-bolt"></i></div>
                        <h4 class="value-title">Fast QR Table Order</h4>
                        <p class="value-desc">Eliminate ordering delays. Browse HD dish photos, customize spice preferences, and order directly from your phone.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="value-card text-center">
                        <div class="value-icon"><i class="fa-solid fa-heart"></i></div>
                        <h4 class="value-title">Traditional Warmth</h4>
                        <p class="value-desc">Embodying "Atithi Devo Bhava" with attentive staff, comfortable seating, and a welcoming family atmosphere.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Our Premium Dining Experience (Full Width Background with Overlay) -->
    <section class="experience-banner-section position-relative py-5">
        <div class="experience-banner-bg" style="background-image: url('https://images.unsplash.com/photo-1414235077428-338989a2e8c0?auto=format&amp;fit=crop&amp;w=2000&amp;q=85');"></div>
        <div class="experience-banner-overlay"></div>
        <div class="container container-xl position-relative z-index-2 py-5 text-center" data-aos="zoom-in">
            <span class="sub-title text-gold">LUXURY DINING FOR EVERY OCCASION</span>
            <h2 class="banner-title text-white my-3">Designed for Families, Celebrations & Corporate Meals</h2>
            <p class="banner-text mx-auto text-muted mb-4">
                Whether you are hosting a festive family get-together, a birthday celebration, or a casual dinner with friends, DineFlow offers comfortable AC seating, private cabins, and customized banquet menus.
            </p>
            <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                <span>Reserve A Table Now</span>
                <i class="fa-solid fa-calendar-check ms-2"></i>
            </a>
        </div>
    </section>

    <!-- 7. Fresh Ingredients & Hygienic Kitchen (Image Right / Content Left) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">HYGIENE & QUALITY FIRST</span>
                    <h2 class="section-title">Farm-Fresh Sourcing & Ultra-Hygienic Preparation</h2>
                    <p class="about-text">
                        We believe that great taste begins with flawless raw materials. Our vegetables are sourced every morning from organic growers in Saurashtra, washed thoroughly, and processed in a stainless-steel sanitised kitchen environment.
                    </p>
                    <p class="about-text">
                        Our chefs use pure A2 Gir Cow Ghee for Gujarati & Kathiyawadi preparations, cold-pressed groundnut oil, and authentic spices ground in-house to retain natural essential oils and aroma.
                    </p>
                    <div class="hygiene-pills d-flex flex-wrap gap-2 mt-4">
                        <span class="h-pill"><i class="fa-solid fa-droplet me-2"></i>A2 Gir Cow Ghee</span>
                        <span class="h-pill"><i class="fa-solid fa-carrot me-2"></i>Organic Produce</span>
                        <span class="h-pill"><i class="fa-solid fa-hands-bubbles me-2"></i>Strict Kitchen Hygiene</span>
                        <span class="h-pill"><i class="fa-solid fa-bowl-food me-2"></i>No Re-used Oil</span>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&amp;fit=crop&amp;w=1200&amp;q=85" alt="DineFlow Clean Kitchen & Fresh Ingredients" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Meet Our Expert Chefs (3 Column Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CULINARY MASTERS</span>
                <h2 class="section-title">The Culinary Artisans Behind Our Menu</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="chef-card text-center">
                        <div class="chef-img-box">
                            <img src="https://images.unsplash.com/photo-1577219491135-ce391730fb2c?auto=format&amp;fit=crop&amp;w=900&amp;q=85" alt="Maharaj Ram Singh - Thali Specialist" />
                        </div>
                        <div class="chef-details p-4">
                            <h4 class="chef-name">Maharaj Ram Singh</h4>
                            <span class="chef-role">Master Thali & Kathiyawadi Chef</span>
                            <p class="chef-bio">25+ years perfecting heritage Gujarati and Rajasthani Thali preparations cooked in authentic clay vessels.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="chef-card text-center">
                        <div class="chef-img-box">
                            <img src="https://images.unsplash.com/photo-1583394293214-28ded15ee548?auto=format&amp;fit=crop&amp;w=900&amp;q=85" alt="Chef Rajesh Sharma - North Indian Specialist" />
                        </div>
                        <div class="chef-details p-4">
                            <h4 class="chef-name">Chef Rajesh Sharma</h4>
                            <span class="chef-role">Executive North Indian & Tandoor Chef</span>
                            <p class="chef-bio">Master of rich cottage-cheese gravies, smoky tandoori platters, and authentic stuffed breads.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="chef-card text-center">
                        <div class="chef-img-box">
                            <img src="https://images.unsplash.com/photo-1574969903809-3f7f6f3f7a04?auto=format&amp;fit=crop&amp;w=900&amp;q=85" alt="Chef Bhavesh Patel - Multi-Cuisine Specialist" />
                        </div>
                        <div class="chef-details p-4">
                            <h4 class="chef-name">Chef Bhavesh Patel</h4>
                            <span class="chef-role">Head of Pan-Asian & Fast Food</span>
                            <p class="chef-bio">Specializing in wok-tossed noodles, sizzling stone pizzas, and artisanal mocktail formulations.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Restaurant Statistics (4 Counter Items) -->
    <section class="stats-banner-section bg-dark-surface py-5 border-top-bottom">
        <div class="container container-xl">
            <div class="row g-4 text-center">
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="100">
                    <div class="stat-box">
                        <h3 class="stat-num"><span class="counter" data-target="12">0</span>+</h3>
                        <p class="stat-txt">Years of Excellence</p>
                    </div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="200">
                    <div class="stat-box">
                        <h3 class="stat-num"><span class="counter" data-target="100">0</span>%</h3>
                        <p class="stat-txt">Pure Veg & Pure Ghee</p>
                    </div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="300">
                    <div class="stat-box">
                        <h3 class="stat-num"><span class="counter" data-target="150">0</span>+</h3>
                        <p class="stat-txt">Veg Delicacies</p>
                    </div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="400">
                    <div class="stat-box">
                        <h3 class="stat-num"><span class="counter" data-target="500">0</span>k+</h3>
                        <p class="stat-txt">Happy Diners Served</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Customer Testimonials (Glass Cards Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">VOICES OF RAJKOT</span>
                <h2 class="section-title">What Our Guests Say</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="testimonial-glass-card h-100">
                        <div class="stars mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="quote">"DineFlow is our family's favorite spot on Kalawad Road. The Kathiyawadi Thali with Bajra Rotla and pure A2 Ghee tastes just like home."</p>
                        <div class="user-info mt-auto pt-3 d-flex align-items-center gap-3">
                            <div class="avatar-placeholder">HM</div>
                            <div>
                                <h5 class="user-title mb-0">Harshil Mehta</h5>
                                <small class="text-muted">Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="testimonial-glass-card h-100">
                        <div class="stars mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="quote">"The QR code menu system is super fast. We customized Jain Paneer Butter Masala directly from our phone and it was served piping hot!"</p>
                        <div class="user-info mt-auto pt-3 d-flex align-items-center gap-3">
                            <div class="avatar-placeholder">PS</div>
                            <div>
                                <h5 class="user-title mb-0">Pooja Shah</h5>
                                <small class="text-muted">Kalawad Road</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="testimonial-glass-card h-100">
                        <div class="stars mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                        <p class="quote">"Cleanliness, ambient lighting, friendly staff, and mouth-watering food. Absolutely worth visiting for family dinners and special occasions."</p>
                        <div class="user-info mt-auto pt-3 d-flex align-items-center gap-3">
                            <div class="avatar-placeholder">AT</div>
                            <div>
                                <h5 class="user-title mb-0">Amit Trivedi</h5>
                                <small class="text-muted">Yagnik Road</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Reserve Your Table CTA -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="cta-box-glass text-center p-5" data-aos="fade-up">
                <span class="sub-title">EXPERIENCE PURE VEGETARIAN GASTRONOMY</span>
                <h2 class="section-title my-3">Plan Your Dining Experience at DineFlow</h2>
                <p class="mx-auto text-muted mb-4" style="max-width: 600px;">
                    Reserve your table ahead of time to skip the wait, choose your preferred seating area, and enjoy seamless contactless dining with your loved ones.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book A Table</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-outline btn-lg">
                        <span>View Live Menu</span>
                        <i class="fa-solid fa-utensils ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Closing Brand Message -->
    <section class="closing-msg-section text-center py-5 bg-dark-canvas">
        <div class="container container-xl">
            <div class="closing-content" data-aos="zoom-in">
                <i class="fa-solid fa-quote-left quote-icon-bg mb-3"></i>
                <h3 class="closing-heading">"Good food brings families together. Great hospitality creates lifelong memories."</h3>
                <p class="closing-sub text-gold mt-3 mb-0">- The DineFlow Rajkot Team</p>
            </div>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/about.js") %>"></script>
</asp:Content>
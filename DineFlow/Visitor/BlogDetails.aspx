<%@ Page Title="The Royal Legacy of Kathiyawadi Thali | DineFlow Journal" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="DineFlow.Visitor.BlogDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/blog-details.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="blog-details-hero-section">
        <div class="blog-details-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Blog/blog-details-hero.jpg") %>" alt="Kathiyawadi Thali Heritage" class="blog-details-hero-bg" />
        <div class="container container-xl blog-details-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-9">
                    <div class="blog-details-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-bookmark me-2"></i>GASTRONOMY HERITAGE JOURNAL
                        </span>
                        <h1 class="hero-title">The Royal Legacy of Kathiyawadi Thali: A Celebration of Spices & Tradition</h1>
                        <p class="hero-description">
                            Explore the soulful depths of Saurashtra's rustic cuisine, handcrafted bajra rotlas, and single-origin A2 Gir Cow ghee preparations at DineFlow Rajkot.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Article Header & Meta Info -->
    <section class="py-4 bg-dark-canvas border-bottom-subtle sticky-article-meta">
        <div class="container container-xl">
            <div class="row align-items-center justify-content-between g-3">
                <div class="col-md-8">
                    <div class="d-flex align-items-center flex-wrap gap-4 text-muted fs-7">
                        <span><i class="fa-solid fa-calendar-days text-gold me-2"></i>August 2, 2026</span>
                        <span><i class="fa-solid fa-clock text-gold me-2"></i>6 Min Read</span>
                        <span><i class="fa-solid fa-folder-open text-gold me-2"></i>Gujarati Gastronomy</span>
                        <span><i class="fa-solid fa-eye text-gold me-2"></i>2,450 Views</span>
                    </div>
                </div>
                <div class="col-md-4 text-md-end">
                    <div class="d-flex align-items-center justify-content-md-end gap-2">
                        <span class="text-muted fs-7 me-2">Share:</span>
                        <a href="#" class="share-icon-btn"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" class="share-icon-btn"><i class="fa-brands fa-twitter"></i></a>
                        <a href="#" class="share-icon-btn"><i class="fa-brands fa-whatsapp"></i></a>
                        <a href="#" class="share-icon-btn"><i class="fa-solid fa-link"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Author Information Bar -->
    <section class="py-4 bg-dark-surface border-bottom-subtle">
        <div class="container container-xl">
            <div class="row align-items-center justify-content-between g-3">
                <div class="col-md-8">
                    <div class="d-flex align-items-center gap-3">
                        <div class="author-avatar-lg rounded-circle bg-gold text-dark fw-bold d-flex align-items-center justify-content-center">MC</div>
                        <div>
                            <h5 class="text-main mb-1">Master Chef Karsanbhai</h5>
                            <p class="text-muted fs-7 mb-0">Executive Chef at DineFlow Rajkot • 25 Years of Culinary Expertise</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-md-end">
                    <span class="badge-gold">Verified Expert Author</span>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Featured Article Image -->
    <section class="py-5 bg-dark-canvas">
        <div class="container container-xl">
            <div class="article-featured-wrap rounded-4 overflow-hidden border-gold-subtle shadow-lg" data-aos="zoom-in">
                <img src="<%= ResolveUrl("~/Assets/Images/Blog/article-image-1.jpg") %>" alt="Authentic Kathiyawadi Thali Spread" class="img-fluid w-100 object-fit-cover" style="height: 480px;" />
            </div>
        </div>
    </section>

    <!-- 5. Table of Contents (UI Quick Navigation) -->
    <section class="py-4 bg-dark-surface">
        <div class="container container-xl">
            <div class="toc-card p-4 rounded-4 border-subtle bg-dark-canvas" data-aos="fade-up">
                <h6 class="text-gold text-uppercase letter-spacing-2 mb-3"><i class="fa-solid fa-list-ul me-2"></i>Table of Contents</h6>
                <div class="row g-2 fs-7">
                    <div class="col-md-4"><a href="#sec-origins" class="toc-link text-muted hover-gold"><i class="fa-solid fa-chevron-right text-gold me-2"></i>1. The Roots of Saurashtra Cuisine</a></div>
                    <div class="col-md-4"><a href="#sec-ingredients" class="toc-link text-muted hover-gold"><i class="fa-solid fa-chevron-right text-gold me-2"></i>2. Pure A2 Ghee & Clay Hearth Secrets</a></div>
                    <div class="col-md-4"><a href="#sec-experience" class="toc-link text-muted hover-gold"><i class="fa-solid fa-chevron-right text-gold me-2"></i>3. The DineFlow Rajkot Experience</a></div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Rich Article Content -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-9 col-xl-8">
                    
                    <!-- Section 1 -->
                    <div id="sec-origins" class="article-body-content" data-aos="fade-up">
                        <h3 class="text-main fs-2 fw-bold mb-4">1. The Roots of Saurashtra Cuisine</h3>
                        <p class="article-p">
                            Saurashtra, the historical peninsula of Gujarat, boasts a culinary tradition shaped by its arid climate, vibrant culture, and resilient people. Unlike coastal Gujarati cuisine which often incorporates sweet notes in every dish, Kathiyawadi food is celebrated for its robust, spicy, and deeply comforting character.
                        </p>
                        <p class="article-p">
                            At DineFlow Rajkot, our mission has always been to honor these age-old recipes without compromise. When guests gather around our tables on Kalawad Road, they are not merely dining; they are participating in a culinary heritage passed down through generations.
                        </p>
                    </div>

                    <!-- Article Image 2 -->
                    <div class="my-5" data-aos="fade-up">
                        <div class="rounded-4 overflow-hidden border-subtle shadow">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/article-image-2.jpg") %>" alt="Preparation of Traditional Shaak" class="img-fluid w-100 object-fit-cover" style="height: 380px;" />
                        </div>
                        <small class="text-muted d-block text-center mt-2 fs-7 italic">Freshly prepared Lasaniya Batata simmered in aromatic garlic gravy.</small>
                    </div>

                    <!-- Section 2 -->
                    <div id="sec-ingredients" class="article-body-content mt-5" data-aos="fade-up">
                        <h3 class="text-main fs-2 fw-bold mb-4">2. Pure A2 Ghee & Clay Hearth Secrets</h3>
                        <p class="article-p">
                            The soul of a true Kathiyawadi meal lies in its fats and cooking vessels. We exclusively utilize 100% pure A2 Gir Cow Ghee, churned using traditional Vedic bilona methods. This provides not only an intoxicating aroma but also exceptional digestive benefits.
                        </p>
                        <p class="article-p">
                            Furthermore, our Bajra Rotlas are hand-patted by skilled artisans and baked on live clay hearths (chullahs) until they achieve a delicate smoky char. Coated generously with warm ghee, they melt instantly on the palate.
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!-- 7. Highlight Quote Section -->
    <section class="py-5 bg-dark-surface border-top-subtle border-bottom-subtle">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center" data-aos="zoom-in">
                    <i class="fa-solid fa-quote-left text-gold display-4 mb-3 opacity-75"></i>
                    <h3 class="text-main fs-3 font-heading italic fw-normal mb-3">"True luxury in dining is not about complexity; it is about absolute purity, authentic spices, and the warmth of genuine hospitality."</h3>
                    <span class="text-gold fw-bold tracking-widest text-uppercase fs-7">— Master Chef Karsanbhai, DineFlow Rajkot</span>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Food Gallery within Article -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">VISUAL JOURNAL</span>
                <h2 class="section-title">A Closer Look At Our Culinary Art</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="rounded-4 overflow-hidden border-subtle shadow position-relative article-gallery-card">
                        <img src="<%= ResolveUrl("~/Assets/Images/Blog/food-story.jpg") %>" alt="Ringan No Olo Dish" class="img-fluid w-100 object-fit-cover" style="height: 300px;" />
                        <div class="position-absolute bottom-0 start-0 w-100 p-3 bg-gradient-dark">
                            <h6 class="text-main mb-0">Ringan No Olo & Rotla Feast</h6>
                            <small class="text-gold">Smoked eggplant mashed with spring onions and green garlic.</small>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="rounded-4 overflow-hidden border-subtle shadow position-relative article-gallery-card">
                        <img src="<%= ResolveUrl("~/Assets/Images/Blog/chef-tip.jpg") %>" alt="Clay Hearth Baking" class="img-fluid w-100 object-fit-cover" style="height: 300px;" />
                        <div class="position-absolute bottom-0 start-0 w-100 p-3 bg-gradient-dark">
                            <h6 class="text-main mb-0">Clay Hearth Rotlas</h6>
                            <small class="text-gold">Hand-patted pearl millet flatbreads baked to perfection.</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Chef Insights & Section 3 -->
    <section id="sec-experience" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-9 col-xl-8">
                    <h3 class="text-main fs-2 fw-bold mb-4">3. The DineFlow Rajkot Experience</h3>
                    <p class="article-p">
                        Visiting our flagship restaurant on Kalawad Road is designed to be an immersive sensory journey. Surrounded by obsidian walls, metallic gold accents, and soothing ambient lighting, diners can enjoy complete peace of mind with our 100% pure vegetarian kitchen protocols.
                    </p>
                    <p class="article-p">
                        Whether you are hosting a family reunion in our private AC cabins or utilizing our instant QR table ordering system for a quick corporate luncheon, we ensure every guest leaves with a contented heart and wonderful memories.
                    </p>

                    <!-- Tags & Social Share Footer -->
                    <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mt-5 pt-4 border-top-subtle">
                        <div class="d-flex align-items-center flex-wrap gap-2">
                            <span class="text-muted fs-7 me-2"><i class="fa-solid fa-tags text-gold me-1"></i>Tags:</span>
                            <span class="tag-pill">Kathiyawadi Thali</span>
                            <span class="tag-pill">A2 Ghee</span>
                            <span class="tag-pill">Rajkot Dining</span>
                            <span class="tag-pill">Pure Veg</span>
                        </div>
                        <div class="d-flex align-items-center gap-2">
                            <span class="text-muted fs-7 me-2">Share Article:</span>
                            <a href="#" class="share-icon-btn"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="share-icon-btn"><i class="fa-brands fa-whatsapp"></i></a>
                            <a href="#" class="share-icon-btn"><i class="fa-brands fa-twitter"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!-- 10. Related Articles Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CONTINUE READING</span>
                <h2 class="section-title">Related Journal Articles</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="blog-card rounded-4 border-subtle bg-dark-surface overflow-hidden h-100 d-flex flex-column">
                        <div class="blog-img-wrap overflow-hidden position-relative" style="height: 220px;">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/recipe-1.jpg") %>" alt="A2 Gir Cow Ghee Benefits" class="img-fluid w-100 h-100 object-fit-cover" />
                            <span class="badge-gold position-absolute top-0 start-0 m-3">HEALTH & NUTRITION</span>
                        </div>
                        <div class="p-4 d-flex flex-column flex-grow-1 justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-2">
                                    <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>July 28, 2026</span>
                                    <span><i class="fa-solid fa-clock text-gold me-1"></i>4 Min</span>
                                </div>
                                <h4 class="text-main fs-5 fw-bold mb-2">Why A2 Gir Cow Ghee is the Secret to Ayurvedic Cooking</h4>
                            </div>
                            <div class="pt-3 border-top-subtle d-flex align-items-center justify-content-between">
                                <span class="text-gold fs-7 fw-medium">Dr. Hetal Joshi</span>
                                <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="text-main text-decoration-none fw-bold fs-7 hover-gold">Read More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="blog-card rounded-4 border-subtle bg-dark-surface overflow-hidden h-100 d-flex flex-column">
                        <div class="blog-img-wrap overflow-hidden position-relative" style="height: 220px;">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/festival-special.jpg") %>" alt="Monsoon Bhajiya Festival" class="img-fluid w-100 h-100 object-fit-cover" />
                            <span class="badge-gold position-absolute top-0 start-0 m-3">SEASONAL SPECIAL</span>
                        </div>
                        <div class="p-4 d-flex flex-column flex-grow-1 justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-2">
                                    <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>July 22, 2026</span>
                                    <span><i class="fa-solid fa-clock text-gold me-1"></i>5 Min</span>
                                </div>
                                <h4 class="text-main fs-5 fw-bold mb-2">Monsoon Cravings: The Magic of Hot Gotala & Bhajiyas</h4>
                            </div>
                            <div class="pt-3 border-top-subtle d-flex align-items-center justify-content-between">
                                <span class="text-gold fs-7 fw-medium">Chef Rameshbhai</span>
                                <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="text-main text-decoration-none fw-bold fs-7 hover-gold">Read More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="blog-card rounded-4 border-subtle bg-dark-surface overflow-hidden h-100 d-flex flex-column">
                        <div class="blog-img-wrap overflow-hidden position-relative" style="height: 220px;">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/healthy-food.jpg") %>" alt="Organic Farm to Table" class="img-fluid w-100 h-100 object-fit-cover" />
                            <span class="badge-gold position-absolute top-0 start-0 m-3">SUSTAINABILITY</span>
                        </div>
                        <div class="p-4 d-flex flex-column flex-grow-1 justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-2">
                                    <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>July 15, 2026</span>
                                    <span><i class="fa-solid fa-clock text-gold me-1"></i>4 Min</span>
                                </div>
                                <h4 class="text-main fs-5 fw-bold mb-2">From Saurashtra Organic Farms to Your Plate</h4>
                            </div>
                            <div class="pt-3 border-top-subtle d-flex align-items-center justify-content-between">
                                <span class="text-gold fs-7 fw-medium">Sanjay Mehta</span>
                                <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="text-main text-decoration-none fw-bold fs-7 hover-gold">Read More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Newsletter CTA -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-canvas shadow-lg" data-aos="zoom-in">
                <span class="sub-title">STAY UPDATED</span>
                <h2 class="section-title my-3">Subscribe to DineFlow Food Journal</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Receive weekly recipes, chef tips, and exclusive weekend festival invitations straight to your inbox.
                </p>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="input-group">
                            <input type="email" class="form-control-df" placeholder="Enter your email address..." />
                            <button type="button" class="btn-df-gold px-4">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Reserve Table CTA Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <span class="sub-title">TASTE THE TRADITION</span>
                <h2 class="section-title my-3">Ready to Experience DineFlow in Person?</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Book your table online now and enjoy authentic pure vegetarian thalis and tandoori starters on Kalawad Road, Rajkot.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Reserve Table Online</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 13. Next / Previous Article Navigation -->
    <section class="py-4 bg-dark-surface border-top-subtle border-bottom-subtle">
        <div class="container container-xl">
            <div class="row align-items-center justify-content-between g-3">
                <div class="col-sm-6">
                    <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="d-flex align-items-center gap-3 text-decoration-none group-nav">
                        <div class="nav-arrow-box"><i class="fa-solid fa-arrow-left"></i></div>
                        <div>
                            <span class="text-muted fs-7 d-block">Previous Article</span>
                            <h6 class="text-main mb-0 hover-gold">Back to All Journal Stories</h6>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 text-sm-end">
                    <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="d-flex align-items-center justify-content-sm-end gap-3 text-decoration-none group-nav">
                        <div>
                            <span class="text-muted fs-7 d-block">Next Article</span>
                            <h6 class="text-main mb-0 hover-gold">Ayurvedic Cooking Secrets</h6>
                        </div>
                        <div class="nav-arrow-box"><i class="fa-solid fa-arrow-right"></i></div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 14. Closing Premium Banner -->
    <section class="final-blog-details-banner position-relative py-5 bg-dark-canvas text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Good Food is the Foundation of Genuine Happiness"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/blog-details.js") %>"></script>
</asp:Content>
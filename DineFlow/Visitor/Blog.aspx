<%@ Page Title="Food Magazine & Journal | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="DineFlow.Visitor.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/blog.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="blog-hero-section">
        <div class="blog-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Blog/blog-hero.jpg") %>" alt="DineFlow Food Magazine & Lifestyle Journal" class="blog-hero-bg" />
        <div class="container container-xl blog-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="blog-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-book-open-reader me-2"></i>DIGITAL FOOD MAGAZINE & JOURNAL
                        </span>
                        <h1 class="hero-title">Culinary Stories, Heritage Recipes & Rajkot Dining Culture</h1>
                        <p class="hero-description">
                            Explore expert articles on authentic Gujarati gastronomy, pure A2 Gir Cow ghee benefits, secret chef techniques, and luxurious pure vegetarian dining trends.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Featured Article (Magazine Highlight Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header mb-4" data-aos="fade-up">
                <span class="sub-title">EDITOR'S PICK</span>
                <h2 class="section-title">Featured Story</h2>
            </div>

            <div class="featured-article-card rounded-4 border-gold-subtle bg-dark-canvas overflow-hidden shadow-lg" data-aos="zoom-in">
                <div class="row g-0 align-items-center">
                    <div class="col-lg-7">
                        <div class="featured-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/featured-article.jpg") %>" alt="The Art of Kathiyawadi Thali" class="img-fluid w-100 featured-img" />
                            <span class="badge-gold position-absolute top-0 start-0 m-4">GASTRONOMY HERITAGE</span>
                        </div>
                    </div>
                    <div class="col-lg-5 p-4 p-md-5">
                        <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-3">
                            <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>August 2, 2026</span>
                            <span><i class="fa-solid fa-clock text-gold me-1"></i>6 Min Read</span>
                        </div>
                        <h3 class="text-main fs-2 fw-bold mb-3">The Royal Legacy of Kathiyawadi Thali: A Celebration of Spices & Tradition</h3>
                        <p class="text-muted fs-7 mb-4">
                            Discover how centuries-old clay hearth cooking, hand-patted bajra rotlas, and single-origin A2 Gir Cow ghee define the soul-stirring depth of authentic Saurashtra cuisine at DineFlow Rajkot.
                        </p>
                        <div class="d-flex align-items-center justify-content-between pt-3 border-top-subtle">
                            <div class="d-flex align-items-center gap-3">
                                <div class="author-avatar-sm rounded-circle bg-gold text-dark fw-bold d-flex align-items-center justify-content-center">MC</div>
                                <div>
                                    <h6 class="text-main mb-0 fs-7">Master Chef Karsanbhai</h6>
                                    <small class="text-muted">Executive Chef</small>
                                </div>
                            </div>
                            <a href="#article-modal" class="btn-df-gold-sm" data-bs-toggle="modal">Read Story</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Latest Blog Grid (3 Column Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">RECENT JOURNAL ENTRIES</span>
                <h2 class="section-title">Latest Articles & Guides</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <!-- Blog Card 1 -->
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="blog-card rounded-4 border-subtle bg-dark-surface overflow-hidden h-100 d-flex flex-column">
                        <div class="blog-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/recipe-1.jpg") %>" alt="Pure A2 Gir Cow Ghee Benefits" class="img-fluid w-100 blog-img" />
                            <span class="badge-gold position-absolute top-0 start-0 m-3">HEALTH & NUTRITION</span>
                        </div>
                        <div class="p-4 d-flex flex-column flex-grow-1 justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-2">
                                    <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>July 28, 2026</span>
                                    <span><i class="fa-solid fa-clock text-gold me-1"></i>4 Min</span>
                                </div>
                                <h4 class="text-main fs-5 fw-bold mb-2">Why A2 Gir Cow Ghee is the Secret to Flawless Ayurvedic Cooking</h4>
                                <p class="text-muted fs-7 mb-4">Exploring the digestive wellness, rich butyric acid content, and traditional Vedic processing of pure ghee used in our kitchen.</p>
                            </div>
                            <div class="pt-3 border-top-subtle d-flex align-items-center justify-content-between">
                                <span class="text-gold fs-7 fw-medium">Dr. Hetal Joshi</span>
                                <a href="#" class="text-main text-decoration-none fw-bold fs-7 hover-gold">Read More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Card 2 -->
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="blog-card rounded-4 border-subtle bg-dark-surface overflow-hidden h-100 d-flex flex-column">
                        <div class="blog-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/festival-special.jpg") %>" alt="Monsoon Bhajiya Festival" class="img-fluid w-100 blog-img" />
                            <span class="badge-gold position-absolute top-0 start-0 m-3">SEASONAL SPECIAL</span>
                        </div>
                        <div class="p-4 d-flex flex-column flex-grow-1 justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-2">
                                    <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>July 22, 2026</span>
                                    <span><i class="fa-solid fa-clock text-gold me-1"></i>5 Min</span>
                                </div>
                                <h4 class="text-main fs-5 fw-bold mb-2">Monsoon Cravings: The Magic of Hot Gotala & Crispy Bhajiyas</h4>
                                <p class="text-muted fs-7 mb-4">Celebrate Rajkot's pleasant monsoon showers with piping hot garlic chutneys, stuffed mirchi bajiyas, and cutting masala chai.</p>
                            </div>
                            <div class="pt-3 border-top-subtle d-flex align-items-center justify-content-between">
                                <span class="text-gold fs-7 fw-medium">Chef Rameshbhai</span>
                                <a href="#" class="text-main text-decoration-none fw-bold fs-7 hover-gold">Read More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Card 3 -->
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="blog-card rounded-4 border-subtle bg-dark-surface overflow-hidden h-100 d-flex flex-column">
                        <div class="blog-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/healthy-food.jpg") %>" alt="Organic Farm to Table" class="img-fluid w-100 blog-img" />
                            <span class="badge-gold position-absolute top-0 start-0 m-3">SUSTAINABILITY</span>
                        </div>
                        <div class="p-4 d-flex flex-column flex-grow-1 justify-content-between">
                            <div>
                                <div class="d-flex align-items-center gap-3 text-muted fs-7 mb-2">
                                    <span><i class="fa-solid fa-calendar-days text-gold me-1"></i>July 15, 2026</span>
                                    <span><i class="fa-solid fa-clock text-gold me-1"></i>4 Min</span>
                                </div>
                                <h4 class="text-main fs-5 fw-bold mb-2">From Saurashtra Organic Farms to Your Plate: Our Sourcing Story</h4>
                                <p class="text-muted fs-7 mb-4">How DineFlow partners with local organic farmers and women self-help cooperatives to bring pesticide-free grains and vegetables daily.</p>
                            </div>
                            <div class="pt-3 border-top-subtle d-flex align-items-center justify-content-between">
                                <span class="text-gold fs-7 fw-medium">Sanjay Mehta</span>
                                <a href="#" class="text-main text-decoration-none fw-bold fs-7 hover-gold">Read More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Gujarati Food Stories (Split Layout Left Image) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <img src="<%= ResolveUrl("~/Assets/Images/Blog/recipe-2.jpg") %>" alt="Authentic Gujarati Farsan & Sweets" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <span class="sub-title">CULTURAL HERITAGE</span>
                    <h2 class="section-title">The Sweet & Savory Balance of Gujarati Cuisine</h2>
                    <p class="blog-text">
                        Gujarati cuisine is renowned worldwide for its harmonious balance of six fundamental tastes: sweet, salty, bitter, sour, astringent, and spicy. At DineFlow Rajkot, our master cooks preserve this ancient balance using organic jaggery, fresh kokum, and hand-ground spices.
                    </p>
                    <p class="blog-text">
                        From melt-in-the-mouth Mohanthal to crispy Patra and Sev Tomato Nu Shaak, every dish tells a story of Gujarati warmth and hospitality.
                    </p>
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold mt-3">
                        <span>Explore Menu Delicacies</span>
                        <i class="fa-solid fa-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Healthy Vegetarian Lifestyle (Glass Card Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">HOLISTIC WELLNESS</span>
                <h2 class="section-title">The Pure Vegetarian Lifestyle</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="feature-icon-box mx-auto mb-3"><i class="fa-solid fa-seedling"></i></div>
                        <h4 class="text-main fs-5 mb-2">Plant-Based Vitality</h4>
                        <p class="text-muted fs-7 mb-0">High-protein lentil dals, protein-rich paneer preparations, and wholesome millets for sustained energy.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="feature-icon-box mx-auto mb-3"><i class="fa-solid fa-shield-heart"></i></div>
                        <h4 class="text-main fs-5 mb-2">Heart-Healthy Oils</h4>
                        <p class="text-muted fs-7 mb-0">Single-use cold-pressed groundnut oil and unadulterated dairy fats supporting cardiovascular well-being.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="feature-icon-box mx-auto mb-3"><i class="fa-solid fa-spa"></i></div>
                        <h4 class="text-main fs-5 mb-2">Strict Jain Options</h4>
                        <p class="text-muted fs-7 mb-0">Dedicated preparation protocols adhering strictly to non-root vegetable and pure vegetarian principles.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Chef's Corner (Split Layout Right Image) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">BEHIND THE KITCHEN DOORS</span>
                    <h2 class="section-title">Chef's Corner: Secrets of Tandoori Perfection</h2>
                    <p class="blog-text">
                        Our Executive Chef Karsanbhai shares his 25 years of culinary wisdom. "A great tandoori starter is not just about marination time; it is about the precise clay-oven temperature and the blend of hand-pounded Kashmiri chilies and hung curd."
                    </p>
                    <p class="blog-text">
                        At DineFlow, every paneer tikka and stuffed mushroom is skewered fresh upon order, ensuring smoky char and tender juiciness in every bite.
                    </p>
                    <ul class="list-unstyled space-list my-3 fs-7 text-muted">
                        <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>Hand-ground spice masalas prepared in-house daily</li>
                        <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>Fresh farm malai paneer delivered every morning</li>
                        <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>Charcoal-fired clay tandoors for authentic smoky flavor</li>
                    </ul>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <img src="<%= ResolveUrl("~/Assets/Images/Blog/chef-corner.jpg") %>" alt="Executive Chef Karsanbhai in Kitchen" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Restaurant News & Events (2 Column Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">ANNOUNCEMENTS</span>
                <h2 class="section-title">Restaurant News & Upcoming Events</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <span class="badge-gold mb-3">VIP EVENT</span>
                            <h4 class="text-main fs-4 mb-2">Monsoon Kathiyawadi Food Festival 2026</h4>
                            <p class="text-muted fs-7 mb-4">Join us this weekend for our special live counter featuring Bajra Rotla, Lasaniya Batata, Ringan No Olo, and live jalebi making on Kalawad Road.</p>
                        </div>
                        <div class="pt-3 border-top-subtle d-flex justify-content-between align-items-center">
                            <span class="text-gold fs-7"><i class="fa-solid fa-calendar me-1"></i>August 8 - August 10, 2026</span>
                            <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Book Event Table</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <span class="badge-gold mb-3">DIGITAL INNOVATION</span>
                            <h4 class="text-main fs-4 mb-2">Scan. Order. Enjoy: Upgrading Table Ordering</h4>
                            <p class="text-muted fs-7 mb-4">DineFlow introduces lightning-fast QR code table ordering across all private cabins and dining halls, ensuring zero wait time for food service.</p>
                        </div>
                        <div class="pt-3 border-top-subtle d-flex justify-content-between align-items-center">
                            <span class="text-gold fs-7"><i class="fa-solid fa-calendar me-1"></i>Active Now</span>
                            <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-outline btn-sm">View Digital Menu</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Seasonal Special Dishes (Carousel / Grid Style) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CHEF'S RECOMMENDATIONS</span>
                <h2 class="section-title">Seasonal Special Creations</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="p-4 rounded-4 bg-dark-canvas border-subtle text-center h-100">
                        <h5 class="text-gold mb-2">KESAR PISTA SHIKHAND</h5>
                        <p class="text-muted fs-7 mb-3">Thick strained yogurt whipped with saffron strands, green cardamom, and roasted pistachios.</p>
                        <span class="badge-subtle">Summer Special</span>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="p-4 rounded-4 bg-dark-canvas border-subtle text-center h-100">
                        <h5 class="text-gold mb-2">UNDHIYU & PURI THALI</h5>
                        <p class="text-muted fs-7 mb-3">Traditional winter delicacy prepared with seasonal fresh tubers, muthiya, and green garlic gravy.</p>
                        <span class="badge-subtle">Winter Special</span>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="p-4 rounded-4 bg-dark-canvas border-subtle text-center h-100">
                        <h5 class="text-gold mb-2">LASANIYA BATATA</h5>
                        <p class="text-muted fs-7 mb-3">Baby potatoes simmered in a robust, fiery garlic and red chili gravy with sesame seeds.</p>
                        <span class="badge-subtle">Monsoon Special</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Food Tips & Dining Etiquette (Accordion/Grid) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CULINARY WISDOM</span>
                <h2 class="section-title">Dining Etiquette & Food Tips</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10" data-aos="fade-up">
                    <div class="accordion df-accordion" id="accEtiquette">
                        <div class="accordion-item bg-dark-surface border-subtle rounded-3 mb-3">
                            <h2 class="accordion-header" id="etiq1">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEtiq1" aria-expanded="false" aria-controls="collapseEtiq1">
                                    <i class="fa-solid fa-utensils text-gold me-3"></i>How to properly enjoy an authentic Gujarati Thali sequence?
                                </button>
                            </h2>
                            <div id="collapseEtiq1" class="accordion-collapse collapse" aria-labelledby="etiq1" data-bs-parent="#accEtiquette">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Start with the farsan (snacks) and sweet dish to balance palate acidity, followed by rotis with shaak, and conclude your meal with dal, rice, and buttermilk for optimal digestion.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-surface border-subtle rounded-3">
                            <h2 class="accordion-header" id="etiq2">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEtiq2" aria-expanded="false" aria-controls="collapseEtiq2">
                                    <i class="fa-solid fa-utensils text-gold me-3"></i>Why is buttermilk (Chaas) served at the end of traditional meals?
                                </button>
                            </h2>
                            <div id="collapseEtiq2" class="accordion-collapse collapse" aria-labelledby="etiq2" data-bs-parent="#accEtiquette">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    In Ayurveda, spiced buttermilk (Chaas) infused with roasted cumin and black salt acts as a natural probiotic that aids digestion and cools the stomach after spicy gravies.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Popular Categories (Tag Cloud / Pills) -->
    <section class="section-padding bg-dark-surface text-center">
        <div class="container container-xl" data-aos="fade-up">
            <span class="sub-title">EXPLORE TOPICS</span>
            <h2 class="section-title mb-4">Popular Journal Categories</h2>
            <div class="d-flex justify-content-center flex-wrap gap-3">
                <a href="#" class="category-pill"><i class="fa-solid fa-bowl-food me-2 text-gold"></i>Gujarati Thali</a>
                <a href="#" class="category-pill"><i class="fa-solid fa-fire-burner me-2 text-gold"></i>Tandoori Starters</a>
                <a href="#" class="category-pill"><i class="fa-solid fa-seedling me-2 text-gold"></i>Pure Veg & Jain</a>
                <a href="#" class="category-pill"><i class="fa-solid fa-mug-hot me-2 text-gold"></i>Beverages & Chaas</a>
                <a href="#" class="category-pill"><i class="fa-solid fa-cake-candles me-2 text-gold"></i>Celebration Cakes</a>
                <a href="#" class="category-pill"><i class="fa-solid fa-award me-2 text-gold"></i>Chef Secrets</a>
            </div>
        </div>
    </section>

    <!-- 11. Most Read Articles (List Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">READER FAVORITES</span>
                <h2 class="section-title">Most Read Articles</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-9" data-aos="fade-up">
                    <div class="d-flex flex-column gap-3">
                        <div class="p-3 rounded-3 bg-dark-surface border-subtle d-flex align-items-center justify-content-between flex-wrap gap-3">
                            <div class="d-flex align-items-center gap-3">
                                <span class="text-gold fw-bold fs-4">01</span>
                                <div>
                                    <h6 class="text-main mb-1">Top 10 Must-Try Pure Vegetarian Dishes in Rajkot</h6>
                                    <small class="text-muted">Published July 10, 2026 • 5 Min Read</small>
                                </div>
                            </div>
                            <a href="#" class="btn-df-outline btn-sm">Read Article</a>
                        </div>

                        <div class="p-3 rounded-3 bg-dark-surface border-subtle d-flex align-items-center justify-content-between flex-wrap gap-3">
                            <div class="d-flex align-items-center gap-3">
                                <span class="text-gold fw-bold fs-4">02</span>
                                <div>
                                    <h6 class="text-main mb-1">The Health Benefits of Single-Origin Cold-Pressed Oils</h6>
                                    <small class="text-muted">Published July 04, 2026 • 4 Min Read</small>
                                </div>
                            </div>
                            <a href="#" class="btn-df-outline btn-sm">Read Article</a>
                        </div>

                        <div class="p-3 rounded-3 bg-dark-surface border-subtle d-flex align-items-center justify-content-between flex-wrap gap-3">
                            <div class="d-flex align-items-center gap-3">
                                <span class="text-gold fw-bold fs-4">03</span>
                                <div>
                                    <h6 class="text-main mb-1">Hosting a Milestone Anniversary: Private Cabin Dining Guide</h6>
                                    <small class="text-muted">Published June 28, 2026 • 6 Min Read</small>
                                </div>
                            </div>
                            <a href="#" class="btn-df-outline btn-sm">Read Article</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Newsletter CTA -->
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

    <!-- 13. Reserve Table CTA Section -->
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

    <!-- 14. Closing Premium Banner -->
    <section class="final-blog-banner position-relative py-5 bg-dark-surface text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Good Food is the Foundation of Genuine Happiness"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

    <!-- Article Reading Modal (Frontend UI) -->
    <div class="modal fade" id="article-modal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content bg-dark-surface border-gold-subtle text-main p-4 rounded-4">
                <div class="modal-header border-bottom-subtle pb-3">
                    <h5 class="text-gold fw-bold mb-0">DineFlow Food Journal • Featured Story</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body py-4">
                    <h3 class="text-main mb-3">The Royal Legacy of Kathiyawadi Thali</h3>
                    <p class="text-muted fs-7 mb-3">At DineFlow Rajkot, our Kathiyawadi Thali is more than a meal—it is a culinary tribute to Saurashtra's rustic heritage. Every component is prepared with uncompromising dedication to purity.</p>
                    <p class="text-muted fs-7 mb-3">From the smoky aroma of Ringan No Olo roasted over open charcoal to the crunch of freshly rolled Bajra Rotla brushed with pure A2 Gir Cow Ghee, every bite connects you to the soil of Gujarat.</p>
                    <p class="text-muted fs-7 mb-0">We invite you to visit our Kalawad Road branch and experience this time-honored feast firsthand.</p>
                </div>
                <div class="modal-footer border-top-subtle pt-3">
                    <button type="button" class="btn-df-outline btn-sm" data-bs-dismiss="modal">Close Article</button>
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Book Table Now</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/blog.js") %>"></script>
</asp:Content>
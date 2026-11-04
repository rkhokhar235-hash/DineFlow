<%@ Page Title="Visual Gallery | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="DineFlow.Visitor.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/gallery.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Luxury Hero Banner -->
    <section class="gallery-hero-section">
        <div class="gallery-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Hero/home-hero.png") %>" alt="DineFlow Rajkot Ambiance & Culinary Showcase" class="gallery-hero-bg" />
        <div class="container container-xl gallery-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="gallery-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-camera me-2"></i>VISUAL SHOWCASE & AMBIANCE
                        </span>
                        <h1 class="hero-title">Experience the Royal Ambiance & Culinary Art of DineFlow</h1>
                        <p class="hero-description">
                            Immerse yourself in Rajkot's premier fine dining atmosphere. Take a visual tour of our royal interiors, clay-tandoor kitchens, artisanal pure veg delicacies, and memorable family moments.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Filter Pills Bar -->
    <section class="filter-bar-section sticky-filter-bar bg-dark-canvas py-3">
        <div class="container container-xl">
            <div class="filter-wrapper d-flex align-items-center justify-content-center flex-wrap gap-2">
                <button type="button" class="gallery-filter-btn active" data-filter="all"><i class="fa-solid fa-border-all me-2"></i>All Moments</button>
                <button type="button" class="gallery-filter-btn" data-filter="interior"><i class="fa-solid fa-couch me-2"></i>Interiors</button>
                <button type="button" class="gallery-filter-btn" data-filter="food"><i class="fa-solid fa-utensils me-2"></i>Signature Dishes</button>
                <button type="button" class="gallery-filter-btn" data-filter="kitchen"><i class="fa-solid fa-fire-burner me-2"></i>Live Kitchen</button>
                <button type="button" class="gallery-filter-btn" data-filter="dining"><i class="fa-solid fa-users me-2"></i>Family & Events</button>
                <button type="button" class="gallery-filter-btn" data-filter="desserts"><i class="fa-solid fa-ice-cream me-2"></i>Sweets & Drinks</button>
            </div>
        </div>
    </section>

    <!-- 2. Restaurant Interior Gallery (Masonry Grid) -->
    <section id="interior-gallery" class="section-padding bg-dark-surface gallery-category-block" data-category="interior">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">ROYAL ARCHITECTURE</span>
                <h2 class="section-title">Luxurious Dining Spaces</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-4 gallery-item-wrap" data-aos="fade-up" data-aos-delay="100">
                    <div class="gallery-card masonry-tall border-gold-subtle overflow-hidden rounded-4 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="Grand Dining Hall - Kalawad Road" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="gallery-hover-content">
                            <span class="gallery-tag">Main Hall</span>
                            <h4 class="gallery-img-title">Grand Dining Space</h4>
                            <p class="gallery-img-sub">Warm ambient chandeliers & plush AC seating</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 gallery-item-wrap" data-aos="fade-up" data-aos-delay="200">
                    <div class="gallery-card masonry-short border-gold-subtle overflow-hidden rounded-4 position-relative mb-4">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="Private AC Family Cabins" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="gallery-hover-content">
                            <span class="gallery-tag">Private Cabins</span>
                            <h4 class="gallery-img-title">Family Luxury Cabins</h4>
                            <p class="gallery-img-sub">Intimate seating for private gatherings</p>
                        </div>
                    </div>

                    <div class="gallery-card masonry-short border-gold-subtle overflow-hidden rounded-4 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="Open Garden Terrace Seating" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="gallery-hover-content">
                            <span class="gallery-tag">Terrace Lounge</span>
                            <h4 class="gallery-img-title">Open Sky Terrace</h4>
                            <p class="gallery-img-sub">Cool evening breeze & starlit dining</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 gallery-item-wrap" data-aos="fade-up" data-aos-delay="300">
                    <div class="gallery-card masonry-tall border-gold-subtle overflow-hidden rounded-4 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="Banquet Hall Setup" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="gallery-hover-content">
                            <span class="gallery-tag">Banquets</span>
                            <h4 class="gallery-img-title">Royal Celebration Hall</h4>
                            <p class="gallery-img-sub">Configured for birthdays & anniversaries</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Signature Food Gallery (4 Column Image Grid) -->
    <section id="food-gallery" class="section-padding bg-dark-canvas gallery-category-block" data-category="food">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">PURE VEGETARIAN DELICACIES</span>
                <h2 class="section-title">Culinary Creations Showcase</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-gallery-card border-gold-subtle rounded-4 overflow-hidden position-relative bg-dark-surface">
                        <div class="gallery-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="Rajwadi Gujarati Thali Spread" class="img-fluid w-100" />
                        </div>
                        <div class="p-3 text-center">
                            <h5 class="text-gold mb-1 fs-6">Rajwadi Gujarati Thali</h5>
                            <span class="text-muted fs-7">Pure A2 Ghee & Authentic Saurashtra Recipes</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-gallery-card border-gold-subtle rounded-4 overflow-hidden position-relative bg-dark-surface">
                        <div class="gallery-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="Paneer Tikka Angara Sizzler" class="img-fluid w-100" />
                        </div>
                        <div class="p-3 text-center">
                            <h5 class="text-gold mb-1 fs-6">Paneer Tikka Angara</h5>
                            <span class="text-muted fs-7">Clay Tandoor Charcoal Smoked</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-gallery-card border-gold-subtle rounded-4 overflow-hidden position-relative bg-dark-surface">
                        <div class="gallery-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="Kaju Cheese Royal Masala" class="img-fluid w-100" />
                        </div>
                        <div class="p-3 text-center">
                            <h5 class="text-gold mb-1 fs-6">Kaju Cheese Royal Masala</h5>
                            <span class="text-muted fs-7">Rich Roasted Cashews & Tomato Gravy</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="400">
                    <div class="food-gallery-card border-gold-subtle rounded-4 overflow-hidden position-relative bg-dark-surface">
                        <div class="gallery-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="Sev Tameta Nu Shaak Clay Pot" class="img-fluid w-100" />
                        </div>
                        <div class="p-3 text-center">
                            <h5 class="text-gold mb-1 fs-6">Clay-Pot Sev Tameta</h5>
                            <span class="text-muted fs-7">Kathiyawadi Spiced Tomato Curry</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="500">
                    <div class="food-gallery-card border-gold-subtle rounded-4 overflow-hidden position-relative bg-dark-surface">
                        <div class="gallery-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-mains.jfif") %>" alt="Exotic Veg Supreme Wood-Fired Pizza" class="img-fluid w-100" />
                        </div>
                        <div class="p-3 text-center">
                            <h5 class="text-gold mb-1 fs-6">Exotic Veg Cheese Pizza</h5>
                            <span class="text-muted fs-7">Stone-Oven Baked Hand Stretched Crust</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="600">
                    <div class="food-gallery-card border-gold-subtle rounded-4 overflow-hidden position-relative bg-dark-surface">
                        <div class="gallery-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="Butter Masala Dosa Platter" class="img-fluid w-100" />
                        </div>
                        <div class="p-3 text-center">
                            <h5 class="text-gold mb-1 fs-6">Special Butter Masala Dosa</h5>
                            <span class="text-muted fs-7">Crispy Rice Crepe with 3 Chutneys</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Chef in Action (Split Layout) -->
    <section class="section-padding bg-dark-surface gallery-category-block" data-category="kitchen">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="Master Maharaj Preparing Rotla" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                        <div class="experience-glass-badge p-3 rounded-3 bg-dark-canvas border-gold-subtle text-center">
                            <i class="fa-solid fa-fire-flame-curved text-gold fs-3 mb-1"></i>
                            <span class="d-block text-main fw-bold fs-7">Clay-Stove Artisanal Rotla</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <span class="sub-title">MASTERY IN MOTION</span>
                    <h2 class="section-title">Our Chefs Crafting Culinary Magic</h2>
                    <p class="about-text">
                        Watch our master Maharajs hand-patting organic Bajra Rotla over clay hearths, and our tandoor specialists char-grilling paneer skewers to smoky perfection.
                    </p>
                    <p class="about-text">
                        Every curry, naan, and dessert is prepared live with precision, using strictly single-use cold pressed oils, fresh Gir Cow A2 Ghee, and hand-milled spice blends.
                    </p>
                    <div class="d-flex gap-3 mt-4">
                        <div class="stat-pill p-3 rounded-3 bg-dark-canvas border-subtle text-center flex-grow-1">
                            <span class="fs-4 fw-bold text-gold d-block">100%</span>
                            <span class="fs-7 text-muted">A2 Gir Cow Ghee</span>
                        </div>
                        <div class="stat-pill p-3 rounded-3 bg-dark-canvas border-subtle text-center flex-grow-1">
                            <span class="fs-4 fw-bold text-gold d-block">Fresh</span>
                            <span class="fs-7 text-muted">Daily Organic Produce</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Live Kitchen Moments (Full Width Showcase) -->
    <section class="section-padding bg-dark-canvas gallery-category-block" data-category="kitchen">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">HYGIENE & SANITIZATION</span>
                <h2 class="section-title">Our Ultra-Clean Live Kitchen</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row align-items-center g-4">
                <div class="col-lg-7" data-aos="fade-right">
                    <div class="kitchen-banner-frame border-gold-subtle rounded-4 overflow-hidden position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="Ultra Clean Stainless Steel Kitchen" class="img-fluid w-100" />
                    </div>
                </div>
                <div class="col-lg-5" data-aos="fade-left">
                    <div class="kitchen-specs p-4 rounded-4 bg-dark-surface border-subtle">
                        <h4 class="text-gold mb-3">Kitchen Quality Standards</h4>
                        <ul class="list-unstyled space-list">
                            <li class="d-flex align-items-center gap-3 py-2 border-bottom-subtle">
                                <i class="fa-solid fa-shield-virus text-gold fs-5"></i>
                                <div>
                                    <h6 class="text-main mb-0">Stainless Steel Equipment</h6>
                                    <small class="text-muted fs-7">Hospital-grade sanitization procedures</small>
                                </div>
                            </li>
                            <li class="d-flex align-items-center gap-3 py-2 border-bottom-subtle">
                                <i class="fa-solid fa-hands-bubbles text-gold fs-5"></i>
                                <div>
                                    <h6 class="text-main mb-0">Masked & Gloved Staff</h6>
                                    <small class="text-muted fs-7">Strict food safety protocols maintained</small>
                                </div>
                            </li>
                            <li class="d-flex align-items-center gap-3 py-2 border-bottom-subtle">
                                <i class="fa-solid fa-temperature-arrow-up text-gold fs-5"></i>
                                <div>
                                    <h6 class="text-main mb-0">High-Temp Steam Dishwashing</h6>
                                    <small class="text-muted fs-7">Sterilized cutlery for every guest</small>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Family Dining Experience (Glass Cards Grid) -->
    <section id="dining-gallery" class="section-padding bg-dark-surface gallery-category-block" data-category="dining">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">FAMILY TOGETHERNESS</span>
                <h2 class="section-title">Cherished Dining Moments</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="experience-card-glass p-3 rounded-4 border-gold-subtle bg-dark-canvas overflow-hidden">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="Rajkot Family Enjoying Unlimited Thali" class="img-fluid rounded-3 mb-3 w-100 exp-img" />
                        <h4 class="text-gold fs-5 mb-2">Multi-Generational Family Dinners</h4>
                        <p class="text-muted fs-7 mb-0">From elders savoring soft Phulka Rotis to kids enjoying sizzling cheesy pizzas, DineFlow brings families together.</p>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="experience-card-glass p-3 rounded-4 border-gold-subtle bg-dark-canvas overflow-hidden">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="Friends Group Dining Experience" class="img-fluid rounded-3 mb-3 w-100 exp-img" />
                        <h4 class="text-gold fs-5 mb-2">Friends & Youth Gatherings</h4>
                        <p class="text-muted fs-7 mb-0">Instant QR table ordering allows large groups of friends to order fast mocktails and sizzling starters seamlessly.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Special Events & Celebrations (Slider/Grid) -->
    <section class="section-padding bg-dark-canvas gallery-category-block" data-category="dining">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">MEMORABLE MILESTONES</span>
                <h2 class="section-title">Celebrations & Birthdays</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="event-card rounded-4 border-subtle overflow-hidden bg-dark-surface">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="Birthday Party Decoration at DineFlow" class="img-fluid w-100 event-img" />
                        <div class="p-4">
                            <span class="badge-gold mb-2">Custom Setup</span>
                            <h4 class="text-main fs-5">Birthday & Anniversary Parties</h4>
                            <p class="text-muted fs-7 mb-0">We offer custom balloon decor, table floral arrangements, and personalized dessert platters for your special day.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="event-card rounded-4 border-subtle overflow-hidden bg-dark-surface">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="Corporate Dinner Arrangement" class="img-fluid w-100 event-img" />
                        <div class="p-4">
                            <span class="badge-gold mb-2">Corporate Dining</span>
                            <h4 class="text-main fs-5">Business Lunches & Corporate Buffets</h4>
                            <p class="text-muted fs-7 mb-0">Spacious private AC cabins with high-speed Wi-Fi and dedicated butler service for professional meetings.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Premium Desserts & Beverages -->
    <section id="desserts-gallery" class="section-padding bg-dark-surface gallery-category-block" data-category="desserts">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">SWEET & REFRESHING FINALE</span>
                <h2 class="section-title">Desserts & Mocktail Art</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="100">
                    <div class="dessert-item rounded-4 overflow-hidden border-gold-subtle position-relative bg-dark-canvas text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="Sizzling Brownie with Vanilla" class="img-fluid w-100" />
                        <div class="p-3">
                            <h6 class="text-gold mb-0 fs-7">Sizzling Brownie</h6>
                        </div>
                    </div>
                </div>

                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="200">
                    <div class="dessert-item rounded-4 overflow-hidden border-gold-subtle position-relative bg-dark-canvas text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="Royal Rabdi Falooda" class="img-fluid w-100" />
                        <div class="p-3">
                            <h6 class="text-gold mb-0 fs-7">Rabdi Falooda</h6>
                        </div>
                    </div>
                </div>

                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="300">
                    <div class="dessert-item rounded-4 overflow-hidden border-gold-subtle position-relative bg-dark-canvas text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Ocean Blue Lagoon Mocktail" class="img-fluid w-100" />
                        <div class="p-3">
                            <h6 class="text-gold mb-0 fs-7">Blue Lagoon</h6>
                        </div>
                    </div>
                </div>

                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="400">
                    <div class="dessert-item rounded-4 overflow-hidden border-gold-subtle position-relative bg-dark-canvas text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Fresh Mint Virgin Mojito" class="img-fluid w-100" />
                        <div class="p-3">
                            <h6 class="text-gold mb-0 fs-7">Virgin Mojito</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Instagram Style Gallery Grid -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CONNECT WITH US</span>
                <h2 class="section-title">Follow @DineFlowRajkot</h2>
                <p class="text-muted fs-6 mt-2">Tag us in your dining photos to get featured on our official channel!</p>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-2">
                <div class="col-4 col-md-2" data-aos="fade-up" data-aos-delay="100">
                    <div class="insta-tile overflow-hidden rounded-3 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="DineFlow Instagram Shot" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="insta-overlay d-flex align-items-center justify-content-center">
                            <i class="fa-brands fa-instagram text-white fs-3"></i>
                        </div>
                    </div>
                </div>

                <div class="col-4 col-md-2" data-aos="fade-up" data-aos-delay="200">
                    <div class="insta-tile overflow-hidden rounded-3 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="DineFlow Instagram Shot" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="insta-overlay d-flex align-items-center justify-content-center">
                            <i class="fa-brands fa-instagram text-white fs-3"></i>
                        </div>
                    </div>
                </div>

                <div class="col-4 col-md-2" data-aos="fade-up" data-aos-delay="300">
                    <div class="insta-tile overflow-hidden rounded-3 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="DineFlow Instagram Shot" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="insta-overlay d-flex align-items-center justify-content-center">
                            <i class="fa-brands fa-instagram text-white fs-3"></i>
                        </div>
                    </div>
                </div>

                <div class="col-4 col-md-2" data-aos="fade-up" data-aos-delay="400">
                    <div class="insta-tile overflow-hidden rounded-3 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="DineFlow Instagram Shot" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="insta-overlay d-flex align-items-center justify-content-center">
                            <i class="fa-brands fa-instagram text-white fs-3"></i>
                        </div>
                    </div>
                </div>

                <div class="col-4 col-md-2" data-aos="fade-up" data-aos-delay="500">
                    <div class="insta-tile overflow-hidden rounded-3 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="DineFlow Instagram Shot" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="insta-overlay d-flex align-items-center justify-content-center">
                            <i class="fa-brands fa-instagram text-white fs-3"></i>
                        </div>
                    </div>
                </div>

                <div class="col-4 col-md-2" data-aos="fade-up" data-aos-delay="600">
                    <div class="insta-tile overflow-hidden rounded-3 position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="DineFlow Instagram Shot" class="img-fluid w-100 h-100 object-fit-cover" />
                        <div class="insta-overlay d-flex align-items-center justify-content-center">
                            <i class="fa-brands fa-instagram text-white fs-3"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Reservation CTA Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-canvas shadow-lg" data-aos="zoom-in">
                <span class="sub-title">EXPERIENCE IT IN PERSON</span>
                <h2 class="section-title my-3">Ready to Create Delicious Memories?</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Avoid waiting lines on weekends. Reserve your table online and enjoy a seamless dining experience on Kalawad Road, Rajkot.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book A Table Now</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-outline btn-lg">
                        <span>View Pure Veg Menu</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Closing Premium Banner -->
    <section class="final-gallery-banner position-relative py-5 bg-dark-canvas text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Pure Taste. Royal Hospitality. Unmatched Ambiance."</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/gallery.js") %>"></script>
</asp:Content>
<%@ Page Title="Our Menu | DineFlow Pure Veg Restaurant - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="OurMenu.aspx.cs" Inherits="DineFlow.Visitor.OurMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/menu.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Luxury Hero Banner -->
    <section class="menu-hero-section">
        <div class="menu-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="DineFlow Rajkot Pure Veg Grand Menu" class="menu-hero-bg" />
        <div class="container container-xl menu-hero-container">
            <div class="row align-items-center min-vh-65">
                <div class="col-lg-10 col-xl-8">
                    <div class="menu-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-crown me-2"></i>ARTISANAL PURE VEGETARIAN GASTRONOMY
                        </span>
                        <h1 class="hero-title">A Symphony of Authentic Flavors & Global Cuisines</h1>
                        <p class="hero-description">
                            Explore Rajkot's finest culinary menu featuring authentic Gujarati Thalis, Kathiyawadi treasures, rich Punjabi curries, wok-tossed Pan-Asian, Italian sizzlers, and handcrafted mocktails.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Menu Introduction -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">100% PURE VEGETARIAN & JAIN OPTIONS</span>
                    <h2 class="section-title">Fresh Ingredients, Traditional A2 Ghee & Unmatched Culinary Passion</h2>
                    <p class="intro-text">
                        Every single item on our menu is prepared with cold-pressed groundnut oils, pure Gir Cow A2 Ghee, and farm-fresh organic vegetables delivered daily to our Rajkot kitchen.
                    </p>
                    <p class="intro-text">
                        Scan your table QR standee anytime during your meal to order directly, request Jain customisations, or order additions without waiting for service staff.
                    </p>
                    <div class="d-flex flex-wrap gap-3 mt-4">
                        <div class="intro-badge-pill"><i class="fa-solid fa-seedling me-2"></i>Pure Veg</div>
                        <div class="intro-badge-pill"><i class="fa-solid fa-hand-holding-heart me-2"></i>Jain Available</div>
                        <div class="intro-badge-pill"><i class="fa-solid fa-mortar-pestle me-2"></i>In-House Spices</div>
                        <div class="intro-badge-pill"><i class="fa-solid fa-qrcode me-2"></i>Instant QR Order</div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="intro-img-grid position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="DineFlow Royal Gujarati Thali" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Food Category Navigation -->
    <section class="category-nav-section sticky-category-bar bg-dark-canvas py-3">
        <div class="container container-xl">
            <div class="category-nav-wrapper d-flex align-items-center justify-content-between overflow-auto gap-2">
                <a href="#gujarati-special" class="category-nav-item active"><i class="fa-solid fa-bowl-food me-2"></i>Gujarati</a>
                <a href="#kathiyawadi-special" class="category-nav-item"><i class="fa-solid fa-fire-burner me-2"></i>Kathiyawadi</a>
                <a href="#punjabi-special" class="category-nav-item"><i class="fa-solid fa-mortar-pestle me-2"></i>Punjabi</a>
                <a href="#chinese-special" class="category-nav-item"><i class="fa-solid fa-bowl-rice me-2"></i>Chinese</a>
                <a href="#italian-special" class="category-nav-item"><i class="fa-solid fa-pizza-slice me-2"></i>Italian</a>
                <a href="#south-indian-special" class="category-nav-item"><i class="fa-solid fa-utensils me-2"></i>South Indian</a>
                <a href="#fast-food-special" class="category-nav-item"><i class="fa-solid fa-burger me-2"></i>Fast Food</a>
                <a href="#desserts-special" class="category-nav-item"><i class="fa-solid fa-ice-cream me-2"></i>Desserts</a>
                <a href="#mocktails-special" class="category-nav-item"><i class="fa-solid fa-martini-glass-citrus me-2"></i>Mocktails</a>
            </div>
        </div>
    </section>

    <!-- 4. Signature Gujarati Dishes -->
    <section id="gujarati-special" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">HERITAGE OF SAURASHTRA</span>
                <h2 class="section-title">Signature Gujarati Experience</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="Rajwadi Gujarati Thali" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Bestseller</span>
                            <span class="food-tag chef"><i class="fa-solid fa-crown me-1"></i>Chef's Pick</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-direction-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Gujarati Special</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h3 class="food-title">Rajwadi Gujarati Thali</h3>
                                <p class="food-desc">Unlimited grand feast: 2 Sweets, 2 Farsan, 4 Vegetable Curries, Kadhi, Dal, Phulka Roti, Bajra Rotla, Rice, Salad & Chhas.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹450</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order at Table</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="Special Rajwadi Khichdi Kadhi" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-direction-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Gujarati Special</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Rajwadi Masala Khichdi with Sweet Kadhi</h3>
                                <p class="food-desc">A2 Gir Cow Ghee roasted lentils, rice, vegetables, served with traditional sweet Gujarati kadhi, papad, and pickle.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹280</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order at Table</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="Ringan Bharta with Bajra Rotla" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Authentic</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-direction-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Gujarati Special</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h3 class="food-title">Ringan Bharta with Pure Ghee Bajra Rotla</h3>
                                <p class="food-desc">Charcoal-roasted eggplant mash cooked with green garlic, spring onion, served with hot clay-stove bajra rotla and white butter.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹320</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order at Table</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Kathiyawadi Special -->
    <section id="kathiyawadi-special" class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CLAY-POT & SPICY DELIGHTS</span>
                <h2 class="section-title">Kathiyawadi Treasures</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card-horizontal d-flex flex-column flex-sm-row">
                        <div class="food-img-wrap-horizontal">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="Kathiyawadi Sev Tameta Nu Shaak" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Must Try</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between flex-grow-1">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Kathiyawadi</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Kathiyawadi Sev Tameta Nu Shaak</h3>
                                <p class="food-desc">Tangy tomatoes simmered with local spices, topped with crispy Ratlami Sev and served piping hot in clay pot.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹260</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order at Table</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card-horizontal d-flex flex-column flex-sm-row">
                        <div class="food-img-wrap-horizontal">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="Garlic Sev Dungri Shaak" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between flex-grow-1">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Kathiyawadi</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.7</div>
                                </div>
                                <h3 class="food-title">Lasan Sev Dungri Shaak</h3>
                                <p class="food-desc">Sauteed spring onions cooked with red chilli garlic paste, whole spices, and crispy chickpea noodles.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹270</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order at Table</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Punjabi Special -->
    <section id="punjabi-special" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">RICH GRAVIES & TANDOORI CREATIONS</span>
                <h2 class="section-title">North Indian & Punjabi Special</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="Paneer Tikka Angara" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag chef"><i class="fa-solid fa-fire me-1"></i>Smoky</span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Starter</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h4 class="food-title fs-5">Paneer Tikka Angara</h4>
                                <p class="food-desc">Cottage cheese marinated in aromatic red spices, charcoal smoked in tandoor.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹380</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="Kaju Butter Masala" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Bestseller</span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Main Course</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h4 class="food-title fs-5">Kaju Cheese Butter Masala</h4>
                                <p class="food-desc">Roasted whole cashews & cheese cubes simmered in rich creamy tomato cashew gravy.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹410</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-mains.jfif") %>" alt="Slow Cooked Dal Makhani" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Main Course</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h4 class="food-title fs-5">Slow-Cooked Dal Makhani</h4>
                                <p class="food-desc">Black lentils slow simmered overnight over clay oven, finished with white butter and cream.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹310</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="Royal Paneer Pasanda" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Main Course</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h4 class="food-title fs-5">Royal Paneer Pasanda</h4>
                                <p class="food-desc">Stuffed cottage cheese triangles cooked in golden saffron and onion-cashew rich gravy.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹390</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Chinese Collection -->
    <section id="chinese-special" class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">PAN-ASIAN & WOK SELECTIONS</span>
                <h2 class="section-title">Chinese & Indo-Asian Collection</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="Veg Manchow Soup" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Soup</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.7</div>
                                </div>
                                <h3 class="food-title">Spicy Veg Manchow Soup</h3>
                                <p class="food-desc">Hot garlic vegetable broth topped with crispy fried noodles, ginger, scallions, and coriander.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹190</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="Paneer Chilli Dry" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Popular</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Starter</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Crispy Paneer Chilli Dry</h3>
                                <p class="food-desc">Wok-tossed cottage cheese cubes with bell peppers, green chillies, spring onions, and soya glaze.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹330</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-mains.jfif") %>" alt="Schezwan Hakka Noodles" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Main</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Schezwan Hakka Noodles</h3>
                                <p class="food-desc">High-flame wok tossed wheat noodles with shredded vegetables, hot schezwan sauce, and garlic pepper seasoning.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹290</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Italian Collection -->
    <section id="italian-special" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">WOOD-FIRED PIZZAS & ARTISAN PASTAS</span>
                <h2 class="section-title">Italian & Stone-Oven Special</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="Exotic Veg Supreme Pizza" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Bestseller</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Pizza</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h3 class="food-title">Exotic Veg Cheese Burst Pizza</h3>
                                <p class="food-desc">Hand-stretched crust, San Marzano tomato sauce, mozzarella, jalapenos, olives, corn, bell peppers, and oregano.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹420</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-mains.jfif") %>" alt="Penne Arrabbiata Pasta" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Pasta</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Penne Arrabbiata in Red Sauce</h3>
                                <p class="food-desc">Durum wheat penne tossed in spicy tomato-garlic sauce, fresh basil, extra virgin olive oil, and parmesan cheese.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹360</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="Cheesy Garlic Bread Supreme" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Starter</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Cheesy Stuffed Garlic Bread</h3>
                                <p class="food-desc">In-house baked baguette loaded with herb garlic butter, melted mozzarella cheese, and sweet corn bits.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹240</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. South Indian Collection -->
    <section id="south-indian-special" class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CRISPY DOSAS & STEAMED DELICACIES</span>
                <h2 class="section-title">South Indian Collection</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="Special Butter Masala Dosa" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Bestseller</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">South Indian</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h3 class="food-title">Special Butter Masala Dosa</h3>
                                <p class="food-desc">Crispy fermented rice crepe roasted in fresh butter, filled with spiced potato masala, served with 3 chutneys & sambar.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹210</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="Cheese Mysore Masala Dosa" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">South Indian</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Cheese Mysore Masala Dosa</h3>
                                <p class="food-desc">Spicy red garlic chutney spread over crisp dosa, loaded with melted processed cheese and mashed potato filling.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹250</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="Ghee Button Idli Sambar" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">South Indian</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.7</div>
                                </div>
                                <h3 class="food-title">Steamed Ghee Button Idli</h3>
                                <p class="food-desc">Mini fluffy rice cakes tossed in pure cow ghee and gun powder spice, served with piping hot piping lentil sambar.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹170</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Fast Food Collection -->
    <section id="fast-food-special" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">SANDWICHES, BURGERS & SNACKS</span>
                <h2 class="section-title">Fast Food & Street Favorites</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="DineFlow Special Club Sandwich" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Popular</span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Sandwich</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Triple Layer Cheese Club Sandwich</h3>
                                <p class="food-desc">Grilled bread loaded with sliced cucumber, tomato, cheese, potato patties, and mint mayonnaise, served with peri-peri fries.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹230</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="Crispy Veg Patty Burger" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Burger</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.7</div>
                                </div>
                                <h3 class="food-title">Royal Veg Supreme Cheese Burger</h3>
                                <p class="food-desc">Crispy corn-potato patty, thousand island spread, melted cheddar slice, lettuce, tomato, encased in toasted sesame bun.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹190</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="Crispy Veg Spring Rolls" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Starter</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h3 class="food-title">Crispy Vegetable Spring Rolls</h3>
                                <p class="food-desc">Golden fried thin sheets stuffed with glass noodles, shredded cabbage, carrots, and served with sweet chilli dip.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹220</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Desserts & Ice Cream -->
    <section id="desserts-special" class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">SWEET FINALE</span>
                <h2 class="section-title">Desserts, Sweets & Ice Creams</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="Sizzling Sensation Brownie" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Bestseller</span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Dessert</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h4 class="food-title fs-5">Sizzling Brownie with Ice Cream</h4>
                                <p class="food-desc">Warm chocolate brownie on cast-iron sizzler plate, vanilla ice cream, hot fudge drip.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹260</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="Kesar Pista Rasmalai" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Indian Sweet</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h4 class="food-title fs-5">Royal Kesar Pista Rasmalai</h4>
                                <p class="food-desc">Soft cottage cheese discs soaked in chilled saffron cardamom milk, garnished with pistachios.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹180</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="DineFlow Special Royal Falooda" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Dessert</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h4 class="food-title fs-5">DineFlow Royal Rabdi Falooda</h4>
                                <p class="food-desc">Layers of rose syrup, basil seeds, vermicelli, rich rabdi, topped with vanilla ice cream and nuts.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹220</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="Hot Gulab Jamun with Ice Cream" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Indian Sweet</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h4 class="food-title fs-5">Hot Gulab Jamun with Vanilla</h4>
                                <p class="food-desc">Fried milk dumpling soaked in rose sugar syrup, served with a scoop of premium vanilla ice cream.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹150</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Mocktails & Beverages -->
    <section id="mocktails-special" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">REFRESHING INFUSIONS</span>
                <h2 class="section-title">Artisanal Mocktails & Beverages</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Blue Lagoon Refreshing Mocktail" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Mocktail</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h4 class="food-title fs-5">Ocean Blue Lagoon Mocktail</h4>
                                <p class="food-desc">Blue curacao syrup, lemon juice, sprite, mint leaves, served over crushed ice.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹180</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Fresh Mint Virgin Mojito" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="food-tag popular">Popular</span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Mocktail</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h4 class="food-title fs-5">Fresh Lime & Mint Virgin Mojito</h4>
                                <p class="food-desc">Freshly muddled mint leaves, lime wedges, cane sugar, topped with sparkling soda water.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹190</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Rajkot Special Masala Jeera Soda" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Beverage</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.8</div>
                                </div>
                                <h4 class="food-title fs-5">Rajkot Special Masala Soda</h4>
                                <p class="food-desc">In-house roasted cumin spice blend, rock salt, fresh lemon juice, chilled soda.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹120</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="food-card h-100">
                        <div class="food-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Chilled Masala Buttermilk Chhas" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="food-card-body p-3 p-md-4 d-flex flex-column justify-content-between">
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="category-pill">Traditional</span>
                                    <div class="rating"><i class="fa-solid fa-star"></i> 4.9</div>
                                </div>
                                <h4 class="food-title fs-5">Special Masala Chhas (Buttermilk)</h4>
                                <p class="food-desc">Chilled churned curd spiced with roasted cumin, green coriander, rock salt, and mint.</p>
                            </div>
                            <div class="food-card-footer mt-3 pt-3 d-flex justify-content-between align-items-center">
                                <div class="food-price">₹80</div>
                                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 13. Chef's Recommendations -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="recommendation-card-glass p-4 p-md-5" data-aos="zoom-in">
                <div class="row align-items-center g-4">
                    <div class="col-lg-7">
                        <span class="badge-gold mb-2"><i class="fa-solid fa-crown me-2"></i>EXECUTIVE CHEF RECOMMENDED</span>
                        <h2 class="recommendation-title mt-2">DineFlow Grand Veg Sizzler Platter</h2>
                        <p class="recommendation-desc">
                            A sizzling cast-iron platter loaded with grilled paneer shashlik, herb rice, french fries, stir-fried vegetables, and house special pepper cheese sauce.
                        </p>
                        <div class="d-flex align-items-center gap-3 my-3">
                            <span class="rec-price">₹490</span>
                            <span class="rec-sub">*Serves 2 Persons</span>
                        </div>
                        <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold">
                            <span>Order Sizzler at Table</span>
                            <i class="fa-solid fa-utensils ms-2"></i>
                        </a>
                    </div>
                    <div class="col-lg-5 text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-sub.jfif") %>" alt="DineFlow Grand Veg Sizzler Platter" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 14. Today's Special Offers -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="offer-box-glass p-4 p-md-5" data-aos="fade-up">
                <div class="row align-items-center g-4">
                    <div class="col-lg-5 text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Menu/story-main.jfif") %>" alt="Unlimited Family Veg Feast Offer" class="img-fluid rounded-4 shadow-lg" />
                    </div>
                    <div class="col-lg-7">
                        <span class="sub-title">SPECIAL DINING FEAST</span>
                        <h2 class="section-title my-2">Unlimited Royal Gujarati & Punjabi Feast</h2>
                        <p class="text-muted">
                            Available daily for lunch and dinner. Includes unlimited Gujarati Thali or North Indian main courses with 2 sweets, 2 farsan, live rotis, and complimentary buttermilk.
                        </p>
                        <div class="d-flex align-items-center gap-3 my-3">
                            <span class="offer-price">₹599 / Person</span>
                            <span class="text-muted text-decoration-line-through">₹750</span>
                        </div>
                        <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold">
                            <span>Claim Feast Booking</span>
                            <i class="fa-solid fa-arrow-right ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 15. Reserve Table CTA -->
    <section class="section-padding bg-dark-canvas text-center">
        <div class="container container-xl">
            <div class="cta-inner-box p-5 rounded-4" data-aos="zoom-in">
                <span class="sub-title text-gold">READY TO TASTE RAJKOT'S FINEST VEG DISHES?</span>
                <h2 class="cta-heading text-white my-3">Reserve Your Dining Table Today</h2>
                <p class="cta-desc text-muted mx-auto mb-4" style="max-width: 600px;">
                    Skip the weekend waiting queue. Reserve your seating online and enjoy an exceptional dining experience with our instant table QR code ordering system.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book A Table Now</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/menu.js") %>"></script>
</asp:Content>
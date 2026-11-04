<%@ Page Title="Home | DineFlow Luxury Pure Veg Dining - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DineFlow.Visitor.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/home.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Fullscreen Hero Banner Section -->
    <section class="hero-section">
        <div class="hero-bg-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Hero/home-hero.png") %>" alt="DineFlow Rajkot Luxury Pure Veg Restaurant" class="hero-bg-img" />
        
        <div class="container container-xl hero-container">
            <div class="row align-items-center min-vh-100">
                <div class="col-lg-9 col-xl-8">
                    <div class="hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-seedling me-2"></i>100% PURE VEGETARIAN GASTRONOMY
                        </span>
                        <h1 class="hero-title">A Royal Heritage of Flavors, Crafted for Rajkot's Finest Palate.</h1>
                        <p class="hero-description">
                            Experience authentic Gujarati hospitality blended with modern contactless QR ordering. Indulge in artisanal North Indian, Authentic Kathiyawadi delicacies, and royal desserts.
                        </p>
                        <div class="hero-actions">
                            <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold btn-lg">
                                <span>Explore Veg Menu</span>
                                <i class="fa-solid fa-utensils ms-2"></i>
                            </a>
                            <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-outline btn-lg">
                                <span>Book A Royal Table</span>
                                <i class="fa-solid fa-calendar-check ms-2"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="hero-scroll-indicator">
            <span class="scroll-text">SCROLL TO DISCOVER</span>
            <div class="scroll-line"></div>
        </div>
    </section>

    <!-- 2. Featured Categories Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">CURATED SELECTIONS</span>
                <h2 class="section-title">Explore Our Pure Veg Specialties</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-6 col-md-4 col-lg-2" data-aos="fade-up" data-aos-delay="100">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx?cat=starters") %>' class="category-card">
                        <div class="category-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-starter.jfif") %>" alt="Sizzling Veg Starters" />
                            <div class="category-overlay"></div>
                        </div>
                        <h4 class="category-title">Tandoori Starters</h4>
                    </a>
                </div>
                <div class="col-6 col-md-4 col-lg-2" data-aos="fade-up" data-aos-delay="200">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx?cat=thali") %>' class="category-card">
                        <div class="category-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-mains.jfif") %>" alt="Royal Gujarati Thali" />
                            <div class="category-overlay"></div>
                        </div>
                        <h4 class="category-title">Royal Thali</h4>
                    </a>
                </div>
                <div class="col-6 col-md-4 col-lg-2" data-aos="fade-up" data-aos-delay="300">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx?cat=maincourse") %>' class="category-card">
                        <div class="category-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-grill.jfif") %>" alt="Paneer & Subz Main Course" />
                            <div class="category-overlay"></div>
                        </div>
                        <h4 class="category-title">North Indian</h4>
                    </a>
                </div>
                <div class="col-6 col-md-4 col-lg-2" data-aos="fade-up" data-aos-delay="400">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx?cat=desserts") %>' class="category-card">
                        <div class="category-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-dessert.jfif") %>" alt="Traditional Desserts" />
                            <div class="category-overlay"></div>
                        </div>
                        <h4 class="category-title">Sweets & Desserts</h4>
                    </a>
                </div>
                <div class="col-6 col-md-4 col-lg-2" data-aos="fade-up" data-aos-delay="500">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx?cat=mocktails") %>' class="category-card">
                        <div class="category-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-cocktail.jfif") %>" alt="Refreshers & Mocktails" />
                            <div class="category-overlay"></div>
                        </div>
                        <h4 class="category-title">Artisan Mocktails</h4>
                    </a>
                </div>
                <div class="col-6 col-md-4 col-lg-2" data-aos="fade-up" data-aos-delay="600">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx?cat=breads") %>' class="category-card">
                        <div class="category-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/cat-wine.jfif") %>" alt="Tandoori Breads & Naan" />
                            <div class="category-overlay"></div>
                        </div>
                        <h4 class="category-title">Special Breads</h4>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Signature Dishes Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-end mb-5" data-aos="fade-up">
                <div>
                    <span class="sub-title">CHEF'S SIGNATURE CREATIONS</span>
                    <h2 class="section-title mb-0">Our Veg Masterpieces</h2>
                </div>
                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="link-gold mt-3 mt-md-0">
                    <span>View Complete Menu</span>
                    <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="dish-card">
                        <div class="dish-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-1.jpg") %>" alt="Royal Kathiyawadi & Gujarati Rajwadi Thali" />
                            <span class="dish-badge">Chef's Special</span>
                        </div>
                        <div class="dish-content">
                            <div class="d-flex justify-content-between align-items-baseline mb-2">
                                <h3 class="dish-title">Rajwadi Gujarati Thali</h3>
                                <span class="dish-price">₹450</span>
                            </div>
                            <p class="dish-desc">An authentic feast featuring Ringan Bharta, Sev Tameta, Kaju Butter Masala, Phulka Roti, Bajra Rotla with pure Gir Cow Ghee, Farsan, Srikhand & Chaas.</p>
                            <div class="dish-footer d-flex justify-content-between align-items-center mt-3 pt-3">
                                <span class="dietary-tag"><i class="fa-solid fa-leaf me-1"></i>Pure Veg / Jain Available</span>
                                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-quick-add"><i class="fa-solid fa-plus me-1"></i> Quick Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="dish-card">
                        <div class="dish-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-2.jfif") %>" alt="Paneer Tikka Angara Sizzler" />
                            <span class="dish-badge">Bestseller</span>
                        </div>
                        <div class="dish-content">
                            <div class="d-flex justify-content-between align-items-baseline mb-2">
                                <h3 class="dish-title">Paneer Tikka Angara</h3>
                                <span class="dish-price">₹380</span>
                            </div>
                            <p class="dish-desc">Fresh cottage cheese marinated in rich charcoal-smoked spices, grilled to perfection in clay oven, served with mint chutney.</p>
                            <div class="dish-footer d-flex justify-content-between align-items-center mt-3 pt-3">
                                <span class="dietary-tag"><i class="fa-solid fa-fire me-1"></i>Smoky Flavor</span>
                                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-quick-add"><i class="fa-solid fa-plus me-1"></i> Quick Order</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="dish-card">
                        <div class="dish-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dish-3.jpg") %>" alt="Kaju Cheese Masala with Garlic Naan" />
                            <span class="dish-badge">Premium</span>
                        </div>
                        <div class="dish-content">
                            <div class="d-flex justify-content-between align-items-baseline mb-2">
                                <h3 class="dish-title">Kaju Cheese Royal Masala</h3>
                                <span class="dish-price">₹410</span>
                            </div>
                            <p class="dish-desc">Roasted premium cashews and processed cheese cubes cooked in a rich, buttery tomato cashew gravy laced with aromatic khada masalas.</p>
                            <div class="dish-footer d-flex justify-content-between align-items-center mt-3 pt-3">
                                <span class="dietary-tag"><i class="fa-solid fa-crown me-1"></i>Rich & Creamy</span>
                                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-quick-add"><i class="fa-solid fa-plus me-1"></i> Quick Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Restaurant Story Section -->
    <section class="section-padding bg-dark-surface overflow-hidden">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="story-img-grid">
                        <div class="img-box img-box-main">
                            <img src="<%= ResolveUrl("~/Assets/Images/About/story-main.jfif") %>" alt="DineFlow Kitchen & Interior" />
                        </div>
                        <div class="img-box img-box-sub">
                            <img src="<%= ResolveUrl("~/Assets/Images/About/story-sub.jfif") %>" alt="Pure A2 Desi Ghee Prep" />
                        </div>
                        <div class="experience-badge">
                            <span class="number">100%</span>
                            <span class="label">Pure Vegetarian & Jain Friendly</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="story-content ps-lg-4">
                        <span class="sub-title">RAJKOT'S VEGETARIAN HERITAGE</span>
                        <h2 class="section-title">Where Traditional Hospitality Meets Smart Dining</h2>
                        <p class="story-text">
                            Located in the vibrant heart of Rajkot, DineFlow offers a regal vegetarian dining experience. We fuse Gujarat's warm "Atithi Devo Bhava" culture with instantaneous, contactless digital table ordering.
                        </p>
                        <p class="story-text">
                            Every meal is prepared using 100% pure A2 Gir Cow Ghee, cold-pressed oils, and farm-fresh organic vegetables delivered daily from Saurashtra’s best local farms.
                        </p>
                        <div class="story-features row g-3 my-4">
                            <div class="col-sm-6 d-flex align-items-center gap-3">
                                <div class="feature-icon"><i class="fa-solid fa-mortar-pestle"></i></div>
                                <div>
                                    <h5 class="feature-title mb-0">Pure A2 Ghee & Spices</h5>
                                    <small class="text-muted">Hand-ground Traditional Spices</small>
                                </div>
                            </div>
                            <div class="col-sm-6 d-flex align-items-center gap-3">
                                <div class="feature-icon"><i class="fa-solid fa-hand-holding-heart"></i></div>
                                <div>
                                    <h5 class="feature-title mb-0">Strict Jain Options</h5>
                                    <small class="text-muted">Prepared in Separate Kitchen Zone</small>
                                </div>
                            </div>
                        </div>
                        <a href='<%= ResolveUrl("~/Visitor/About.aspx") %>' class="btn-df-gold">
                            <span>Read Our Heritage Story</span>
                            <i class="fa-solid fa-arrow-right ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Why Choose DineFlow Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">THE DINEFLOW EXPERIENCE</span>
                <h2 class="section-title">Why Rajkot Loves Dining With Us</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="feature-card">
                        <div class="card-icon"><i class="fa-solid fa-qrcode"></i></div>
                        <h4 class="card-title">Instant Table QR Order</h4>
                        <p class="card-desc">Scan table QR, view HD food photos with custom Jain/Swaminarayan toggles, and place orders without waiting.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="feature-card">
                        <div class="card-icon"><i class="fa-solid fa-wand-magic-sparkles"></i></div>
                        <h4 class="card-title">Authentic Rajasthani & Kathiyawadi</h4>
                        <p class="card-desc">Handcrafted recipes passed down through generations, made with authentic wood-fired clay pots.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="feature-card">
                        <div class="card-icon"><i class="fa-solid fa-whiskey-glass"></i></div>
                        <h4 class="card-title">Exotic Veg Mocktails</h4>
                        <p class="card-desc">Freshly muddled fruit infusions, Rajkot-special Masala Soda, and artisanal royal sherbets.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="feature-card">
                        <div class="card-icon"><i class="fa-solid fa-couch"></i></div>
                        <h4 class="card-title">Luxury Royal Ambiance</h4>
                        <p class="card-desc">Spacious AC seating with private family dining cabins and festive banquet arrangements.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. QR Ordering Process Section -->
    <section class="section-padding bg-dark-surface position-relative">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">SMART & HYGIENIC ORDERING</span>
                <h2 class="section-title">Order in 3 Simple Steps</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 position-relative">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="process-step-card text-center">
                        <div class="step-number">01</div>
                        <div class="step-img-wrap mx-auto mb-4">
                            <img src="<%= ResolveUrl("~/Assets/Images/Offers/qr-scan.jfif") %>" alt="Scan Table QR Code" />
                        </div>
                        <h4 class="step-title">Scan Table QR</h4>
                        <p class="step-desc">Open your mobile camera and scan the gold QR standee placed on your dining table.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="process-step-card text-center">
                        <div class="step-number">02</div>
                        <div class="step-img-wrap mx-auto mb-4">
                            <img src="<%= ResolveUrl("~/Assets/Images/Offers/qr-select.jpg") %>" alt="Select & Customize Food" />
                        </div>
                        <h4 class="step-title">Select & Customize</h4>
                        <p class="step-desc">Explore dishes with photos, choose spice levels, and select Jain or Regular preparation.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="process-step-card text-center">
                        <div class="step-number">03</div>
                        <div class="step-img-wrap mx-auto mb-4">
                            <img src="<%= ResolveUrl("~/Assets/Images/Offers/qr-enjoy.jpg") %>" alt="Enjoy Hot Fresh Meal" />
                        </div>
                        <h4 class="step-title">Relish Fresh Food</h4>
                        <p class="step-desc">Our kitchen prepares your order fresh and our staff serves it sizzling hot right to your table.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Today's Special Offers Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="offer-banner-glass p-4 p-md-5" data-aos="zoom-in">
                <div class="row align-items-center g-4">
                    <div class="col-lg-7">
                        <span class="offer-badge"><i class="fa-solid fa-fire me-2"></i>WEEKEND SPECIAL FEAST</span>
                        <h2 class="offer-title mt-2">Unlimited Royal Gujarati & Punjabi Buffet</h2>
                        <p class="offer-desc">
                            Enjoy an unlimited grand spread featuring 3 Starters, 4 Main Courses, Live Rotis & Rotlas, Farsan, Sweets, and Sizzling Brownie with Ice Cream.
                        </p>
                        <div class="offer-price-wrap d-flex align-items-center gap-3 my-4">
                            <span class="price-current">₹599</span>
                            <span class="price-old">₹750</span>
                            <span class="price-note">*Per Person (Kids below 5 Free)</span>
                        </div>
                        <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold">
                            <span>Reserve Weekend Table</span>
                            <i class="fa-solid fa-arrow-right ms-2"></i>
                        </a>
                    </div>
                    <div class="col-lg-5 text-center">
                        <div class="offer-img-frame">
                            <img src="<%= ResolveUrl("~/Assets/Images/Offers/special-tasting.jpg") %>" alt="Unlimited Veg Thali & Buffet Spread" class="img-fluid rounded-4" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Meet Our Chefs Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">MASTERS OF VEGETARIAN CULINARY ART</span>
                <h2 class="section-title">Meet Our Culinary Experts</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="chef-card">
                        <div class="chef-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Chefs/chef-1.jpg") %>" alt="Chef Maharaj Ram Singh" />
                        </div>
                        <div class="chef-info">
                            <h4 class="chef-name">Maharaj Ram Singh</h4>
                            <span class="chef-role">Master Thali Chef</span>
                            <p class="chef-bio">With over 25 years of royal Rajasthani and Gujarati Thali expertise from heritage palaces.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="chef-card">
                        <div class="chef-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Chefs/chef-2.jpg") %>" alt="Chef Rajesh Sharma" />
                        </div>
                        <div class="chef-info">
                            <h4 class="chef-name">Chef Rajesh Sharma</h4>
                            <span class="chef-role">North Indian & Tandoor Specialist</span>
                            <p class="chef-bio">Expert in rich Mughlai gravy formulations, smoky cottage cheese marinades, and stuffed naans.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="chef-card">
                        <div class="chef-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Chefs/chef-3.jpg") %>" alt="Chef Bhavesh Patel" />
                        </div>
                        <div class="chef-info">
                            <h4 class="chef-name">Chef Bhavesh Patel</h4>
                            <span class="chef-role">Kathiyawadi & Fusion Chef</span>
                            <p class="chef-bio">Specialist in authentic Saurashtra clay-pot cooking and modern veg fusion appetizers.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Restaurant Statistics Section -->
    <section class="stats-section bg-dark-canvas py-5">
        <div class="container container-xl">
            <div class="row g-4 text-center">
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="100">
                    <div class="stat-card">
                        <h3 class="stat-number"><span class="counter" data-target="12">0</span>+</h3>
                        <p class="stat-label">Years in Rajkot</p>
                    </div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="200">
                    <div class="stat-card">
                        <h3 class="stat-number"><span class="counter" data-target="100">0</span>%</h3>
                        <p class="stat-label">Pure Veg & Pure Ghee</p>
                    </div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="300">
                    <div class="stat-card">
                        <h3 class="stat-number"><span class="counter" data-target="150">0</span>+</h3>
                        <p class="stat-label">Veg Menu Items</p>
                    </div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="400">
                    <div class="stat-card">
                        <h3 class="stat-number"><span class="counter" data-target="500">0</span>k+</h3>
                        <p class="stat-label">Happy Diners Served</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Customer Testimonials Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">TESTIMONIALS</span>
                <h2 class="section-title">Loved By Foodies In Rajkot</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="testimonial-card">
                        <div class="rating-stars mb-3">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        </div>
                        <p class="testimonial-quote">
                            "Best Gujarati Thali in Rajkot! The Bajra Rotla with pure Ghee and Sev Tameta reminded me of authentic home taste. The QR code ordering is super convenient."
                        </p>
                        <div class="d-flex align-items-center gap-3 mt-4">
                            <img src="<%= ResolveUrl("~/Assets/Images/Testimonials/user-1.jpg") %>" alt="Harshil Mehta" class="user-avatar" />
                            <div>
                                <h5 class="user-name mb-0">Harshil Mehta</h5>
                                <small class="text-muted">Local Food Blogger, Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="testimonial-card">
                        <div class="rating-stars mb-3">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        </div>
                        <p class="testimonial-quote">
                            "We had a family get-together with 15 people. Their Jain Paneer Tikka and Cheese Butter Masala were outstanding! Cleanliness and service are top-tier."
                        </p>
                        <div class="d-flex align-items-center gap-3 mt-4">
                            <img src="<%= ResolveUrl("~/Assets/Images/Testimonials/user-2.jpg") %>" alt="Pooja Shah" class="user-avatar" />
                            <div>
                                <h5 class="user-name mb-0">Pooja Shah</h5>
                                <small class="text-muted">Kalawad Road, Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="testimonial-card">
                        <div class="rating-stars mb-3">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        </div>
                        <p class="testimonial-quote">
                            "Scanning the table QR and ordering customized Less-Spicy dishes for kids without searching for waiters made our Sunday dinner hassle-free."
                        </p>
                        <div class="d-flex align-items-center gap-3 mt-4">
                            <img src="<%= ResolveUrl("~/Assets/Images/Testimonials/user-3.jpg") %>" alt="Amit Trivedi" class="user-avatar" />
                            <div>
                                <h5 class="user-name mb-0">Amit Trivedi</h5>
                                <small class="text-muted">Yagnik Road, Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Gallery Preview Section -->
    <section class="section-padding bg-dark-canvas overflow-hidden">
        <div class="container container-xl">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-end mb-5" data-aos="fade-up">
                <div>
                    <span class="sub-title">LUXURY AMBIANCE</span>
                    <h2 class="section-title mb-0">Royal Interior & Dining Space</h2>
                </div>
                <a href='<%= ResolveUrl("~/Visitor/Gallery.aspx") %>' class="link-gold mt-3 mt-md-0">
                    <span>View Full Photo Gallery</span>
                    <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>

            <div class="row g-3">
                <div class="col-md-4" data-aos="zoom-in" data-aos-delay="100">
                    <div class="gallery-preview-item">
                        <img src="<%= ResolveUrl("~/Assets/Images/Gallery/gallery-1.jpg") %>" alt="Main Family Hall - DineFlow Rajkot" />
                        <div class="gallery-hover-overlay">
                            <i class="fa-solid fa-magnifying-glass-plus"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" data-aos="zoom-in" data-aos-delay="200">
                    <div class="gallery-preview-item">
                        <img src="<%= ResolveUrl("~/Assets/Images/Gallery/gallery-2.jpg") %>" alt="Private AC Cabins" />
                        <div class="gallery-hover-overlay">
                            <i class="fa-solid fa-magnifying-glass-plus"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" data-aos="zoom-in" data-aos-delay="300">
                    <div class="gallery-preview-item">
                        <img src="<%= ResolveUrl("~/Assets/Images/Gallery/gallery-3.jpg") %>" alt="Open Garden Terrace Seating" />
                        <div class="gallery-hover-overlay">
                            <i class="fa-solid fa-magnifying-glass-plus"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Reservation CTA Section -->
    <section class="section-padding bg-dark-surface position-relative">
        <div class="container container-xl">
            <div class="reservation-box-glass text-center p-5" data-aos="fade-up">
                <span class="sub-title">PLAN YOUR VISIT</span>
                <h2 class="section-title my-3">Avoid Waiting Time & Reserve Table</h2>
                <p class="mx-auto text-muted mb-4" style="max-width: 600px;">
                    Planning a birthday party, anniversary dinner, or corporate family meal in Rajkot? Book your table in advance for zero wait time.
                </p>
                <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                    <span>Book Table Now</span>
                    <i class="fa-solid fa-calendar-days ms-2"></i>
                </a>
            </div>
        </div>
    </section>

    <!-- 13. Location Preview Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-5" data-aos="fade-right">
                    <span class="sub-title">LOCATE US IN RAJKOT</span>
                    <h2 class="section-title">Visit DineFlow Rajkot</h2>
                    <p class="text-muted">Conveniently situated on Kalawad Road, near Crystal Mall, offering ample valet parking and AC dining facilities.</p>
                    
                    <ul class="location-info-list mt-4">
                        <li><i class="fa-solid fa-location-dot me-3 text-gold"></i> Opp. Crystal Mall, Kalawad Road, Rajkot, Gujarat 360005</li>
                        <li><i class="fa-solid fa-phone me-3 text-gold"></i> +91 98765 43210 / 0281 2345678</li>
                        <li><i class="fa-solid fa-clock me-3 text-gold"></i> Lunch: 11:30 AM - 3:30 PM | Dinner: 7:00 PM - 11:00 PM</li>
                        <li><i class="fa-solid fa-square-parking me-3 text-gold"></i> Free Valet Parking Available</li>
                    </ul>

                    <a href='<%= ResolveUrl("~/Visitor/Branches.aspx") %>' class="btn-df-outline mt-4">
                        <span>Get Directions on Map</span>
                    </a>
                </div>

                <div class="col-lg-7" data-aos="fade-left">
                    <div class="map-frame-wrap">
                        <img src="<%= ResolveUrl("~/Assets/Images/Branches/map-preview.jpg") %>" alt="DineFlow Kalawad Road Rajkot Map Location" class="img-fluid rounded-4 shadow-lg" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 14. Latest Blog Preview Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-end mb-5" data-aos="fade-up">
                <div>
                    <span class="sub-title">FOOD CULTURE & ARTICLES</span>
                    <h2 class="section-title mb-0">From Our Kitchen Journal</h2>
                </div>
                <a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>' class="link-gold mt-3 mt-md-0">
                    <span>Read All Articles</span>
                    <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="blog-preview-card">
                        <div class="blog-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/blog-1.jpg") %>" alt="Secrets of Authentic Kathiyawadi Spices" />
                            <span class="blog-date">Aug 1, 2026</span>
                        </div>
                        <div class="blog-content">
                            <h4 class="blog-title"><a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>'>The Secret Spices of Saurashtra Cuisine</a></h4>
                            <p class="blog-excerpt">Learn how hand-pounded Reshampatti chillies and pure sesame oils give Ringan Bharta its authentic aroma.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="blog-preview-card">
                        <div class="blog-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/blog-2.jpg") %>" alt="Benefits of A2 Gir Cow Ghee in Food" />
                            <span class="blog-date">Jul 28, 2026</span>
                        </div>
                        <div class="blog-content">
                            <h4 class="blog-title"><a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>'>Why We Cook Exclusively in A2 Gir Cow Ghee</a></h4>
                            <p class="blog-excerpt">Discover health benefits, digestive lightness, and rich flavor profile of native Gir cow ghee.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="blog-preview-card">
                        <div class="blog-img-wrap">
                            <img src="<%= ResolveUrl("~/Assets/Images/Blog/blog-3.jpg") %>" alt="Smart QR Ordering in Family Restaurants" />
                            <span class="blog-date">Jul 15, 2026</span>
                        </div>
                        <div class="blog-content">
                            <h4 class="blog-title"><a href='<%= ResolveUrl("~/Visitor/Blog.aspx") %>'>How Table QR Ordering Makes Family Dinners Better</a></h4>
                            <p class="blog-excerpt">See how instant digital menus empower diners to order Jain or special food preferences without delay.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 15. Final Premium CTA Section -->
    <section class="final-cta-section text-center py-5">
        <div class="container container-xl">
            <div class="final-cta-content" data-aos="zoom-in">
                <h2 class="cta-heading mb-3">Ready for a Royal Pure Veg Feast in Rajkot?</h2>
                <p class="cta-text mx-auto mb-4" style="max-width: 600px;">Join us with family and friends to experience traditional Gujarati warmth with modern contactless QR ordering.</p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Explore Veg Menu</span>
                    </a>
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-outline btn-lg">
                        <span>Book Table</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/home.js") %>"></script>
</asp:Content>
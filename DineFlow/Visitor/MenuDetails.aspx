<%@ Page Title="Paneer Tikka Angara Sizzler | DineFlow Luxury Pure Veg" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="MenuDetails.aspx.cs" Inherits="DineFlow.Visitor.MenuDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/menu-details.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="dish-hero-section">
        <div class="dish-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Menu/menu-details-hero.jpg") %>" alt="Paneer Tikka Angara Culinary Showcase" class="dish-hero-bg" />
        <div class="container container-xl dish-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="dish-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb df-breadcrumb mb-3">
                                <li class="breadcrumb-item"><a href='<%= ResolveUrl("~/Visitor/Home.aspx") %>'>Home</a></li>
                                <li class="breadcrumb-item"><a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>'>Our Menu</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Paneer Tikka Angara</li>
                            </ol>
                        </nav>
                        <span class="hero-badge">
                            <i class="fa-solid fa-crown me-2"></i>CHEF'S SIGNATURE SHOWCASE
                        </span>
                        <h1 class="hero-title">Paneer Tikka Angara Sizzler</h1>
                        <p class="hero-description">
                            Charcoal-smoked fresh A2 milk cottage cheese marinated in crushed Reshampatti chillies, mustard oil, and hand-ground Garam Masala. Served sizzling hot over a bed of charred onions.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Large Featured Dish Image & Gallery -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row g-4 align-items-center">
                <div class="col-lg-7" data-aos="fade-right">
                    <div class="dish-gallery-wrap">
                        <div class="main-image-frame position-relative overflow-hidden rounded-4 border-gold-subtle">
                            <img id="mainDishImg" src="<%= ResolveUrl("~/Assets/Images/Menu/paneer-special.jpg") %>" alt="Paneer Tikka Angara Sizzler" class="img-fluid w-100 main-dish-img" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                            <span class="dish-tag-popular">Bestseller</span>
                            <span class="dish-tag-chef"><i class="fa-solid fa-fire me-1"></i>Clay Tandoor</span>
                        </div>
                        <div class="dish-thumbnails-row d-flex gap-3 mt-3">
                            <div class="thumb-item active" onclick="switchDishImage('<%= ResolveUrl("~/Assets/Images/Menu/paneer-special.jpg") %>', this)">
                                <img src="<%= ResolveUrl("~/Assets/Images/Menu/paneer-special.jpg") %>" alt="Front View" class="img-fluid rounded-3" />
                            </div>
                            <div class="thumb-item" onclick="switchDishImage('<%= ResolveUrl("~/Assets/Images/Menu/paneer-special-angle2.jpg") %>', this)">
                                <img src="<%= ResolveUrl("~/Assets/Images/Menu/paneer-special-angle2.jpg") %>" alt="Sizzling Platter Angle" class="img-fluid rounded-3" />
                            </div>
                            <div class="thumb-item" onclick="switchDishImage('<%= ResolveUrl("~/Assets/Images/Menu/paneer-special-angle3.jpg") %>', this)">
                                <img src="<%= ResolveUrl("~/Assets/Images/Menu/paneer-special-angle3.jpg") %>" alt="Close-up Texture" class="img-fluid rounded-3" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 3. Dish Information Panel -->
                <div class="col-lg-5" data-aos="fade-left">
                    <div class="dish-info-card p-4 p-md-5 rounded-4 bg-dark-canvas border-gold-subtle shadow-lg">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="category-pill-lg">Tandoori Appetizer</span>
                            <div class="rating-box"><i class="fa-solid fa-star"></i> 4.9 (120+ Reviews)</div>
                        </div>
                        <h2 class="dish-display-name my-2">Paneer Tikka Angara</h2>
                        <p class="dish-summary-text text-muted mb-4">
                            Savor the smoky goodness of clay-oven grilled cottage cheese slabs, infused with garlic oil, hung curd marinade, and roasted cumin. Served with mint chutney and laccha onions.
                        </p>
                        
                        <div class="price-action-wrap d-flex align-items-center justify-content-between p-3 rounded-3 bg-dark-surface mb-4 border-subtle">
                            <div>
                                <span class="price-label text-muted d-block fs-7">Price (Inclusive of Taxes)</span>
                                <span class="price-value">₹380</span>
                            </div>
                            <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-md">
                                <span>Reserve Table</span>
                                <i class="fa-solid fa-calendar-check ms-2"></i>
                            </a>
                        </div>

                        <!-- Key Spec Badges -->
                        <div class="dish-spec-grid row g-2 text-center">
                            <div class="col-4">
                                <div class="spec-pill p-2 rounded-3 bg-dark-surface border-subtle">
                                    <i class="fa-solid fa-clock text-gold mb-1 d-block"></i>
                                    <span class="spec-title d-block text-muted">Prep Time</span>
                                    <span class="spec-val fw-bold">20-22 Mins</span>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="spec-pill p-2 rounded-3 bg-dark-surface border-subtle">
                                    <i class="fa-solid fa-users text-gold mb-1 d-block"></i>
                                    <span class="spec-title d-block text-muted">Serving</span>
                                    <span class="spec-val fw-bold">2 Persons</span>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="spec-pill p-2 rounded-3 bg-dark-surface border-subtle">
                                    <i class="fa-solid fa-pepper-hot text-gold mb-1 d-block"></i>
                                    <span class="spec-title d-block text-muted">Spice Level</span>
                                    <span class="spec-val fw-bold">Medium-Hot</span>
                                </div>
                            </div>
                        </div>

                        <div class="availability-status mt-4 d-flex align-items-center gap-2">
                            <span class="status-dot green"></span>
                            <span class="text-main fs-7">Available Daily (Lunch & Dinner) | Jain Preparation Available</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Ingredients Showcase -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">PURE & AUTHENTIC SOURCING</span>
                <h2 class="section-title">Key Artisanal Ingredients</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 align-items-center">
                <div class="col-lg-5" data-aos="fade-right">
                    <img src="<%= ResolveUrl("~/Assets/Images/Menu/ingredients.jpg") %>" alt="Fresh Raw Ingredients" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
                <div class="col-lg-7" data-aos="fade-left">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <div class="ingredient-card p-3 rounded-3 bg-dark-surface border-subtle h-100">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="ing-icon-box"><i class="fa-solid fa-cheese"></i></div>
                                    <div>
                                        <h5 class="ing-name mb-1">Fresh A2 Milk Paneer</h5>
                                        <p class="ing-desc text-muted mb-0 fs-7">Handcrafted daily in-house from pure Gir Cow A2 milk for melt-in-mouth softness.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="ingredient-card p-3 rounded-3 bg-dark-surface border-subtle h-100">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="ing-icon-box"><i class="fa-solid fa-pepper-hot"></i></div>
                                    <div>
                                        <h5 class="ing-name mb-1">Reshampatti Chilli</h5>
                                        <p class="ing-desc text-muted mb-0 fs-7">Authentic Saurashtra red chillies providing vibrant natural color and balanced heat.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="ingredient-card p-3 rounded-3 bg-dark-surface border-subtle h-100">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="ing-icon-box"><i class="fa-solid fa-mortar-pestle"></i></div>
                                    <div>
                                        <h5 class="ing-name mb-1">Hung Curd & Mustard Oil</h5>
                                        <p class="ing-desc text-muted mb-0 fs-7">Thick strained yogurt infused with cold-pressed Kachi Ghani mustard oil marinade.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="ingredient-card p-3 rounded-3 bg-dark-surface border-subtle h-100">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="ing-icon-box"><i class="fa-solid fa-seedling"></i></div>
                                    <div>
                                        <h5 class="ing-name mb-1">Fresh Mint & Green Garlic</h5>
                                        <p class="ing-desc text-muted mb-0 fs-7">Sourced fresh daily from local farms near Rajkot for authentic chutney pairings.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Taste Profile -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">FLAVOR ARCHITECTURE</span>
                <h2 class="section-title">The Taste Profile</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 justify-content-center">
                <div class="col-md-6 col-lg-3" data-aos="zoom-in" data-aos-delay="100">
                    <div class="taste-meter-card p-4 rounded-4 bg-dark-canvas text-center border-subtle">
                        <div class="taste-icon mb-3"><i class="fa-solid fa-fire"></i></div>
                        <h4 class="taste-label mb-2">Smokiness</h4>
                        <div class="progress df-progress mb-2">
                            <div class="progress-bar df-progress-bar" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <span class="taste-percentage text-gold fw-bold">95% Charcoal Infused</span>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="zoom-in" data-aos-delay="200">
                    <div class="taste-meter-card p-4 rounded-4 bg-dark-canvas text-center border-subtle">
                        <div class="taste-icon mb-3"><i class="fa-solid fa-pepper-hot"></i></div>
                        <h4 class="taste-label mb-2">Spiciness</h4>
                        <div class="progress df-progress mb-2">
                            <div class="progress-bar df-progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <span class="taste-percentage text-gold fw-bold">75% Balanced Heat</span>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="zoom-in" data-aos-delay="300">
                    <div class="taste-meter-card p-4 rounded-4 bg-dark-canvas text-center border-subtle">
                        <div class="taste-icon mb-3"><i class="fa-solid fa-lemon"></i></div>
                        <h4 class="taste-label mb-2">Tanginess</h4>
                        <div class="progress df-progress mb-2">
                            <div class="progress-bar df-progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <span class="taste-percentage text-gold fw-bold">60% Zesty Lime & Curd</span>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="zoom-in" data-aos-delay="400">
                    <div class="taste-meter-card p-4 rounded-4 bg-dark-canvas text-center border-subtle">
                        <div class="taste-icon mb-3"><i class="fa-solid fa-cubes-stacked"></i></div>
                        <h4 class="taste-label mb-2">Creaminess</h4>
                        <div class="progress df-progress mb-2">
                            <div class="progress-bar df-progress-bar" role="progressbar" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <span class="taste-percentage text-gold fw-bold">85% Melt-in-Mouth Paneer</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Nutritional Highlights -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">HEALTH & WELLNESS</span>
                    <h2 class="section-title">Nutritional Breakdown</h2>
                    <p class="about-text">
                        Prepared using fresh cottage cheese and hung curd marinade with minimal cold-pressed mustard oil. Grilled in clay tandoor for a high-protein, wholesome starter suitable for health-conscious diners.
                    </p>
                    <ul class="nutrition-list list-unstyled mt-4">
                        <li class="d-flex justify-content-between py-2 border-bottom-subtle">
                            <span class="text-main"><i class="fa-solid fa-check text-gold me-2"></i>High Quality Dairy Protein</span>
                            <span class="fw-bold text-gold">28g / Serving</span>
                        </li>
                        <li class="d-flex justify-content-between py-2 border-bottom-subtle">
                            <span class="text-main"><i class="fa-solid fa-check text-gold me-2"></i>Rich Calcium & Minerals</span>
                            <span class="fw-bold text-gold">420mg Calcium</span>
                        </li>
                        <li class="d-flex justify-content-between py-2 border-bottom-subtle">
                            <span class="text-main"><i class="fa-solid fa-check text-gold me-2"></i>Clay-Oven Tandoori Roast</span>
                            <span class="fw-bold text-gold">Zero Re-used Oil</span>
                        </li>
                        <li class="d-flex justify-content-between py-2 border-bottom-subtle">
                            <span class="text-main"><i class="fa-solid fa-check text-gold me-2"></i>Jain Preparation Option</span>
                            <span class="fw-bold text-gold">No Root Veggies</span>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-6" data-aos="fade-left">
                    <div class="nutrition-card p-4 p-md-5 rounded-4 bg-dark-surface border-gold-subtle text-center">
                        <h3 class="mb-4 text-gold">Caloric Summary</h3>
                        <div class="row g-3">
                            <div class="col-6">
                                <div class="nutri-stat-box p-3 rounded-3 bg-dark-canvas border-subtle">
                                    <span class="nutri-val d-block fs-3 fw-bold text-main">340</span>
                                    <span class="nutri-lbl text-muted fs-7">Calories (kcal)</span>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="nutri-stat-box p-3 rounded-3 bg-dark-canvas border-subtle">
                                    <span class="nutri-val d-block fs-3 fw-bold text-main">28g</span>
                                    <span class="nutri-lbl text-muted fs-7">Protein</span>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="nutri-stat-box p-3 rounded-3 bg-dark-canvas border-subtle">
                                    <span class="nutri-val d-block fs-3 fw-bold text-main">18g</span>
                                    <span class="nutri-lbl text-muted fs-7">Healthy Fats</span>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="nutri-stat-box p-3 rounded-3 bg-dark-canvas border-subtle">
                                    <span class="nutri-val d-block fs-3 fw-bold text-main">12g</span>
                                    <span class="nutri-lbl text-muted fs-7">Carbohydrates</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Chef's Recommendation & Pairing -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="chef-recommend-box p-4 p-md-5 rounded-4 bg-dark-canvas border-gold-subtle" data-aos="zoom-in">
                <div class="row align-items-center g-4">
                    <div class="col-lg-4 text-center">
                        <img src="<%= ResolveUrl("~/Assets/Images/Chef/chef-recommendation.jpg") %>" alt="Executive Chef Recommendation" class="img-fluid rounded-circle border-gold-subtle chef-portrait-img shadow-lg" />
                    </div>
                    <div class="col-lg-8">
                        <span class="badge-gold mb-2"><i class="fa-solid fa-utensils me-2"></i>EXECUTIVE CHEF'S PAIRING NOTE</span>
                        <h2 class="section-title fs-2 mb-3">How To Best Enjoy This Dish</h2>
                        <p class="about-text">
                            "Paneer Tikka Angara is served piping hot on a sizzling iron skillet. I recommend pairing it with our chilled <strong>Ocean Blue Lagoon Mocktail</strong> to balance the smoky heat, followed by <strong>Kaju Cheese Royal Masala</strong> and <strong>Butter Garlic Naan</strong> for the main course."
                        </p>
                        <p class="text-gold fw-bold mb-0">- Chef Rajesh Sharma (Executive Tandoor Specialist)</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Related Dishes -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-end mb-5" data-aos="fade-up">
                <div>
                    <span class="sub-title">YOU MAY ALSO LOVE</span>
                    <h2 class="section-title mb-0">Complementary Pure Veg Delicacies</h2>
                </div>
                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="link-gold mt-3 mt-md-0">
                    <span>View Full Menu</span>
                    <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="related-card rounded-4 overflow-hidden bg-dark-surface border-subtle h-100">
                        <div class="related-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/kaju-butter-masala.jpg") %>" alt="Kaju Cheese Butter Masala" class="img-fluid w-100" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="related-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <span class="category-pill-lg">Main Course</span>
                                <h4 class="related-title fs-5 my-2">Kaju Cheese Royal Masala</h4>
                                <p class="related-desc text-muted fs-7">Roasted cashews & processed cheese cooked in rich tomato cashew gravy.</p>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-3 pt-3 border-top-subtle">
                                <span class="price-val text-gold fw-bold fs-5">₹410</span>
                                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold-sm">View Item</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="related-card rounded-4 overflow-hidden bg-dark-surface border-subtle h-100">
                        <div class="related-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/dal-makhani.jpg") %>" alt="Slow Cooked Dal Makhani" class="img-fluid w-100" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="related-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <span class="category-pill-lg">Main Course</span>
                                <h4 class="related-title fs-5 my-2">Slow-Cooked Dal Makhani</h4>
                                <p class="related-desc text-muted fs-7">Black lentils slow-cooked overnight over clay tandoor with fresh cream.</p>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-3 pt-3 border-top-subtle">
                                <span class="price-val text-gold fw-bold fs-5">₹310</span>
                                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold-sm">View Item</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="related-card rounded-4 overflow-hidden bg-dark-surface border-subtle h-100">
                        <div class="related-img-wrap overflow-hidden position-relative">
                            <img src="<%= ResolveUrl("~/Assets/Images/Menu/chef-special-sizzler.jpg") %>" alt="DineFlow Grand Veg Sizzler Platter" class="img-fluid w-100" />
                            <span class="food-badge veg"><i class="fa-solid fa-circle"></i></span>
                        </div>
                        <div class="related-card-body p-4 d-flex flex-column justify-content-between">
                            <div>
                                <span class="category-pill-lg">Chef Special</span>
                                <h4 class="related-title fs-5 my-2">Grand Veg Sizzler Platter</h4>
                                <p class="related-desc text-muted fs-7">Paneer shashlik, herb rice, fries, and sizzling pepper cheese sauce.</p>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-3 pt-3 border-top-subtle">
                                <span class="price-val text-gold fw-bold fs-5">₹490</span>
                                <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-gold-sm">View Item</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Customer Reviews -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">VERIFIED GUEST FEEDBACK</span>
                <h2 class="section-title">What Guests Say About This Dish</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="review-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                            <p class="review-text text-main fs-6 italic">"The smokiness of this Paneer Tikka Angara is incredible! You can taste the genuine clay oven flavor. Best paneer starter in Rajkot hands down."</p>
                        </div>
                        <div class="user-meta mt-3 pt-3 border-top-subtle d-flex align-items-center gap-3">
                            <div class="avatar-circle">HM</div>
                            <div>
                                <h5 class="user-name mb-0 fs-6">Harshil Mehta</h5>
                                <small class="text-muted fs-7">Verified Diner, Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="review-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                            <p class="review-text text-main fs-6 italic">"We requested the Jain version for our family dinner. The kitchen prepared it without onion/garlic without sacrificing any taste or smokiness!"</p>
                        </div>
                        <div class="user-meta mt-3 pt-3 border-top-subtle d-flex align-items-center gap-3">
                            <div class="avatar-circle">PS</div>
                            <div>
                                <h5 class="user-name mb-0 fs-6">Pooja Shah</h5>
                                <small class="text-muted fs-7">Kalawad Road, Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="review-card p-4 rounded-4 bg-dark-canvas border-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <div class="stars text-gold mb-3"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                            <p class="review-text text-main fs-6 italic">"Arrived sizzling hot at our table within 20 minutes of scanning the QR menu. The paneer was super soft and melted in the mouth."</p>
                        </div>
                        <div class="user-meta mt-3 pt-3 border-top-subtle d-flex align-items-center gap-3">
                            <div class="avatar-circle">AT</div>
                            <div>
                                <h5 class="user-name mb-0 fs-6">Amit Trivedi</h5>
                                <small class="text-muted fs-7">Yagnik Road, Rajkot</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Restaurant Quality Promise -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <img src="<%= ResolveUrl("~/Assets/Images/Menu/quality-promise.jpg") %>" alt="DineFlow Quality Guarantee" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <span class="sub-title">OUR CULINARY PLEDGE</span>
                    <h2 class="section-title">The DineFlow Quality Guarantee</h2>
                    <p class="about-text">
                        Every single dish served at DineFlow Rajkot adheres to our uncompromising quality standards. We guarantee zero re-used oils, no synthetic food dyes, and 100% pure A2 Gir Cow Ghee for all Indian preparations.
                    </p>
                    <div class="row g-3 mt-3">
                        <div class="col-sm-6">
                            <div class="promise-item p-3 rounded-3 bg-dark-surface border-subtle d-flex align-items-center gap-3">
                                <i class="fa-solid fa-shield-virus text-gold fs-4"></i>
                                <span class="fs-7 text-main fw-medium">Hygiene Inspected Daily</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="promise-item p-3 rounded-3 bg-dark-surface border-subtle d-flex align-items-center gap-3">
                                <i class="fa-solid fa-seedling text-gold fs-4"></i>
                                <span class="fs-7 text-main fw-medium">100% Pure Veg Kitchen</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Reservation CTA -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-canvas shadow-lg" data-aos="zoom-in">
                <span class="sub-title">CRAVING THIS DISH?</span>
                <h2 class="section-title my-3">Book Your Table at DineFlow Rajkot</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Avoid waiting time during peak evening hours. Reserve your table now and enjoy instant QR ordering right at your table upon arrival.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book A Table Now</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                    <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-outline btn-lg">
                        <span>Explore Full Menu</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Final Premium Banner -->
    <section class="final-dish-banner position-relative py-5 bg-dark-canvas text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Fresh Sizzling Perfection In Every Bite"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/menu-details.js") %>"></script>
</asp:Content>
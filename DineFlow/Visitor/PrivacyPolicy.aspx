<%@ Page Title="Privacy Policy | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="true" CodeBehind="PrivacyPolicy.aspx.cs" Inherits="DineFlow.Visitor.PrivacyPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/privacy-policy.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="privacy-hero-section">
        <div class="privacy-hero-overlay"></div>
        <img src="<%= ResolveUrl("~/Assets/Images/Privacy/privacy-hero.jpg") %>" alt="DineFlow Privacy Policy" class="privacy-hero-bg" />
        <div class="container container-xl privacy-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="privacy-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-shield-halved me-2"></i>TRANSPARENCY & DATA PROTECTION
                        </span>
                        <h1 class="hero-title">Privacy Policy</h1>
                        <p class="hero-description">
                            At DineFlow Rajkot, we respect your privacy and are committed to protecting your personal information with absolute transparency and security.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome Message Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">OUR COMMITMENT</span>
                    <h2 class="section-title">Safeguarding Your Trust</h2>
                    <p class="privacy-text">
                        Welcome to DineFlow. When you visit our restaurant on Kalawad Road, Rajkot, or use our digital table reservation and QR ordering platform, you entrust us with certain information. We treat this data with the same care and high standards that we apply to our pure vegetarian culinary preparations.
                    </p>
                    <p class="privacy-text">
                        This Privacy Policy outlines what information we collect, how it is utilized, and the robust measures we maintain to keep your personal data confidential.
                    </p>
                    <div class="d-flex align-items-center gap-3 mt-3">
                        <span class="badge-gold"><i class="fa-solid fa-circle-check me-1"></i>Effective Date: August 2026</span>
                        <span class="badge-subtle"><i class="fa-solid fa-lock me-1"></i>SSL Encrypted Platform</span>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="<%= ResolveUrl("~/Assets/Images/Privacy/security.jpg") %>" alt="Data Security at DineFlow" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Information We Collect (Grid Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">DATA COLLECTION</span>
                <h2 class="section-title">Information We Collect</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="privacy-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="privacy-icon-box mb-3"><i class="fa-solid fa-address-card"></i></div>
                        <h4 class="text-main fs-5 mb-2">Personal Identifiers</h4>
                        <p class="text-muted fs-7 mb-0">When you reserve a table or contact us, we collect your full name, mobile phone number, and email address to confirm bookings and send updates.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="privacy-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="privacy-icon-box mb-3"><i class="fa-solid fa-utensils"></i></div>
                        <h4 class="text-main fs-5 mb-2">Dining Preferences</h4>
                        <p class="text-muted fs-7 mb-0">Information regarding your seating choices (AC Hall, Cabin, Terrace), dietary notes (Jain food, allergy requests), and party size preferences.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="privacy-card p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <div class="privacy-icon-box mb-3"><i class="fa-solid fa-laptop-code"></i></div>
                        <h4 class="text-main fs-5 mb-2">Technical & Usage Data</h4>
                        <p class="text-muted fs-7 mb-0">Browsing data collected automatically via cookies, including your device type, browser, IP address, and pages visited on our website.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. How Information Is Used (Timeline Style) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">PURPOSE & UTILIZATION</span>
                <h2 class="section-title">How Information Is Used</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="timeline-wrapper">
                        
                        <div class="timeline-item p-4 rounded-4 bg-dark-canvas border-subtle mb-4" data-aos="fade-up">
                            <div class="d-flex align-items-start gap-3">
                                <div class="timeline-number text-gold fw-bold fs-4">01</div>
                                <div>
                                    <h5 class="text-main mb-1">Table Reservations & Order Fulfillment</h5>
                                    <p class="text-muted fs-7 mb-0">Your contact details allow us to send SMS/email confirmations for table bookings, birthday party arrangements, and manage QR code table orders smoothly.</p>
                                </div>
                            </div>
                        </div>

                        <div class="timeline-item p-4 rounded-4 bg-dark-canvas border-subtle mb-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="d-flex align-items-start gap-3">
                                <div class="timeline-number text-gold fw-bold fs-4">02</div>
                                <div>
                                    <h5 class="text-main mb-1">Customer Support & Communications</h5>
                                    <p class="text-muted fs-7 mb-0">We use your feedback and query submissions to respond promptly to inquiries, resolve dining requests, and improve our hospitality on Kalawad Road.</p>
                                </div>
                            </div>
                        </div>

                        <div class="timeline-item p-4 rounded-4 bg-dark-canvas border-subtle" data-aos="fade-up" data-aos-delay="200">
                            <div class="d-flex align-items-start gap-3">
                                <div class="timeline-number text-gold fw-bold fs-4">03</div>
                                <div>
                                    <h5 class="text-main mb-1">Website Optimization & Security</h5>
                                    <p class="text-muted fs-7 mb-0">Analytical data helps us optimize page loading speeds, enhance mobile responsiveness, and prevent fraudulent submissions on our platform.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Cookies Policy (Glass Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">DIGITAL TRACKING</span>
                <h2 class="section-title">Cookies Policy</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4 align-items-center">
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <h4 class="text-gold mb-3"><i class="fa-solid fa-cookie-bite me-2"></i>What Are Cookies?</h4>
                        <p class="text-muted fs-7 mb-3">
                            Cookies are small text files stored on your computer or mobile device when you visit our website. They enable the site to remember your preferences and enhance your browsing experience.
                        </p>
                        <p class="text-muted fs-7 mb-0">
                            You can choose to disable cookies through your browser settings, though certain interactive features on our menu and reservation pages may require them to function correctly.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle h-100">
                        <h4 class="text-gold mb-3"><i class="fa-solid fa-sliders me-2"></i>Managing Your Preferences</h4>
                        <p class="text-muted fs-7 mb-3">
                            We utilize essential session cookies for maintaining reservation state and analytics cookies to understand which menu categories (Thalis, Tandoor, Sweets) are most popular among our visitors.
                        </p>
                        <ul class="list-unstyled space-list fs-7 text-muted mb-0">
                            <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>No third-party advertising tracking</li>
                            <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>Secure encrypted session identifiers</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Third-Party Services (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">EXTERNAL PLATFORMS</span>
                    <h2 class="section-title">Third-Party Services</h2>
                    <p class="privacy-text">
                        DineFlow may integrate standard third-party tools such as Google Maps for restaurant location directions on Kalawad Road, and secure payment gateways for digital billing.
                    </p>
                    <p class="privacy-text">
                        These external service providers adhere to their own strict privacy standards. We never sell, rent, or trade your personal contact details to external marketing agencies under any circumstances.
                    </p>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-canvas border-gold-subtle">
                        <h5 class="text-gold mb-3"><i class="fa-solid fa-handshake me-2"></i>Our Privacy Pledge</h5>
                        <ul class="list-unstyled space-list fs-7 text-muted mb-0">
                            <li class="mb-3"><i class="fa-solid fa-shield text-gold me-2"></i>Strict confidentiality of customer reservations</li>
                            <li class="mb-3"><i class="fa-solid fa-shield text-gold me-2"></i>Secure handling of feedback and inquiry forms</li>
                            <li class="mb-0"><i class="fa-solid fa-shield text-gold me-2"></i>Compliance with standard data protection principles</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Data Security (Feature Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">PROTECTION MEASURES</span>
                <h2 class="section-title">Data Security Standards</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-lock text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">SSL Encryption</h5>
                        <p class="text-muted fs-7 mb-0">All data transferred between your browser and our web servers is encrypted using industry-standard SSL protocols.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-server text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Secure Hosting</h5>
                        <p class="text-muted fs-7 mb-0">Our databases are hosted on secure servers with restricted administrative access and continuous monitoring.</p>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-user-shield text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Access Control</h5>
                        <p class="text-muted fs-7 mb-0">Only authorized restaurant management personnel have access to reservation records for operational hospitality.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. User Rights (Accordion / Toggle Box) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">YOUR CONTROLS</span>
                <h2 class="section-title">Your Data Rights</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10" data-aos="fade-up">
                    <div class="accordion df-accordion" id="accRights">
                        <div class="accordion-item bg-dark-canvas border-subtle rounded-3 mb-3">
                            <h2 class="accordion-header" id="rightHeading1">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#rightCollapse1" aria-expanded="false" aria-controls="rightCollapse1">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Can I request access to my personal reservation data?
                                </button>
                            </h2>
                            <div id="rightCollapse1" class="accordion-collapse collapse" aria-labelledby="rightHeading1" data-bs-parent="#accRights">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Yes. You have the right to request a summary of the personal information we hold regarding your table bookings and contact submissions.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-canvas border-subtle rounded-3">
                            <h2 class="accordion-header" id="rightHeading2">
                                <button class="accordion-button bg-dark-canvas text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#rightCollapse2" aria-expanded="false" aria-controls="rightCollapse2">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>How can I update or delete my contact information?
                                </button>
                            </h2>
                            <div id="rightCollapse2" class="accordion-collapse collapse" aria-labelledby="rightHeading2" data-bs-parent="#accRights">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    If you wish to update your phone number or request deletion of your subscriber data from our records, simply reach out to our guest relations team via our contact page.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Policy Updates (Glass Notice Card) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center" data-aos="zoom-in">
                    <div class="p-4 p-md-5 rounded-4 bg-dark-surface border-gold-subtle shadow-lg">
                        <span class="sub-title">CONTINUOUS IMPROVEMENT</span>
                        <h3 class="text-main mb-3">Updates To This Policy</h3>
                        <p class="text-muted fs-7 mb-0">
                            We may periodically update this Privacy Policy to reflect improvements in our digital platform or changes in legal guidelines. Any modifications will be posted directly on this page with a revised effective date.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Contact Regarding Privacy (Split CTA) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">QUESTIONS OR CONCERNS?</span>
                    <h2 class="section-title">Contact Our Privacy Team</h2>
                    <p class="privacy-text">
                        If you have any questions, clarifications, or concerns regarding our Privacy Policy or data handling practices, please do not hesitate to contact our management team in Rajkot.
                    </p>
                    <div class="p-3 rounded-3 bg-dark-canvas border-subtle mt-3">
                        <small class="text-muted d-block">Privacy Officer Helpline</small>
                        <a href="mailto:privacy@dineflow.in" class="text-gold fw-bold fs-5 text-decoration-none"><i class="fa-solid fa-envelope me-2"></i>privacy@dineflow.in</a>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <img src="<%= ResolveUrl("~/Assets/Images/Privacy/privacy-banner.jpg") %>" alt="DineFlow Hospitality Rajkot" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
            </div>
        </div>
    </section>

    <!-- 11. Reserve Table CTA Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <span class="sub-title">EXPERIENCE ROYAL DINING</span>
                <h2 class="section-title my-3">Ready to Visit DineFlow?</h2>
                <p class="text-muted mx-auto mb-4" style="max-width: 600px;">
                    Book your table online with complete confidence and enjoy authentic pure vegetarian delicacies on Kalawad Road, Rajkot.
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

    <!-- 12. Closing Premium Banner -->
    <section class="final-privacy-banner position-relative py-5 bg-dark-surface text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"Your Privacy & Comfort Are Our Highest Priority"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/privacy-policy.js") %>"></script>
</asp:Content>
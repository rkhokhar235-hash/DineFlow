<%@ Page Title="Contact Us | DineFlow Luxury Pure Veg - Rajkot" Language="C#" MasterPageFile="~/MasterPages/Visitor.master" AutoEventWireup="false" CodeBehind="Contact.aspx.cs" Inherits="DineFlow.Visitor.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/Assets/CSS/contact.css") %>" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Premium Hero Banner -->
    <section class="contact-hero-section">
        <div class="contact-hero-overlay"></div>
        <img src="https://www.hoteltheroyalplaza.com/images/dinebanner3.jpg" alt="Luxury restaurant interior" class="contact-hero-bg" />
        <div class="container container-xl contact-hero-container">
            <div class="row align-items-center min-vh-50">
                <div class="col-lg-10 col-xl-8">
                    <div class="contact-hero-content" data-aos="fade-up" data-aos-duration="1200">
                        <span class="hero-badge">
                            <i class="fa-solid fa-headset me-2"></i>24/7 GUEST HOSPITALITY & SUPPORT
                        </span>
                        <h1 class="hero-title">We Are Here To Assist Your Royal Dining Experience</h1>
                        <p class="hero-description">
                            Have questions about our menu, private cabin bookings, or banquet arrangements? Reach out to our dedicated guest relations team in Rajkot.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. Welcome Contact Section (Split Layout) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">ATITHI DEVO BHAVA</span>
                    <h2 class="section-title">Connect With DineFlow Rajkot</h2>
                    <p class="contact-text">
                        Located on Kalawad Road opposite Crystal Mall, DineFlow is committed to providing prompt, courteous assistance for all your dining, party, and corporate catering needs.
                    </p>
                    <p class="contact-text">
                        Whether you are looking to reserve a table for a family anniversary, inquire about Jain food options, or provide feedback, our staff is at your service.
                    </p>
                    <div class="row g-3 mt-3">
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Instant Phone Assistance</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">24-Hour Email Response</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Dedicated Banquet Manager</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-3">
                                <div class="feature-icon-sm"><i class="fa-solid fa-check"></i></div>
                                <span class="fw-medium text-main fs-7">Complimentary Valet Help</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <div class="position-relative">
                        <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/19/91/64/1589-royal-heritage.jpg?w=900&h=500&s=1" alt="Restaurant guest service" class="img-fluid rounded-4 shadow-lg border-gold-subtle" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. Contact Information Cards (Grid Layout) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">DIRECT CHANNELS</span>
                <h2 class="section-title">How To Reach Us</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <!-- Card 1: Phone -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="contact-info-card p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="info-icon-box mx-auto mb-3"><i class="fa-solid fa-phone-volume"></i></div>
                        <h4 class="info-card-title fs-5">Phone Numbers</h4>
                        <p class="text-muted fs-7 mb-2">Direct Table Reservations</p>
                        <a href="tel:+919876543210" class="info-link d-block text-gold fw-bold fs-6">+91 98765 43210</a>
                        <a href="tel:+912812345678" class="info-link d-block text-muted fs-7 mt-1">+91 281 2345678</a>
                    </div>
                </div>

                <!-- Card 2: Email -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="contact-info-card p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="info-icon-box mx-auto mb-3"><i class="fa-solid fa-envelope-open-text"></i></div>
                        <h4 class="info-card-title fs-5">Email Enquiries</h4>
                        <p class="text-muted fs-7 mb-2">Support & Feedback</p>
                        <a href="mailto:info@dineflow.in" class="info-link d-block text-gold fw-bold fs-6">info@dineflow.in</a>
                        <a href="mailto:events@dineflow.in" class="info-link d-block text-muted fs-7 mt-1">events@dineflow.in</a>
                    </div>
                </div>

                <!-- Card 3: Address -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="contact-info-card p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="info-icon-box mx-auto mb-3"><i class="fa-solid fa-location-dot"></i></div>
                        <h4 class="info-card-title fs-5">Visit Restaurant</h4>
                        <p class="text-muted fs-7 mb-2">Prime Kalawad Road</p>
                        <span class="text-main fs-7 fw-medium d-block">Opp. Crystal Mall, Kalawad Road, Rajkot 360005</span>
                    </div>
                </div>

                <!-- Card 4: Hours -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="contact-info-card p-4 rounded-4 bg-dark-surface border-subtle h-100 text-center">
                        <div class="info-icon-box mx-auto mb-3"><i class="fa-solid fa-clock"></i></div>
                        <h4 class="info-card-title fs-5">Dining Hours</h4>
                        <p class="text-muted fs-7 mb-2">Open 7 Days A Week</p>
                        <span class="text-gold fw-bold fs-7 d-block">11:00 AM - 03:30 PM</span>
                        <span class="text-gold fw-bold fs-7 d-block">07:00 PM - 11:00 PM</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Luxury Contact Form Section (Glass Card Form) -->
    <section id="contact-form-section" class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">GET IN TOUCH</span>
                <h2 class="section-title">Send Us A Message</h2>
                <br />
                <div class="title-divider mx-auto" style="width:900px;" >
                    <h5><asp:Label ID="Label1" runat="server" Text="" style=" color:forestgreen;"></asp:Label></h5>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10 col-xl-9" data-aos="fade-up" data-aos-delay="100">
                    <div class="contact-form-card p-4 p-md-5 rounded-4 border-gold-subtle bg-dark-canvas shadow-lg">

                        <!-- Success Alert Message (Frontend Toggle Only) -->
                        <div id="contactSuccessAlert" class="alert alert-gold border-gold-subtle text-main p-3 rounded-3 mb-4 d-none">
                            <i class="fa-solid fa-circle-check text-gold fs-5 me-2"></i>
                            <strong>Message Sent Successfully!</strong> Thank you for reaching out to DineFlow Rajkot. Our team will get back to you within 24 hours.
                        </div>

                        <div class="row g-4">
                            <!-- Full Name -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="contactName" class="form-label-df"><i class="fa-solid fa-user text-gold me-2"></i>Full Name</label>
                                    <asp:TextBox ID="txtnm" class="form-control-df" runat="server" placeholder="e.g. Harshil Mehta"></asp:TextBox>
                                    
                                </div>
                            </div>

                            <!-- Mobile Number -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="contactMobile" class="form-label-df"><i class="fa-solid fa-phone text-gold me-2"></i>Mobile Number</label>
                                    <asp:TextBox ID="txtmbl" class="form-control-df" runat="server" placeholder="e.g. +91 98765 43210"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Email Address -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="contactEmail" class="form-label-df"><i class="fa-solid fa-envelope text-gold me-2"></i>Email Address</label>
                                    <asp:TextBox ID="txtemail" class="form-control-df" runat="server" placeholder="e.g. harshil@example.com"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Subject -->
                            <div class="col-md-6">
                                <div class="form-group-df">
                                    <label for="contactSubject" class="form-label-df"><i class="fa-solid fa-tag text-gold me-2"></i>Subject</label>
                                        <asp:DropDownList ID="DropDownList1" class="form-select-df" runat="server">
                                            <asp:ListItem>General Enquiry</asp:ListItem>
                                            <asp:ListItem>Table Booking Assistance</asp:ListItem>
                                            <asp:ListItem>Party & Banquet Catering</asp:ListItem>
                                            <asp:ListItem>Guest Feedback & Review</asp:ListItem>
                                        </asp:DropDownList>

                                </div>
                            </div>

                            <!-- Message -->
                            <div class="col-12">
                            <div class="form-group-df">
                                <label for="<%= txtMessage.ClientID %>" class="form-label-df">
                                    <i class="fa-solid fa-comment-dots text-gold me-2"></i>Your Message
                                </label>
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control-df text-area-df" TextMode="MultiLine" Rows="4" placeholder="How can we help you today? Feel free to ask about our menu, special dietary requirements, or table bookings..."></asp:TextBox>
                            </div>
                        </div>

                            <!-- Submit Button -->
                           <div class="col-12 text-center mt-4">
                            <asp:Button ID="btnContactSubmit" runat="server" CssClass="btn-df-gold btn-lg w-100 py-3" Text="Send Message Now" OnClick="btnContactSubmit_Click"/>
                        </div>
                        </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Business Hours & Emergency Line (Split Glass Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="row g-4">
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="hours-card p-4 p-md-5 rounded-4 bg-dark-surface border-gold-subtle h-100">
                        <span class="sub-title text-gold">RESTAURANT SCHEDULE</span>
                        <h3 class="text-main my-2">Daily Operational Hours</h3>
                        <p class="text-muted fs-7 mb-4">We are open throughout the year including national holidays and festival seasons.</p>

                        <div class="d-flex justify-content-between align-items-center py-2 border-bottom-subtle">
                            <span class="text-main fw-medium">Monday - Sunday (Lunch)</span>
                            <span class="text-gold fw-bold">11:00 AM - 03:30 PM</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center py-2 border-bottom-subtle">
                            <span class="text-main fw-medium">Monday - Sunday (Dinner)</span>
                            <span class="text-gold fw-bold">07:00 PM - 11:00 PM</span>
                        </div>
                        <div class="d-flex justify-content-between align-items-center py-2">
                            <span class="text-main fw-medium">Jain Food Counter</span>
                            <span class="text-gold fw-bold">Available All Hours</span>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6" data-aos="fade-left">
                    <div class="hours-card p-4 p-md-5 rounded-4 bg-dark-surface border-gold-subtle h-100 d-flex flex-column justify-content-between">
                        <div>
                            <span class="sub-title text-gold">URGENT ASSISTANCE</span>
                            <h3 class="text-main my-2">Immediate Guest Desk</h3>
                            <p class="text-muted fs-7 mb-4">Need immediate table modifications or running late for your reservation?</p>
                            
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle mb-3">
                                <small class="text-muted d-block">Duty Manager Helpline</small>
                                <a href="tel:+919876543210" class="text-gold fs-4 fw-bold text-decoration-none"><i class="fa-solid fa-headset me-2"></i>+91 98765 43210</a>
                            </div>
                        </div>

                        <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                            <small class="text-muted d-block"><i class="fa-solid fa-circle-info text-gold me-1"></i>Grace Period Policy</small>
                            <span class="text-main fs-7">Reserved tables are held for up to 15 minutes past the booking slot.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. Google Map Section -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">INTERACTIVE MAP</span>
                <h2 class="section-title">Navigate To DineFlow Rajkot</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row align-items-center g-4">
                <div class="col-lg-8" data-aos="fade-right">
                    <div class="map-frame rounded-4 overflow-hidden border-gold-subtle shadow-lg">
                        <img src="https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=1400&q=80" alt="Elegant restaurant dining space" class="img-fluid w-100 h-100 object-fit-cover" />
                    </div>
                </div>
                <div class="col-lg-4" data-aos="fade-left">
                    <div class="p-4 rounded-4 bg-dark-canvas border-subtle">
                        <h4 class="text-gold mb-3"><i class="fa-solid fa-compass me-2"></i>Location Highlights</h4>
                        <p class="text-muted fs-7 mb-3">
                            Directly situated opposite Crystal Mall on Kalawad Road, Rajkot's prime lifestyle avenue.
                        </p>
                        <ul class="list-unstyled space-list fs-7 text-muted mb-4">
                            <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>Valet parking team at entrance</li>
                            <li class="mb-2"><i class="fa-solid fa-check text-gold me-2"></i>Accessible elevator & ramps</li>
                            <li class="mb-0"><i class="fa-solid fa-check text-gold me-2"></i>2 Mins from Kotecha Chowk</li>
                        </ul>
                        <a href="https://maps.google.com" target="_blank" rel="noopener noreferrer" class="btn-df-gold text-center w-100">
                            <span>Get GPS Directions</span>
                            <i class="fa-solid fa-up-right-from-square ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Quick Contact Options (3 Column Feature Cards) -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">INSTANT CONNECT</span>
                <h2 class="section-title">Quick Communication Channels</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="quick-card p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-brands fa-whatsapp text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">WhatsApp Desk</h5>
                        <p class="text-muted fs-7 mb-3">Instant chat for quick menu queries & table booking status.</p>
                        <a href="https://wa.me/919876543210" target="_blank" class="btn-df-outline btn-sm">Chat On WhatsApp</a>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="quick-card p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-calendar-check text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Online Reservation</h5>
                        <p class="text-muted fs-7 mb-3">Book your table online with preferred seating choices.</p>
                        <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold-sm">Reserve Online</a>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="quick-card p-4 rounded-4 bg-dark-surface border-subtle text-center h-100">
                        <i class="fa-solid fa-utensils text-gold display-6 mb-3"></i>
                        <h5 class="text-main mb-2">Browse Menu</h5>
                        <p class="text-muted fs-7 mb-3">Explore our 200+ pure veg delicacies before your visit.</p>
                        <a href='<%= ResolveUrl("~/Visitor/OurMenu.aspx") %>' class="btn-df-outline btn-sm">Explore Menu</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 8. Why Visit DineFlow (Image Right Split) -->
    <section class="section-padding bg-dark-surface">
        <div class="container container-xl">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span class="sub-title">EXCELLENCE IN HOSPITALITY</span>
                    <h2 class="section-title">Why Dine At DineFlow Rajkot?</h2>
                    <p class="contact-text">
                        From our warm Kathiyawadi greeting at the entrance to our clay-oven tandoori starters and signature thalis, every detail is crafted for your delight.
                    </p>
                    <div class="row g-3 mt-2">
                        <div class="col-sm-6">
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                                <h6 class="text-gold mb-1"><i class="fa-solid fa-gem me-2"></i>Luxury Ambiance</h6>
                                <p class="text-muted fs-7 mb-0">Obsidian & gold interiors with plush AC seating.</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="p-3 rounded-3 bg-dark-canvas border-subtle">
                                <h6 class="text-gold mb-1"><i class="fa-solid fa-leaf me-2"></i>100% Pure Veg</h6>
                                <p class="text-muted fs-7 mb-0">Pure Gir Cow A2 Ghee & single-use cold-pressed oils.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <img src="https://images.unsplash.com/photo-1414235077428-338989a2e8c0?auto=format&fit=crop&w=1400&q=80" alt="Beautiful food spread in a restaurant" class="img-fluid rounded-4 border-gold-subtle shadow-lg" />
                </div>
            </div>
        </div>
    </section>

    <!-- 9. Frequently Asked Questions Preview -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="section-header text-center mb-5" data-aos="fade-up">
                <span class="sub-title">COMMON QUERIES</span>
                <h2 class="section-title">Frequently Asked Questions</h2>
                <div class="title-divider mx-auto"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10" data-aos="fade-up">
                    <div class="accordion df-accordion" id="faqAccordion">
                        
                        <div class="accordion-item bg-dark-surface border-subtle rounded-3 mb-3">
                            <h2 class="accordion-header" id="faqHeading1">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapse1" aria-expanded="false" aria-controls="faqCollapse1">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Do I need an advance reservation for weekend dining?
                                </button>
                            </h2>
                            <div id="faqCollapse1" class="accordion-collapse collapse" aria-labelledby="faqHeading1" data-bs-parent="#faqAccordion">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    While walk-in guests are always welcome, we strongly recommend booking a table online for Friday to Sunday dinners to ensure zero waiting time for your family.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-surface border-subtle rounded-3 mb-3">
                            <h2 class="accordion-header" id="faqHeading2">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapse2" aria-expanded="false" aria-controls="faqCollapse2">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Are Jain food options available at DineFlow?
                                </button>
                            </h2>
                            <div id="faqCollapse2" class="accordion-collapse collapse" aria-labelledby="faqHeading2" data-bs-parent="#faqAccordion">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Yes! Over 80% of our menu items, including Gujarati Thalis, Kathiyawadi Shaak, Paneer Starters, and Soups, are available in 100% strict Jain preparations without root vegetables.
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-dark-surface border-subtle rounded-3">
                            <h2 class="accordion-header" id="faqHeading3">
                                <button class="accordion-button bg-dark-surface text-main collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapse3" aria-expanded="false" aria-controls="faqCollapse3">
                                    <i class="fa-solid fa-circle-question text-gold me-3"></i>Is valet parking available at the Rajkot branch?
                                </button>
                            </h2>
                            <div id="faqCollapse3" class="accordion-collapse collapse" aria-labelledby="faqHeading3" data-bs-parent="#faqAccordion">
                                <div class="accordion-body text-muted fs-7 border-top-subtle">
                                    Yes, we offer complimentary valet parking right at the restaurant entrance on Kalawad Road for all our dining guests.
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 10. Social Media Section -->
    <section class="section-padding bg-dark-surface text-center">
        <div class="container container-xl" data-aos="fade-up">
            <span class="sub-title">STAY CONNECTED</span>
            <h2 class="section-title mb-3">Follow Us On Social Media</h2>
            <p class="text-muted max-w-700 mx-auto mb-4">Stay updated with our latest seasonal menus, festival thali specials, and chef recommendations.</p>
            
            <div class="d-flex justify-content-center gap-3 flex-wrap">
                <a href="#" class="social-glass-pill"><i class="fa-brands fa-instagram me-2 text-gold"></i>Instagram</a>
                <a href="#" class="social-glass-pill"><i class="fa-brands fa-facebook-f me-2 text-gold"></i>Facebook</a>
                <a href="#" class="social-glass-pill"><i class="fa-brands fa-youtube me-2 text-gold"></i>YouTube</a>
            </div>
        </div>
    </section>

    <!-- 11. Reserve Table CTA Section -->
    <section class="section-padding bg-dark-canvas">
        <div class="container container-xl">
            <div class="cta-banner-glass p-5 rounded-4 text-center border-gold-subtle bg-dark-surface shadow-lg" data-aos="zoom-in">
                <span class="sub-title">READY TO DINE?</span>
                <h2 class="section-title my-3">Reserve Your Table at DineFlow Rajkot</h2>
                <p class="text-muted mx-auto mb-4 max-w-700">
                    Enjoy contactless QR ordering, royal pure veg delicacies, and plush AC seating on Kalawad Road.
                </p>
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href='<%= ResolveUrl("~/Visitor/Reservation.aspx") %>' class="btn-df-gold btn-lg">
                        <span>Book Table Online</span>
                        <i class="fa-solid fa-calendar-days ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 12. Closing Premium Banner -->
    <section class="final-contact-banner position-relative py-5 bg-dark-surface text-center">
        <div class="container container-xl position-relative z-index-2" data-aos="fade-up">
            <h3 class="text-gold font-heading fs-2 italic mb-2">"We Look Forward To Serving You With Heartfelt Hospitality"</h3>
            <p class="text-muted mb-0 fs-6">DineFlow Pure Veg Restaurant - Opp. Crystal Mall, Kalawad Road, Rajkot</p>
        </div>
    </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific Script -->
    <script src="<%= ResolveUrl("~/Assets/JS/contact.js") %>"></script>
</asp:Content>
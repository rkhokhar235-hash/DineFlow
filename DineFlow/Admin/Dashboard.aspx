<%@ Page Title="Admin Dashboard | DineFlow" Language="C#" MasterPageFile="~/Admin/MasterPages/Admin.master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DineFlow.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Dashboard Specific Stylesheet -->
    <link rel="stylesheet" href="CSS/dashboard.css" />
    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Dashboard Welcome Header -->
    <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center mb-4 pb-2 border-bottom">
        <div>
            <span class="text-uppercase text-muted fs-8 fw-bold tracking-wider">Overview & Metrics</span>
            <h1 class="h3 fw-bold text-dark mb-1">Welcome back, Admin</h1>
            <p class="text-muted mb-0">Here's what's happening with DineFlow today.</p>
        </div>
        <div class="mt-3 mt-md-0 d-flex align-items-center gap-3">
            <div class="current-date-badge px-3 py-2 bg-white rounded-3 border shadow-sm d-flex align-items-center gap-2">
                <i class="fa-solid fa-calendar-days text-primary"></i>
                <span class="fw-medium text-dark fs-7"><%= DateTime.Now.ToString("dd MMM yyyy") %></span>
            </div>
            <a href="ContactMessages.aspx" class="btn btn-primary d-flex align-items-center gap-2 shadow-sm">
                <i class="fa-solid fa-envelope"></i>
                <span>Check Messages</span>
            </a>
        </div>
    </div>

    <!-- 2. Statistics Cards (4-6 Premium Cards) -->
    <div class="row g-4 mb-4">
        <!-- Card 1: Total Contact Messages -->
        <div class="col-xl-3 col-sm-6">
            <div class="card border-0 shadow-sm rounded-4 stat-card h-100">
                <div class="card-body p-4">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                        <div class="stat-icon-box bg-primary-subtle text-primary rounded-3">
                            <i class="fa-solid fa-comments fs-5"></i>
                        </div>
                        <span class="badge bg-success-subtle text-success fw-semibold fs-8">
                            <i class="fa-solid fa-arrow-trend-up me-1"></i>+12%
                        </span>
                    </div>
                    <h6 class="text-muted fw-medium fs-7 mb-1">Total Messages</h6>
                    <h3 class="fw-bold text-dark mb-0 counter-value" data-target="148">148</h3>
                </div>
            </div>
        </div>

        <!-- Card 2: New Messages -->
        <div class="col-xl-3 col-sm-6">
            <div class="card border-0 shadow-sm rounded-4 stat-card h-100">
                <div class="card-body p-4">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                        <div class="stat-icon-box bg-warning-subtle text-warning rounded-3">
                            <i class="fa-solid fa-envelope-open-text fs-5"></i>
                        </div>
                        <span class="badge bg-warning-subtle text-warning fw-semibold fs-8">Action Req</span>
                    </div>
                    <h6 class="text-muted fw-medium fs-7 mb-1">New Messages</h6>
                    <h3 class="fw-bold text-dark mb-0 counter-value" data-target="12">12</h3>
                </div>
            </div>
        </div>

        <!-- Card 3: Total Reservations -->
        <div class="col-xl-3 col-sm-6">
            <div class="card border-0 shadow-sm rounded-4 stat-card h-100">
                <div class="card-body p-4">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                        <div class="stat-icon-box bg-info-subtle text-info rounded-3">
                            <i class="fa-solid fa-calendar-check fs-5"></i>
                        </div>
                        <span class="badge bg-success-subtle text-success fw-semibold fs-8">
                            <i class="fa-solid fa-arrow-trend-up me-1"></i>+8%
                        </span>
                    </div>
                    <h6 class="text-muted fw-medium fs-7 mb-1">Total Reservations</h6>
                    <h3 class="fw-bold text-dark mb-0 counter-value" data-target="324">324</h3>
                </div>
            </div>
        </div>

        <!-- Card 4: Menu Items -->
        <div class="col-xl-3 col-sm-6">
            <div class="card border-0 shadow-sm rounded-4 stat-card h-100">
                <div class="card-body p-4">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                        <div class="stat-icon-box bg-success-subtle text-success rounded-3">
                            <i class="fa-solid fa-utensils fs-5"></i>
                        </div>
                        <span class="badge bg-light text-muted fw-semibold fs-8">Active</span>
                    </div>
                    <h6 class="text-muted fw-medium fs-7 mb-1">Active Menu Items</h6>
                    <h3 class="fw-bold text-dark mb-0 counter-value" data-target="64">64</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- Row: Weekly Overview Chart & Contact Message Summary Card -->
    <div class="row g-4 mb-4">
        <!-- 8. Weekly Overview Chart -->
        <div class="col-lg-8">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-0 d-flex justify-content-between align-items-center">
                    <div>
                        <h5 class="fw-bold text-dark mb-1">Weekly Contact Messages Overview</h5>
                        <p class="text-muted fs-7 mb-0">Incoming customer inquiries over the past 7 days</p>
                    </div>
                    <div class="dropdown">
                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            This Week
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end shadow-sm">
                            <li><a class="dropdown-item" href="#">This Week</a></li>
                            <li><a class="dropdown-item" href="#">Last Week</a></li>
                            <li><a class="dropdown-item" href="#">Last 30 Days</a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body px-4 pb-4">
                    <div class="chart-container" style="position: relative; height:290px; width:100%">
                        <canvas id="weeklyMessagesChart"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <!-- 4. Contact Message Summary Card -->
        <div class="col-lg-4">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-0">
                    <h5 class="fw-bold text-dark mb-1">Message Status Summary</h5>
                    <p class="text-muted fs-7 mb-0">Quick breakdown of inquiries</p>
                </div>
                <div class="card-body px-4 py-4 d-flex flex-column justify-content-around">
                    <div class="d-flex align-items-center justify-content-between p-3 rounded-3 bg-light mb-3">
                        <div class="d-flex align-items-center gap-3">
                            <div class="p-2 bg-warning-subtle text-warning rounded-2">
                                <i class="fa-solid fa-circle-dot fs-6"></i>
                            </div>
                            <div>
                                <h6 class="mb-0 fw-semibold text-dark">Unread Inquiries</h6>
                                <small class="text-muted">Awaiting initial review</small>
                            </div>
                        </div>
                        <span class="badge bg-warning text-dark fw-bold px-2.5 py-1.5 fs-7">12</span>
                    </div>

                    <div class="d-flex align-items-center justify-content-between p-3 rounded-3 bg-light mb-3">
                        <div class="d-flex align-items-center gap-3">
                            <div class="p-2 bg-info-subtle text-info rounded-2">
                                <i class="fa-solid fa-clock-rotate-left fs-6"></i>
                            </div>
                            <div>
                                <h6 class="mb-0 fw-semibold text-dark">Today's Messages</h6>
                                <small class="text-muted">Received in last 24 hours</small>
                            </div>
                        </div>
                        <span class="badge bg-info text-white fw-bold px-2.5 py-1.5 fs-7">5</span>
                    </div>

                    <div class="d-flex align-items-center justify-content-between p-3 rounded-3 bg-light">
                        <div class="d-flex align-items-center gap-3">
                            <div class="p-2 bg-success-subtle text-success rounded-2">
                                <i class="fa-solid fa-check-double fs-6"></i>
                            </div>
                            <div>
                                <h6 class="mb-0 fw-semibold text-dark">Response Pending</h6>
                                <small class="text-muted">Follow up scheduled</small>
                            </div>
                        </div>
                        <span class="badge bg-success text-white fw-bold px-2.5 py-1.5 fs-7">3</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Row: Recent Contact Messages Table & Restaurant Overview -->
    <div class="row g-4 mb-4">
        <!-- 3. Recent Contact Messages -->
        <div class="col-lg-8">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-3 d-flex justify-content-between align-items-center">
                    <div>
                        <h5 class="fw-bold text-dark mb-1">Recent Contact Messages</h5>
                        <p class="text-muted fs-7 mb-0">Latest inquiries submitted through the website</p>
                    </div>
                    <a href="ContactMessages.aspx" class="btn btn-sm btn-outline-primary d-flex align-items-center gap-1">
                        <span>View All Messages</span>
                        <i class="fa-solid fa-arrow-right fs-8"></i>
                    </a>
                </div>
                <div class="card-body px-0 pb-0">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0 text-nowrap">
                            <thead class="table-light text-muted fs-8 text-uppercase">
                                <tr>
                                    <th class="ps-4">Name</th>
                                    <th>Subject</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th class="text-end pe-4">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center gap-2">
                                            <div class="avatar-circle bg-primary-subtle text-primary fw-bold fs-8">AP</div>
                                            <div>
                                                <span class="fw-semibold text-dark d-block">Aarav Patel</span>
                                                <small class="text-muted">aarav@example.com</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td><span class="text-dark">Table Reservation Inquiry</span></td>
                                    <td><span class="text-muted fs-7">Aug 13, 2026</span></td>
                                    <td><span class="badge bg-warning-subtle text-warning border border-warning-subtle px-2 py-1">New</span></td>
                                    <td class="text-end pe-4">
                                        <a href="ContactMessages.aspx" class="btn btn-sm btn-light border" title="View Details"><i class="fa-solid fa-eye text-muted"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center gap-2">
                                            <div class="avatar-circle bg-success-subtle text-success fw-bold fs-8">PS</div>
                                            <div>
                                                <span class="fw-semibold text-dark d-block">Priya Shah</span>
                                                <small class="text-muted">priya.shah@gmail.com</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td><span class="text-dark">Private Banquet Event</span></td>
                                    <td><span class="text-muted fs-7">Aug 12, 2026</span></td>
                                    <td><span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1">Read</span></td>
                                    <td class="text-end pe-4">
                                        <a href="ContactMessages.aspx" class="btn btn-sm btn-light border" title="View Details"><i class="fa-solid fa-eye text-muted"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center gap-2">
                                            <div class="avatar-circle bg-info-subtle text-info fw-bold fs-8">RJ</div>
                                            <div>
                                                <span class="fw-semibold text-dark d-block">Rajesh Joshi</span>
                                                <small class="text-muted">rajesh.j@yahoo.com</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td><span class="text-dark">Catering Feedback</span></td>
                                    <td><span class="text-muted fs-7">Aug 11, 2026</span></td>
                                    <td><span class="badge bg-warning-subtle text-warning border border-warning-subtle px-2 py-1">Pending</span></td>
                                    <td class="text-end pe-4">
                                        <a href="ContactMessages.aspx" class="btn btn-sm btn-light border" title="View Details"><i class="fa-solid fa-eye text-muted"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center gap-2">
                                            <div class="avatar-circle bg-secondary-subtle text-secondary fw-bold fs-8">DM</div>
                                            <div>
                                                <span class="fw-semibold text-dark d-block">Divya Mehta</span>
                                                <small class="text-muted">divya.m@outlook.com</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td><span class="text-dark">Pure Veg Menu Query</span></td>
                                    <td><span class="text-muted fs-7">Aug 10, 2026</span></td>
                                    <td><span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1">Read</span></td>
                                    <td class="text-end pe-4">
                                        <a href="ContactMessages.aspx" class="btn btn-sm btn-light border" title="View Details"><i class="fa-solid fa-eye text-muted"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- 5. Restaurant Overview -->
        <div class="col-lg-4">
            <div class="card border-0 shadow-sm rounded-4 h-100 bg-gradient-dark text-white">
                <div class="card-body p-4 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <span class="badge bg-primary text-dark fw-bold px-2.5 py-1">Flagship Location</span>
                            <span class="badge bg-success text-white px-2 py-1"><i class="fa-solid fa-circle fs-9 text-white me-1"></i>Open Now</span>
                        </div>
                        <h4 class="fw-bold mb-1">DineFlow Rajkot</h4>
                        <p class="text-white-50 fs-7 mb-3"><i class="fa-solid fa-location-dot me-1 text-primary"></i>Opp. Crystal Mall, Kalawad Road, Rajkot</p>
                        
                        <hr class="border-secondary opacity-50 my-3">

                        <div class="mb-3">
                            <small class="text-white-50 d-block text-uppercase fw-bold fs-9 tracking-wider mb-1">Today's Hours</small>
                            <span class="fw-medium fs-7">11:00 AM – 11:00 PM (Pure Veg)</span>
                        </div>
                        <div class="mb-3">
                            <small class="text-white-50 d-block text-uppercase fw-bold fs-9 tracking-wider mb-1">Kitchen Status</small>
                            <span class="text-success fw-semibold fs-7"><i class="fa-solid fa-shield-halved me-1"></i>100% Pure Vegetarian Protocols Active</span>
                        </div>
                    </div>

                    <div class="mt-4 pt-2">
                        <a href="ContactMessages.aspx" class="btn btn-outline-light w-100 btn-sm">
                            <i class="fa-solid fa-phone me-1"></i>Emergency Support Desk
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Row: Quick Actions & Activity Timeline -->
    <div class="row g-4 mb-4">
        <!-- 6. Quick Actions -->
        <div class="col-lg-6">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-0">
                    <h5 class="fw-bold text-dark mb-1">Quick Management Actions</h5>
                    <p class="text-muted fs-7 mb-0">Fast shortcuts for administrative tasks</p>
                </div>
                <div class="card-body px-4 py-4">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <a href="ContactMessages.aspx" class="quick-action-box d-block p-3 rounded-3 border text-decoration-none h-100">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="p-2 bg-primary-subtle text-primary rounded-2">
                                        <i class="fa-solid fa-envelope-open-text fs-5"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-0 fw-semibold text-dark fs-7">Contact Messages</h6>
                                        <small class="text-muted fs-8">View inquiries</small>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <div class="quick-action-box d-block p-3 rounded-3 border bg-light opacity-75 h-100 position-relative">
                                <span class="badge bg-secondary position-absolute top-0 end-0 m-2 fs-9">Coming Soon</span>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="p-2 bg-secondary-subtle text-secondary rounded-2">
                                        <i class="fa-solid fa-utensils fs-5"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-0 fw-semibold text-dark fs-7">Manage Menu</h6>
                                        <small class="text-muted fs-8">Dishes & Pricing</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="quick-action-box d-block p-3 rounded-3 border bg-light opacity-75 h-100 position-relative">
                                <span class="badge bg-secondary position-absolute top-0 end-0 m-2 fs-9">Coming Soon</span>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="p-2 bg-secondary-subtle text-secondary rounded-2">
                                        <i class="fa-solid fa-calendar-check fs-5"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-0 fw-semibold text-dark fs-7">Reservations</h6>
                                        <small class="text-muted fs-8">Table bookings</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="quick-action-box d-block p-3 rounded-3 border bg-light opacity-75 h-100 position-relative">
                                <span class="badge bg-secondary position-absolute top-0 end-0 m-2 fs-9">Coming Soon</span>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="p-2 bg-secondary-subtle text-secondary rounded-2">
                                        <i class="fa-solid fa-images fs-5"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-0 fw-semibold text-dark fs-7">View Gallery</h6>
                                        <small class="text-muted fs-8">Photos & ambiance</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="quick-action-box d-block p-3 rounded-3 border bg-light opacity-75 h-100 position-relative">
                                <span class="badge bg-secondary position-absolute top-0 end-0 m-2 fs-9">Coming Soon</span>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="p-2 bg-secondary-subtle text-secondary rounded-2">
                                        <i class="fa-solid fa-newspaper fs-5"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-0 fw-semibold text-dark fs-7">Manage Blog</h6>
                                        <small class="text-muted fs-8">Culinary journal</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="quick-action-box d-block p-3 rounded-3 border bg-light opacity-75 h-100 position-relative">
                                <span class="badge bg-secondary position-absolute top-0 end-0 m-2 fs-9">Coming Soon</span>
                                <div class="d-flex align-items-center gap-3">
                                    <div class="p-2 bg-secondary-subtle text-secondary rounded-2">
                                        <i class="fa-solid fa-gear fs-5"></i>
                                    </div>
                                    <div>
                                        <h6 class="mb-0 fw-semibold text-dark fs-7">Settings</h6>
                                        <small class="text-muted fs-8">System preferences</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 7. Activity Timeline -->
        <div class="col-lg-6">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-0">
                    <h5 class="fw-bold text-dark mb-1">Recent Activity Timeline</h5>
                    <p class="text-muted fs-7 mb-0">System audit trail & user actions</p>
                </div>
                <div class="card-body px-4 py-4">
                    <div class="timeline-wrapper ps-2">
                        <div class="timeline-item position-relative pb-3 mb-3 border-bottom">
                            <div class="timeline-badge bg-primary text-white rounded-circle position-absolute d-flex align-items-center justify-content-center">
                                <i class="fa-solid fa-envelope fs-9"></i>
                            </div>
                            <div class="ps-4">
                                <h6 class="fw-semibold text-dark mb-1 fs-7">New contact message received</h6>
                                <p class="text-muted fs-8 mb-1">Aarav Patel submitted a table reservation inquiry.</p>
                                <small class="text-muted fs-9"><i class="fa-regular fa-clock me-1"></i>15 mins ago</small>
                            </div>
                        </div>

                        <div class="timeline-item position-relative pb-3 mb-3 border-bottom">
                            <div class="timeline-badge bg-success text-white rounded-circle position-absolute d-flex align-items-center justify-content-center">
                                <i class="fa-solid fa-calendar-check fs-9"></i>
                            </div>
                            <div class="ps-4">
                                <h6 class="fw-semibold text-dark mb-1 fs-7">Table reservation request approved</h6>
                                <p class="text-muted fs-8 mb-1">Family cabin booked for 6 guests at Kalawad Road branch.</p>
                                <small class="text-muted fs-9"><i class="fa-regular fa-clock me-1"></i>2 hours ago</small>
                            </div>
                        </div>

                        <div class="timeline-item position-relative pb-3 mb-3 border-bottom">
                            <div class="timeline-badge bg-info text-white rounded-circle position-absolute d-flex align-items-center justify-content-center">
                                <i class="fa-solid fa-utensils fs-9"></i>
                            </div>
                            <div class="ps-4">
                                <h6 class="fw-semibold text-dark mb-1 fs-7">Menu item updated</h6>
                                <p class="text-muted fs-8 mb-1">Kathiyawadi Special Thali seasonal availability refreshed.</p>
                                <small class="text-muted fs-9"><i class="fa-regular fa-clock me-1"></i>5 hours ago</small>
                            </div>
                        </div>

                        <div class="timeline-item position-relative">
                            <div class="timeline-badge bg-warning text-dark rounded-circle position-absolute d-flex align-items-center justify-content-center">
                                <i class="fa-solid fa-newspaper fs-9"></i>
                            </div>
                            <div class="ps-4">
                                <h6 class="fw-semibold text-dark mb-1 fs-7">Blog article published</h6>
                                <p class="text-muted fs-8 mb-1">"The Secrets of Authentic Saurashtra Spices" went live.</p>
                                <small class="text-muted fs-9"><i class="fa-regular fa-clock me-1"></i>Yesterday</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Row: Popular Sections Overview & System Status -->
    <div class="row g-4 pb-4">
        <!-- 9. Popular Sections Overview -->
        <div class="col-lg-7">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-0">
                    <h5 class="fw-bold text-dark mb-1">Website Sections Overview</h5>
                    <p class="text-muted fs-7 mb-0">Module status across visitor portal</p>
                </div>
                <div class="card-body px-4 py-4">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <div class="p-3 border rounded-3 bg-light d-flex align-items-center justify-content-between">
                                <span class="fw-semibold text-dark fs-7">Menu Portal</span>
                                <span class="badge bg-success-subtle text-success fs-9 px-2 py-1">Active</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 border rounded-3 bg-light d-flex align-items-center justify-content-between">
                                <span class="fw-semibold text-dark fs-7">Gallery Module</span>
                                <span class="badge bg-success-subtle text-success fs-9 px-2 py-1">Active</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 border rounded-3 bg-light d-flex align-items-center justify-content-between">
                                <span class="fw-semibold text-dark fs-7">Food Journal</span>
                                <span class="badge bg-success-subtle text-success fs-9 px-2 py-1">Active</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 border rounded-3 bg-light d-flex align-items-center justify-content-between">
                                <span class="fw-semibold text-dark fs-7">Reservations</span>
                                <span class="badge bg-success-subtle text-success fs-9 px-2 py-1">Active</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 border rounded-3 bg-light d-flex align-items-center justify-content-between">
                                <span class="fw-semibold text-dark fs-7">Contact Desk</span>
                                <span class="badge bg-success-subtle text-success fs-9 px-2 py-1">Active</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 border rounded-3 bg-light d-flex align-items-center justify-content-between">
                                <span class="fw-semibold text-dark fs-7">Online Orders</span>
                                <span class="badge bg-secondary-subtle text-secondary fs-9 px-2 py-1">Coming Soon</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 10. System Status -->
        <div class="col-lg-5">
            <div class="card border-0 shadow-sm rounded-4 h-100">
                <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-0">
                    <h5 class="fw-bold text-dark mb-1">System Status</h5>
                    <p class="text-muted fs-7 mb-0">Infrastructure health & connectivity</p>
                </div>
                <div class="card-body px-4 py-4 d-flex flex-column justify-content-around">
                    <div class="d-flex align-items-center justify-content-between border-bottom pb-2">
                        <span class="text-muted fs-7">Website Status</span>
                        <span class="badge bg-success text-white px-2.5 py-1">Online</span>
                    </div>
                    <div class="d-flex align-items-center justify-content-between border-bottom pb-2">
                        <span class="text-muted fs-7">Visitor Frontend</span>
                        <span class="badge bg-success text-white px-2.5 py-1">Active</span>
                    </div>
                    <div class="d-flex align-items-center justify-content-between border-bottom pb-2">
                        <span class="text-muted fs-7">Admin Panel</span>
                        <span class="badge bg-success text-white px-2.5 py-1">Active</span>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <span class="text-muted fs-7">Database Backend</span>
                        <span class="badge bg-primary-subtle text-primary border border-primary-subtle px-2.5 py-1">Connected UI Placeholder</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Dashboard Specific JavaScript -->
    <script src="JS/dashboard.js"></script>
</asp:Content>
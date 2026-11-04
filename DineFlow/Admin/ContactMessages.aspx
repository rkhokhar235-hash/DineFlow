<%@ Page Title="Contact Messages | DineFlow Admin" Language="C#" MasterPageFile="~/Admin/MasterPages/Admin.master" AutoEventWireup="true" CodeBehind="ContactMessages.aspx.cs" Inherits="DineFlow.Admin.ContactMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page Specific Stylesheet -->
    <link rel="stylesheet" href="CSS/contact-messages.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 1. Page Header -->
    <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center mb-4 pb-2 border-bottom">
        <div>
            <span class="text-uppercase text-muted fs-8 fw-bold tracking-wider">Inquiries & Support</span>
            <h1 class="h3 fw-bold text-dark mb-1 d-flex align-items-center gap-2">
                <i class="fa-solid fa-envelope-open-text text-primary"></i> Contact Messages
            </h1>
            <p class="text-muted mb-0">Manage and review messages submitted by visitors through the DineFlow contact form.</p>
        </div>
        <div class="mt-3 mt-md-0 d-flex align-items-center gap-3">
            <div class="current-date-badge px-3 py-2 bg-white rounded-3 border shadow-sm d-flex align-items-center gap-2">
                <i class="fa-solid fa-calendar-days text-primary"></i>
                <span class="fw-medium text-dark fs-7">13 Aug 2026</span>
            </div>
            <asp:LinkButton ID="btnRefresh" runat="server" OnClick="btnRefresh_Click" CssClass="btn btn-outline-secondary d-flex align-items-center gap-2 shadow-sm">
                <i class="fa-solid fa-rotate-right"></i>
                <span>Refresh</span>
            </asp:LinkButton>
        </div>
    </div>

    <div class="card border-0 shadow-sm rounded-4 mb-4">
        <div class="card-body p-4">
            <div class="row g-3 align-items-center">
                <div class="col-lg-5">
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0 text-muted ps-3">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </span>
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control border-start-0 bg-light ps-0" placeholder="Search by name, email, subject, or phone..."></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-3">
                    <asp:DropDownList ID="ddlDateFilter" runat="server" CssClass="form-select bg-light">
                        <asp:ListItem Text="All Time" Value="0" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Today" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Last 7 Days" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Last 30 Days" Value="30"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-4 d-flex gap-2 justify-content-lg-end">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary px-4 shadow-sm" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear Filters" CssClass="btn btn-light border px-3" />
                </div>
            </div>
        </div>
    </div>

    <!-- 4. Messages Table Section -->
    <div class="card border-0 shadow-sm rounded-4 mb-4">
        <div class="card-header bg-white border-bottom-0 pt-4 px-4 pb-3 d-flex justify-content-between align-items-center">
            <div>
                <h5 class="fw-bold text-dark mb-1">Visitor Inquiries List</h5>
                <p class="text-muted fs-7 mb-0">Showing records retrieved directly from the DineFlow database</p>
            </div>
            <div class="d-flex align-items-center gap-2">
                <span class="text-muted fs-7">Rows per page:</span>
                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" CssClass="form-select form-select-sm w-auto">
                    <asp:ListItem Text="10" Value="10" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                    <asp:ListItem Text="20" Value="20"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="card-body px-0 pb-0">
            
            <!-- Error Alert Placeholder -->
            <asp:Panel ID="pnlError" runat="server" Visible="false" CssClass="alert alert-danger mx-4 mb-3 rounded-3" role="alert">
                <div class="d-flex align-items-center gap-2">
                    <i class="fa-solid fa-triangle-exclamation fs-5"></i>
                    <div>
                        <span class="fw-semibold">Notice:</span> 
                        <asp:Literal ID="litErrorMessage" runat="server" Text="Unable to load contact messages right now." />
                    </div>
                </div>
            </asp:Panel>

            <!-- GridView for Messages -->
            <asp:GridView ID="gvContactMessages" runat="server" AutoGenerateColumns="false" DataKeyNames="Id" 
    AllowPaging="true" PageSize="10" OnRowCommand="gvContactMessages_RowCommand"
    CssClass="table table-hover align-middle mb-0 text-nowrap" GridLines="None">
                <HeaderStyle CssClass="table-light text-muted fs-8 text-uppercase" />
                <Columns>
                    <asp:TemplateField ItemStyle-CssClass="ps-4" HeaderStyle-CssClass="ps-4">
                        <ItemTemplate>
                            <span class="fw-bold text-secondary">#<%# Eval("Id") %></span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name & Email">
                        <ItemTemplate>
                            <div class="d-flex align-items-center gap-2 py-1">
                                <div class="avatar-circle bg-primary-subtle text-primary fw-bold fs-8">DF</div>
                                <div>
                                    <span class="fw-semibold text-dark d-block"><%# Eval("Full_Name") %></span>
                                    <small class="text-muted"><%# Eval("Email_Address") %></small>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                            <span class="text-dark fs-7"><%# Eval("Mobile_Number") %></span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Subject">
                        <ItemTemplate>
                            <span class="text-dark fw-medium"><%# Eval("Subject") %></span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Message Preview">
                        <ItemTemplate>
                            <span class="text-muted fs-7 text-truncate d-inline-block" style="max-width: 250px;">
                                <%# Eval("Message") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action" ItemStyle-CssClass="text-end pe-4" HeaderStyle-CssClass="text-end pe-4">
                        <ItemTemplate>
                            <div class="d-flex justify-content-end gap-2">
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-sm btn-light border" CommandName="cmd_dlt" CommandArgument='<%# Eval("Id") %>' title="Delete Message" OnClientClick="return confirm('Are you sure you want to delete this message?');">
                                    <i class="fa-solid fa-trash-can text-danger"></i>
                                </asp:LinkButton>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <!-- 6. Message View Modal / Detail Panel -->
    <asp:Panel ID="pnlViewModal" runat="server" CssClass="modal fade show" Style="display: none;" ClientIDMode="Static" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content border-0 shadow-lg rounded-4">
                <div class="modal-header bg-dark text-white px-4 py-3 rounded-top-4">
                    <h5 class="modal-title fw-bold d-flex align-items-center gap-2">
                        <i class="fa-solid fa-envelope-open text-primary"></i> Message Details (#<asp:Literal ID="litModalId" runat="server" Text="0" />)
                    </h5>
                    <asp:LinkButton ID="btnCloseModalX" runat="server" CssClass="btn-close btn-close-white" aria-label="Close"></asp:LinkButton>
                </div>
                <div class="modal-body p-4 bg-light">
                    <div class="card border-0 shadow-sm rounded-3 p-4 bg-white mb-3">
                        <div class="row g-3 mb-3">
                            <div class="col-md-6">
                                <small class="text-muted d-block text-uppercase fw-bold fs-9 tracking-wider">Sender Name</small>
                                <span class="fw-semibold text-dark fs-6"><asp:Literal ID="litModalName" runat="server" Text="N/A" /></span>
                            </div>
                            <div class="col-md-6">
                                <small class="text-muted d-block text-uppercase fw-bold fs-9 tracking-wider">Email Address</small>
                                <span class="fw-semibold text-dark fs-6"><asp:Literal ID="litModalEmail" runat="server" Text="N/A" /></span>
                            </div>
                        </div>
                        <div class="row g-3 mb-3">
                            <div class="col-md-6">
                                <small class="text-muted d-block text-uppercase fw-bold fs-9 tracking-wider">Phone Number</small>
                                <span class="fw-semibold text-dark fs-6"><asp:Literal ID="litModalPhone" runat="server" Text="N/A" /></span>
                            </div>
                            <div class="col-md-6">
                                <small class="text-muted d-block text-uppercase fw-bold fs-9 tracking-wider">Submission Date</small>
                                <span class="fw-semibold text-dark fs-6"><asp:Literal ID="litModalDate" runat="server" Text="N/A" /></span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <small class="text-muted d-block text-uppercase fw-bold fs-9 tracking-wider">Subject</small>
                            <span class="fw-semibold text-dark fs-6"><asp:Literal ID="litModalSubject" runat="server" Text="N/A" /></span>
                        </div>
                        <div>
                            <small class="text-muted d-block text-uppercase fw-bold fs-9 tracking-wider mb-2">Complete Message</small>
                            <div class="p-3 bg-light rounded-3 border text-dark fs-7" style="white-space: pre-wrap; line-height: 1.6;"><asp:Literal ID="litModalMessage" runat="server" Text="N/A" /></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-white px-4 py-3 rounded-bottom-4 border-top">
                    <asp:Button ID="btnCloseModal" runat="server" Text="Close Window" CssClass="btn btn-secondary px-4 shadow-sm" />
                </div>
            </div>
        </div>
    </asp:Panel>
    <!-- Modal Backdrop -->
    <div id="modalBackdrop" runat="server" visible="false" class="modal-backdrop fade show"></div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Page Specific JavaScript -->
    <script src="JS/contact-messages.js"></script>
</asp:Content>
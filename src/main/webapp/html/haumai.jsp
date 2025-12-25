<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/haumai.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<!--header-->
<header class="pageHome-header" id="header-home">
    <a href="home" class="text-header">
        <span class="text-nonglam">NÔNG LÂM</span>
        <span class="text-gomsu">GỐM SỨ TINH HOA</span>
    </a>

    <form action="${pageContext.request.contextPath}/product-search" method="get" class="search-header">
        <input type="text" name="keyword" placeholder="Tìm sản phẩm..." value="${param.keyword}">
        <button class="search-btn" type="submit"><i class="fas fa-search"></i></button>
    </form>

    <div class="right-header">
        <button class="btn-header"><a href="#loginModal"><i class="fas fa-user"></i> Đăng nhập</a></button>
        <a href="../html/giohang.html" class="btn-header cart-btn">
            <i class="fas fa-shopping-cart"></i>
            <span>Giỏ hàng</span>
            <span class="cart-badge">2</span> </a>
    </div>
</header>
<nav class="menu-home">
    <ul class="cover-menu">
        <li class="sub-item"> <a href="../html/gomgiadung.html">GỐM GIA DỤNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomgiadung.html">Ấm chén bác tràng</a></li>
                    <li><a href="../html/gomgiadung.html">Bộ bác đĩa bác tràng</a></li>
                    <li><a href="../html/gomgiadung.html">Chum ngâm rượu</a></li>
                    <li><a href="../html/gomgiadung.html">Dụng cụ nhà tắm</a></li>
                    <li><a href="../html/gomgiadung.html">Đèn ngủ</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="../html/gomtrangtri.html">GỐM TRANG TRÍ</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomtrangtri.html">Bình gốm bát tràng</a></li>
                    <li><a href="../html/gomtrangtri.html">Lọ hoa bát tràng</a></li>
                    <li><a href="../html/gomtrangtri.html">Dĩa sứ trang trí</a></li>
                    <li><a href="../html/gomtrangtri.html">Tượng gốm sứ</a></li>
                    <li><a href="../html/gomtrangtri.html">Bình hồ lô</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="../html/gomthocung.html">GỐM THỜ CÚNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomthocung.html">Bộ đồ thờ đầy đủ</a></li>
                    <li><a href="../html/gomthocung.html">Bát hương</a></li>
                    <li><a href="../html/gomthocung.html">Mâm bồng</a></li>
                    <li><a href="../html/gomthocung.html">Bát nắp</a></li>
                    <li><a href="../html/gomthocung.html">Cây đèn nến</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="../html/gomquatang.html">GỐM QUÀ TẶNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomquatang.html">Bình hút lộc in logo</a></li>
                    <li><a href="../html/gomquatang.html">Ấm chén in logo</a></li>
                    <li><a href="../html/gomquatang.html">Bình hoa in logo</a></li>
                    <li><a href="../html/gomquatang.html">Quà tặng bát đĩa</a></li>
                </ul>
            </div>
        </li>
        <li><a href="../html/tintuc.html">TIN TỨC</a></li>
        <li><a href="../html/GioiThieu.html">GIỚI THIỆU</a></li>
        <li><a href="../html/lienhe.html">LIÊN HỆ</a></li>
        <li><a href="../html/quanlyaccount.html">ADMIN CONTROL</a></li>
    </ul>
</nav>

<!-- content -->
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="../html/quanlyaccount.html"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="../html/thongke.html"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="../html/kho.html"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="../html/donhang.html"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="#" class="active"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <!-- Header -->
    <div class="content">
        <header class="header">
            <h1><i class="fas fa-headset"></i> Quản lý Hỗ trợ Khách hàng</h1>
            <p class="subtitle">Theo dõi và xử lý các yêu cầu hỗ trợ từ khách hàng</p>
        </header>

        <!-- Stats -->
        <div class="stats-grid">

            <div class="stat-card">
                <div class="stat-content">
                    <div>
                        <p class="stat-label">Tổng yêu cầu</p>
                        <p class="stat-value">4</p>
                    </div>
                    <div class="stat-icon blue">
                        <i class="fas fa-clipboard-list"></i>
                    </div>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-content">
                    <div>
                        <p class="stat-label">Chờ xử lý</p>
                        <p class="stat-value">1</p>
                    </div>
                    <div class="stat-icon red">
                        <i class="fas fa-clock"></i>
                    </div>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-content">
                    <div>
                        <p class="stat-label">Đang xử lý</p>
                        <p class="stat-value">1</p>
                    </div>
                    <div class="stat-icon yellow">
                        <i class="fas fa-spinner"></i>
                    </div>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-content">
                    <div>
                        <p class="stat-label">Đã giải quyết</p>
                        <p class="stat-value">2</p>
                    </div>
                    <div class="stat-icon green">
                        <i class="fas fa-check-circle"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Filters -->
        <div class="filter-section">
            <div class="search-box">
                <input type="text" placeholder="Tìm kiếm theo tên, tiêu đề, mã yêu cầu...">
            </div>

            <div class="filter-select-wrapper">
                <select>
                    <option value="all">Tất cả</option>
                    <option value="pending">Chờ xử lý</option>
                    <option value="in-progress">Đang xử lý</option>
                    <option value="resolved">Đã giải quyết</option>
                    <option value="closed">Đã đóng</option>
                </select>
            </div>
        </div>

        <!-- Table -->
        <div class="table-container">
            <table>
                <thead>
                <tr>
                    <th>Mã</th>
                    <th>Khách hàng</th>
                    <th>Tiêu đề</th>
                    <th>Danh mục</th>
                    <th>Ưu tiên</th>
                    <th>Trạng thái</th>
                    <th>Thời gian</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td>TK001</td>
                    <td>
                        <div class="customer-info">
                            <div class="name">Nguyễn Văn A</div>
                            <div class="email">a.nguyen@email.com</div>
                        </div>
                    </td>
                    <td>Sản phẩm có vết xước nhỏ ở bề mặt</td>
                    <td>Bảo hành</td>
                    <td><span class="badge priority high">Cao</span></td>
                    <td><span class="badge status pending">Chờ xử lý</span></td>
                    <td>2025-11-20 09:30</td>
                </tr>

                <tr>
                    <td>TK002</td>
                    <td>
                        <div class="customer-info">
                            <div class="name">Trần Thị B</div>
                            <div class="email">b.tran@email.com</div>
                        </div>
                    </td>
                    <td>Sản phẩm giao sai mẫu đã đặt</td>
                    <td>Đổi trả</td>
                    <td><span class="badge priority medium">Trung bình</span></td>
                    <td><span class="badge status in-progress">Đang xử lý</span></td>
                    <td>2025-11-19 14:20</td>
                </tr>

                <tr>
                    <td>TK003</td>
                    <td>
                        <div class="customer-info">
                            <div class="name">Lê Văn C</div>
                            <div class="email">c.le@email.com</div>
                        </div>
                    </td>
                    <td>Do chỗ đặt trang trí không vừa nên trả hàng</td>
                    <td>Hoàn trả</td>
                    <td><span class="badge priority low">Thấp</span></td>
                    <td><span class="badge status resolved">Đã giải quyết</span></td>
                    <td>2025-11-18 10:00</td>
                </tr>

                <tr>
                    <td>TK004</td>
                    <td>
                        <div class="customer-info">
                            <div class="name">Vũ Minh H</div>
                            <div class="email">H.vu@email.com</div>
                        </div>
                    </td>
                    <td>Khách yêu cầu hủy yêu cầu hỗ trợ</td>
                    <td>Khác</td>
                    <td><span class="badge priority low">Thấp</span></td>
                    <td><span class="badge status closed">Đã đóng</span></td>
                    <td>2025-11-18 10:00</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- footer -->
<footer class="site-footer">
    <div class="footer-container">

        <div class="footer-column">
            <h3 class="footer-title">Về Chúng Tôi</h3>
            <p style="margin-bottom: 20px;">
                Tinh hoa gốm Việt - Nơi lưu giữ và phát triển những giá trị truyền thống của làng nghề Bát Tràng. Chúng tôi cam kết mang đến những sản phẩm chất lượng cao, an toàn và thẩm mỹ.
            </p>
            <ul class="contact-info">
                <li>
                    <i class="fas fa-map-marker-alt"></i>
                    <span>Khu phố 33, Linh Xuân, Tp.HCM</span>
                </li>
                <li>
                    <i class="fas fa-phone-alt"></i>
                    <span>Hotline: 0987.654.321 (Zalo/Viber)</span>
                </li>
                <li>
                    <i class="fas fa-envelope"></i>
                    <span>Email: info@gomsutinhhoa.vn</span>
                </li>
            </ul>
        </div>

        <div class="footer-column">
            <h3 class="footer-title">Hỗ Trợ Khách Hàng</h3>
            <ul class="footer-links">
                <li><a href="#">Hướng dẫn mua hàng</a></li>
                <li><a href="#">Chính sách đổi trả & Hoàn tiền</a></li>
                <li><a href="#">Chính sách bảo mật thông tin</a></li>
                <li><a href="#">Quy định vận chuyển</a></li>
                <li><a href="#">Hình thức thanh toán</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3 class="footer-title">Sản Phẩm Nổi Bật</h3>
            <ul class="footer-links">
                <li><a href="#">Bộ đồ ăn Bát Tràng</a></li>
                <li><a href="#">Ấm chén trà cao cấp</a></li>
                <li><a href="#">Lọ hoa & Bình hút lộc</a></li>
                <li><a href="#">Đồ thờ cúng tâm linh</a></li>
                <li><a href="#">Quà tặng doanh nghiệp</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3 class="footer-title">Kết Nối Với Chúng Tôi</h3>
            <div class="social-links">
                <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" title="Zalo"><i class="fas fa-comment-dots"></i></a>
                <a href="#" title="Youtube"><i class="fab fa-youtube"></i></a>
                <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
            </div>

            <h3 class="footer-title" style="margin-top: 30px;">Đăng Ký Nhận Tin</h3>
            <p style="margin-bottom: 15px;">Nhận ngay thông tin về các chương trình khuyến mãi và sản phẩm mới nhất.</p>
            <form class="newsletter-form">
                <input type="email" placeholder="Nhập email của bạn...">
                <button type="submit">ĐĂNG KÝ</button>
            </form>
        </div>
    </div>

    <div class="footer-bottom">
        <p>© 2025 Gốm Sứ Tinh Hoa Bát Tràng. Tất cả các quyền được bảo lưu.</p>
    </div>
</footer>
</body>
</html>
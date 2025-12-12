<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="../css/thongke.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<header class="pageHome-header" id="header-home">

    <a href="../index.jsp" class="text-header">
        <span class="text-nonglam">NÔNG LÂM</span>
        <span class="text-gomsu">GỐM SỨ TINH HOA</span>
    </a>

    <div class="search-header">
        <input type="text" placeholder="Bạn đang tìm sản phẩm gốm sứ nào?">
        <button class="search-btn"><i class="fas fa-search"></i></button>
    </div>

    <div class="right-header">
        <div class="user-info-container">
            <a href="myinfo.jsp" class="cover-avatar-user">
                <div class="user-avatar">
                    <i class="fas fa-user"></i>
                </div>
                <div class="info-user">
                    <span class="user-name">Nguyen Van A</span>
                    <span class="user-phone">0342104524</span>
                </div>
            </a>
            <div class="user-menu">
                <ul>
                    <li><a href="myinfo.jsp"><i class="fas fa-id-card"></i> Tài khoản của tôi</a></li>
                    <li><a href="#"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a></li>
                </ul>
            </div>
        </div>
        <a href="giohang.jsp" class="btn-header cart-btn">
            <i class="fas fa-shopping-cart"></i>
            <span>Giỏ hàng</span>
            <span class="cart-badge">2</span> </a>
    </div>
</header>
<nav class="menu-home">
    <ul class="cover-menu">
        <li class="sub-item"> <a href="gomgiadung.jsp">GỐM GIA DỤNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomgiadung.jsp">Ấm chén bác tràng</a></li>
                    <li><a href="gomgiadung.jsp">Bộ bác đĩa bác tràng</a></li>
                    <li><a href="gomgiadung.jsp">Chum ngâm rượu</a></li>
                    <li><a href="gomgiadung.jsp">Dụng cụ nhà tắm</a></li>
                    <li><a href="gomgiadung.jsp">Đèn ngủ</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="gomtrangtri.jsp">GỐM TRANG TRÍ</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomtrangtri.jsp">Bình gốm bát tràng</a></li>
                    <li><a href="gomtrangtri.jsp">Lọ hoa bát tràng</a></li>
                    <li><a href="gomtrangtri.jsp">Dĩa sứ trang trí</a></li>
                    <li><a href="gomtrangtri.jsp">Tượng gốm sứ</a></li>
                    <li><a href="gomtrangtri.jsp">Bình hồ lô</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="gomthocung.jsp">GỐM THỜ CÚNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomthocung.jsp">Bộ đồ thờ đầy đủ</a></li>
                    <li><a href="gomthocung.jsp">Bát hương</a></li>
                    <li><a href="gomthocung.jsp">Mâm bồng</a></li>
                    <li><a href="gomthocung.jsp">Bát nắp</a></li>
                    <li><a href="gomthocung.jsp">Cây đèn nến</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="gomquatang.jsp">GỐM QUÀ TẶNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomquatang.jsp">Bình hút lộc in logo</a></li>
                    <li><a href="gomquatang.jsp">Ấm chén in logo</a></li>
                    <li><a href="gomquatang.jsp">Bình hoa in logo</a></li>
                    <li><a href="gomquatang.jsp">Quà tặng bát đĩa</a></li>
                </ul>
            </div>
        </li>
        <li><a href="tintuc.jsp">TIN TỨC</a></li>
        <li><a href="GioiThieu.jsp">GIỚI THIỆU</a></li>
        <li><a href="lienhe.jsp">LIÊN HỆ</a></li>
        <li><a href="quanlyaccount.jsp">ADMIN CONTROL</a></li>
    </ul>
</nav>

<!--content-->
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="quanlyaccount.jsp"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="#" class="active"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="kho.jsp"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="content">
        <div class="head-title">
            <h1><i class="fas fa-chart-bar"></i> Thống kê bán hàng - Gốm sứ Nông Lâm</h1>
            <p>Doanh thu và số lượng sản phẩm theo năm & tháng</p>
        </div>
        <div class="cover-all-section">
        <section class="filter-section">
            <form>
                <label for="year">Chọn năm:</label>
                <select id="year">
                    <option>2024</option>
                    <option selected>2025</option>
                    <option>2026</option>
                </select>

                <label for="month">Chọn tháng:</label>
                <select id="month">
                    <option>Tất cả</option>
                    <option>Tháng 1</option>
                    <option>Tháng 2</option>
                    <option>Tháng 3</option>
                    <option>Tháng 4</option>
                    <option>Tháng 5</option>
                    <option>Tháng 6</option>
                    <option>Tháng 7</option>
                    <option>Tháng 8</option>
                    <option>Tháng 9</option>
                    <option>Tháng 10</option>
                    <option>Tháng 11</option>
                    <option>Tháng 12</option>
                </select>
            </form>
        </section>

        <section class="summary-section">
            <div class="card">
                <h3>Doanh thu (VNĐ)</h3>
                <p class="value">1,250,000,000</p>
            </div>
            <div class="card">
                <h3>Số đơn hàng</h3>
                <p class="value">4,820</p>
            </div>
            <div class="card">
                <h3>Sản phẩm bán ra</h3>
                <p class="value">12,350</p>
            </div>
        </section>

        <section class="chart-section">
            <h2>Biểu đồ doanh thu theo 12 tháng</h2>
            <div class="chart-bar">
                <div class="bar-wrapper">
                    <div class="bar" style="height:60%;"><span>60%</span></div>
                    <div class="label">Tháng 1</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:75%;"><span>75%</span></div>
                    <div class="label">Tháng 2</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:85%;"><span>85%</span></div>
                    <div class="label">Tháng 3</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:55%;"><span>55%</span></div>
                    <div class="label">Tháng 4</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:95%;"><span>95%</span></div>
                    <div class="label">Tháng 5</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:70%;"><span>70%</span></div>
                    <div class="label">Tháng 6</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:80%;"><span>80%</span></div>
                    <div class="label">Tháng 7</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:65%;"><span>65%</span></div>
                    <div class="label">Tháng 8</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:90%;"><span>90%</span></div>
                    <div class="label">Tháng 9</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:75%;"><span>75%</span></div>
                    <div class="label">Tháng 10</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:88%;"><span>88%</span></div>
                    <div class="label">Tháng 11</div>
                </div>
                <div class="bar-wrapper">
                    <div class="bar" style="height:92%;"><span>92%</span></div>
                    <div class="label">Tháng 12</div>
                </div>
            </div>
        </section>

        <section class="table-section">
            <h2>Bảng thống kê chi tiết năm 2024</h2>
            <table>
                <thead>
                <tr>
                    <th>Tháng</th>
                    <th>Doanh thu (VNĐ)</th>
                    <th>Số đơn</th>
                    <th>Sản phẩm bán</th>
                </tr>
                </thead>
                <tbody>
                <tr><td>1</td><td>80,000,000</td><td>400</td><td>950</td></tr>
                <tr><td>2</td><td>95,000,000</td><td>430</td><td>980</td></tr>
                <tr><td>3</td><td>110,000,000</td><td>470</td><td>1,050</td></tr>
                <tr><td>4</td><td>75,000,000</td><td>390</td><td>890</td></tr>
                <tr><td>5</td><td>125,000,000</td><td>520</td><td>1,200</td></tr>
                <tr><td>6</td><td>98,000,000</td><td>450</td><td>1,000</td></tr>
                <tr><td>7</td><td>105,000,000</td><td>480</td><td>1,050</td></tr>
                <tr><td>8</td><td>85,000,000</td><td>420</td><td>960</td></tr>
                <tr><td>9</td><td>115,000,000</td><td>500</td><td>1,120</td></tr>
                <tr><td>10</td><td>95,000,000</td><td>460</td><td>1,000</td></tr>
                <tr><td>11</td><td>108,000,000</td><td>480</td><td>1,100</td></tr>
                <tr><td>12</td><td>120,000,000</td><td>510</td><td>1,150</td></tr>
                </tbody>
            </table>
        </section>
        </div>
    </div>
</div>

<!--footer-->
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

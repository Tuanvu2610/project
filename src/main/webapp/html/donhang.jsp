<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đơn hàng</title>
    <link rel="stylesheet" href="../css/donhang.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">

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

<!-- content -->
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="quanlyaccount.jsp"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="thongke.jsp"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="kho.jsp"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="#" class="active"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="content">

        <div class="head-title">
            <h1><i class="fas fa-receipt"></i>Đơn hàng</h1>
        </div>

        <div class="order-tabs">
            <button class="active">Chưa giao</button>
            <button>Đang vận chuyển</button>
            <button>Đã giao</button>
            <div class="order-summary">Đơn hàng đã hoàn thành: <b>36000</b></div>
        </div>

        <table class="order-table">
            <thead>
            <tr>
                <th>Mã đơn hàng</th>
                <th>Hàng hóa</th>
                <th>Số lượng</th>
                <th>Số tiền</th>
                <th>Người nhận</th>
                <th>Ngày đặt</th>
                <th>Trạng thái</th>
            </tr>
            </thead>

            <tbody>

            <tr class="order-row">
                <td>3601</td>
                <td class="item-name">Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                <td class="center">1</td>
                <td class="money">2.300.000đ</td>
                <td class="receiver">Nguyễn Văn A</td>
                <td class="center">30/11 - 2/12</td>
                <td class="status">
                    <button class="btn-loading">Đang xử lý</button>
                </td>
            </tr>

            <tr class="order-row">
                <td>3602</td>
                <td class="item-name">Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                <td class="center">1</td>
                <td class="money">2.300.000đ</td>
                <td class="receiver">Trần Thị B</td>
                <td class="center">30/11 - 2/12</td>
                <td class="status">
                    <button class="btn-confirm">Xác nhận</button>
                </td>
            </tr>

            <tr class="order-row">
                <td>3603</td>
                <td class="item-name">Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                <td class="center">1</td>
                <td class="money">2.300.000đ</td>
                <td class="receiver">Lê Văn C</td>
                <td class="center">30/11 - 2/12</td>
                <td class="status">
                    <button class="btn-confirm">Xác nhận</button>
                </td>
            </tr>

            <tr class="order-row">
                <td>3604</td>
                <td class="item-name">Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                <td class="center">1</td>
                <td class="money">2.300.000đ</td>
                <td class="receiver">user1203</td>
                <td class="center">30/11 - 2/12</td>
                <td class="status">
                    <button class="btn-confirm">Xác nhận</button>
                </td>
            </tr>

            <tr class="order-row">
                <td>3605</td>
                <td class="item-name">Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                <td class="center">1</td>
                <td class="money">2.300.000đ</td>
                <td class="receiver">Tên Đại</td>
                <td class="center">30/11 - 2/12</td>
                <td class="status">
                    <button class="btn-loading">Đang xử lý</button>
                </td>
            </tr>

            <tr class="order-row">
                <td>3606</td>
                <td class="item-name">Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                <td class="center">1</td>
                <td class="money">2.300.000đ</td>
                <td class="receiver">Chưa Nghĩ Ra</td>
                <td class="center">30/11 - 2/12</td>
                <td class="status">
                    <button class="btn-loading">Đang xử lý</button>
                </td>
            </tr>

            </tbody>
        </table>
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
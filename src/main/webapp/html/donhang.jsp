<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đơn hàng</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <style>

            body{
                font-family: Arial, Helvetica, sans-serif;
                background:#f7f7f7;
                margin:0;
                padding:0;
            }

            .container{
                display:flex;
                min-height:100vh;
            }

            /* ===== SIDEBAR ===== */
            .sidebar{
                width:25%;
                background:#0d8e02c7;
                color:#fff;
                padding:20px 0;
            }

            .title{
                text-align:center;
                padding-bottom:20px;
                border-bottom:1px solid rgba(255,255,255,0.2);
            }

            .nav-links{
                list-style:none;
                padding:15px;
            }

            .nav-links a{
                display:flex;
                gap:10px;
                padding:16px 18px;
                color:#fff;
                text-decoration:none;
                border-radius:8px;
            }

            .nav-links a.active,
            .nav-links a:hover{
                background:rgba(255,255,255,0.15);
            }

            .content-wrapper{
                background:#fff;
                border-radius:16px;
                padding:24px;
                box-shadow:0 8px 24px rgba(0,0,0,.06);
            }

            .content{
                flex:1;
                padding:25px;
            }

            /* TITLE */
            .head-title h1{
                font-size:26px;
                margin-bottom:20px;
                display:flex;
                align-items:center;
                gap:10px;
            }

            /* ORDER TABS */
            .order-tabs{
                display:flex;
                align-items:center;
                gap:12px;
                background:#eee;
                padding:12px 16px;
                border-radius:14px;
                margin-bottom:20px;
            }

            .order-tabs .tab{
                padding:8px 20px;
                border-radius:20px;
                border:none;
                background:#ddd;
                font-weight:600;
                cursor:pointer;
            }

            .order-tabs .tab.active{
                background:#3b82f6;
                color:#fff;
            }

            .order-summary{
                margin-left:auto;
                font-weight:600;
            }

            /* TABLE */
            .order-table {
                width: 100%;
                border-collapse: collapse;
                table-layout: auto;
            }

            .item-name {
                white-space: normal;
                word-break: break-word;
            }

            .order-table th{
                text-align:left;
                padding:14px 12px;
                border-bottom:2px solid #e5e5e5;
            }

            .order-table td{
                padding:16px 12px;
                border-bottom:1px solid #eee;
            }

            .center{ text-align:center; }
            .money{ font-weight:700; }
            .item-name{ font-weight:600; }
            .receiver{ font-style:italic; }

            /* STATUS CELL */
            .status{
                position:relative;
            }

            /* BUTTONS – TRẠNG THÁI */
            .status button,
            .status span{
                padding:6px 16px;
                border-radius:18px;
                font-size:13px;
                font-weight:600;
                border:none;
                min-width: 120px;
            }

            .btn-processing{
                background:#ef4444;
                color:#fff;
                cursor:pointer;
            }

            .btn-shipping{
                background:#3b82f6;
                color:#fff;
                cursor:default;
            }

            .btn-cancelled{
                background:#9ca3af;
                color:#fff;
            }

            /* ACTION MENU */
            .action-menu{
                position:absolute;
                top:40px;
                right:0;
                background:#fff;
                padding:10px;
                border-radius:12px;
                box-shadow:0 4px 12px rgba(0,0,0,.1);
                display:none;
                z-index:100;
                width:160px;
            }

            .action-menu button{
                width:100%;
                margin-bottom:6px;
                padding:6px;
                border-radius:8px;
                font-weight:600;
                cursor:pointer;
            }

            /* ACTION BUTTONS */
            .btn-confirm{
                background:#22c55e;
                color:#fff;
            }

            .btn-cancel{
                background:#ef4444;
                color:#fff;
            }

            /* CANCEL BOX */
            .cancel-box{
                display:none;
                margin-top:8px;
            }

            .cancel-box input{
                width:100%;
                padding:6px;
                border-radius:8px;
                border:1px solid #ddd;
                margin-bottom:6px;
            }

            .cancel-box button{
                width:100%;
                background:#ef4444;
                color:#fff;
                border-radius:8px;
            }
        </style>
</head>

<body>
<!--header-->
<header class="pageHome-header" id="header-home">

    <a href="${pageContext.request.contextPath}/home" class="text-header">
        <span class="text-nonglam">NÔNG LÂM</span>
        <span class="text-gomsu">GỐM SỨ TINH HOA</span>
    </a>

    <form action="${pageContext.request.contextPath}/product-search" method="get" class="search-header">
        <input type="text" name="keyword" placeholder="Tìm sản phẩm..." value="${param.keyword}">
        <button class="search-btn" type="submit"><i class="fas fa-search"></i></button>
    </form>


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
            <li><a href="quanlyaccount.jsp"><i class="fas fa-users"></i> Quản lý User</a></li>
            <li><a href="thongke.jsp"><i class="fas fa-chart-bar"></i> Thống kê</a></li>
            <li><a href="kho.jsp"><i class="fas fa-house-user"></i> Kho</a></li>
            <li><a class="active"><i class="fas fa-receipt"></i> Đơn hàng</a></li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> Hậu mãi</a></li>
        </ul>
    </div>

    <div class="content">
        <div class="content-wrapper">

            <!-- TITLE -->
            <div class="head-title">
                <h1><i class="fas fa-receipt"></i> Đơn hàng</h1>
            </div>

            <!-- TABS -->
            <div class="order-tabs">
                <button class="tab active" data-tab="pending">Chưa giao</button>
                <button class="tab" data-tab="shipping">Đang vận chuyển</button>
                <button class="tab" data-tab="done">Đã giao</button>

                <div class="order-summary">
                    Đơn hàng đã hoàn thành: <b>${doneCount}</b>
                </div>
            </div>

            <!-- TABLE -->
            <table class="order-table">
                <thead>
                <tr>
                    <th>Mã đơn</th>
                    <th>Hàng hóa</th>
                    <th>Số lượng</th>
                    <th>Số tiền</th>
                    <th>Người nhận</th>
                    <th>Ngày</th>
                    <th>Trạng thái</th>
                </tr>
                </thead>

                <!-- ===== CHƯA GIAO ===== -->
                <tbody id="pending">
                <c:forEach var="o" items="${pendingOrders}">
                    <tr>
                        <td>${o.id}</td>

                        <td class="item-name">
                            <a href="${pageContext.request.contextPath}/order-detail?id${o.id}">Xem chi tiết</a>
                        </td>
                        <td class="center">${o.totalQuantity}</td>
                        <td class="money">
                            <fmt:formatNumber value="${o.totalAmount}" type="number"/>đ
                        </td>
                        <td class="receiver">${o.receiverName}</td>
                        <td class="center">
                            <fmt:formatDate value="${o.createdAt}" pattern="dd/MM/yyyy"/>
                        </td>

                        <td class="status">
                            <button type="button" class="btn-processing"
                                    onclick="openActionMenu(this, event)">
                                Chờ xử lý
                            </button>

                            <div class="action-menu">

                                <!-- CONFIRM -->
                                <form action="${pageContext.request.contextPath}/order" method="post">
                                    <input type="hidden" name="orderId" value="${o.id}">
                                    <input type="hidden" name="action" value="CONFIRM">
                                    <button type="submit" class="btn-confirm">✔ Xác nhận</button>
                                </form>

                                <!-- CANCEL -->
                                <form action="${pageContext.request.contextPath}/order" method="post">
                                    <input type="hidden" name="orderId" value="${o.id}">
                                    <input type="hidden" name="action" value="CANCEL">
                                    <input type="text" name="reason" placeholder="Lý do hủy...">
                                    <button type="submit" class="btn-cancel">✖ Hủy</button>
                                </form>

                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

                <!-- ===== ĐANG VẬN CHUYỂN ===== -->
                <tbody id="shipping" style="display:none">
                <c:forEach var="o" items="${shippingOrders}">
                    <tr>
                        <td>${o.id}</td>
                        <td class="item-name">
                            <a href="${pageContext.request.contextPath}/order-detail?id=${o.id}">
                                Xem chi tiết
                            </a>
                        </td>
                        <td class="center">${o.totalQuantity}</td>
                        <td class="money">
                            <fmt:formatNumber value="${o.totalAmount}" type="number"/>đ
                        </td>
                        <td class="receiver">${o.receiverName}</td>
                        <td class="center">
                            <fmt:formatDate value="${o.createdAt}" pattern="dd/MM/yyyy"/>
                        </td>
                        <td><span class="status shipping">Đang giao</span></td>
                    </tr>
                </c:forEach>
                </tbody>

                <!-- ===== ĐÃ GIAO ===== -->
                <tbody id="done" style="display:none">
                <c:forEach var="o" items="${doneOrders}">
                    <tr>
                        <td>${o.id}</td>
                        <td class="item-name">
                            <a href="${pageContext.request.contextPath}/order-detail?id=${o.id}">
                                Xem chi tiết
                            </a>
                        </td>
                        <td class="center">${o.totalQuantity}</td>
                        <td class="money">
                            <fmt:formatNumber value="${o.totalAmount}" type="number"/>đ
                        </td>
                        <td class="receiver">${o.receiverName}</td>
                        <td class="center">
                            <fmt:formatDate value="${o.createdAt}" pattern="dd/MM/yyyy"/>
                        </td>
                        <td><span class="status done">Đã giao</span></td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
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

<script>
    /* TAB CHUYỂN TRẠNG THÁI */
    document.querySelectorAll('.tab').forEach(tab => {
        tab.addEventListener('click', function () {

            // đổi active tab
            document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
            this.classList.add('active');

            // ẩn toàn bộ tbody
            document.querySelectorAll('tbody[id]').forEach(tb => {
                tb.style.display = 'none';
            });

            // hiện tbody tương ứng
            const target = document.getElementById(this.dataset.tab);
            if (target) target.style.display = '';
        });
    });

    /* MENU TRẠNG THÁI */
    /* ===== MỞ MENU ===== */
    function openActionMenu(btn, e) {
        e.preventDefault();
        e.stopPropagation();

        closeAllMenus();

        const menu = btn.parentElement.querySelector('.action-menu');
        menu.style.display = 'block';
        // Đánh dấu menu đang mở
        btn.parentElement.classList.add('menu-open');
    }

    /* ===== ĐÓNG MENU ===== */
    function closeAllMenus() {
        document.querySelectorAll('.action-menu').forEach(menu => {
            menu.style.display = 'none';
        });
        document.querySelectorAll('.menu-open').forEach(el => {
            el.classList.remove('menu-open');
        });
    }

    /* ===== CLICK NGOÀI STATUS → ĐÓNG ===== */
    document.addEventListener('click', function (e) {
        // nếu click KHÔNG nằm trong .status
        if (!e.target.closest('.status')) {
            closeAllMenus();
        }
    });

    /* ===== XÁC NHẬN ===== */
    function confirmOrder(btn) {
        if (!confirm("Xác nhận chuyển sang vận chuyển?")) return;

        const statusCell = btn.closest('.status');
        statusCell.innerHTML = `
        <button class="btn-shipping" disabled> Chờ vận chuyển </button>
`;
    }

    /* ===== HỦY ===== */
    function openCancelBox(btn, e) {
        e.preventDefault();
        e.stopPropagation(); // 🔥 CHẶN DOCUMENT CLICK

        const statusCell = btn.closest('.status');
        statusCell.querySelector('.cancel-box').style.display = 'block';
    }

    function cancelOrder(btn) {
        const statusCell = btn.closest('.status');
        const reason = statusCell.querySelector('input').value.trim();

        if (!reason) {
            alert("Vui lòng nhập lý do hủy");
            return;
        }

        if (!confirm("Bạn chắc chắn muốn hủy đơn?")) return;

        statusCell.innerHTML = `
        <span class="btn-cancelled">Đã hủy</span>
    `;
    }
</script>

</body>
</html>
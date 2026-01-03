<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dangnhap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

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
        <c:choose>
            <c:when test="${not empty sessionScope.auth}">
                <div class="user">
                    <button class="btn-header">
                        <i class="fas fa-user"></i>
                        <span class="username">Xin chào, ${sessionScope.auth.firstname}</span>
                        <i class="fas fa-caret-down"></i>
                    </button>
                    <div class="user-menu">
                        <a href="tai-khoan">Tài khoản</a>
                        <a href="orders">Đơn hàng</a>
                        <a href="logout">Đăng xuất</a>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <button class="btn-header"><a href="login"><i class="fas fa-user"></i> Đăng nhập</a></button>
            </c:otherwise>
        </c:choose>
        <a href="giohang.jsp" class="btn-header cart-btn">
            <i class="fas fa-shopping-cart"></i>
            <span>Giỏ hàng</span>
            <span class="cart-badge">2</span> </a>
    </div>
</header>
<nav class="menu-home">
    <ul class="cover-menu">
        <c:forEach var="t" items="${parents}">
            <li class="sub-item"> <a href="${t.link}">${t.name}</a>
                <div class="sub-menu">
                    <ul class="hover">
                        <c:forEach var="c" items="${children[t.id]}">
                            <li><a href="${c.link}?tab=${c.datatarget}">${c.name}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </li>
        </c:forEach>
    </ul>
</nav>
<!--body-->
<section class="body-info">
    <div class="container-info">
        <div class="cover-left-page">
            <div class="info-avatar">
                <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                <div class="name">
                    <p>${sessionScope.auth.name}</p>
                    <p>${sessionScope.auth.phone}</p>
                </div>
            </div>
            <ul class="nav-links">
                <li><a href="#" class="active"><i class="fa fa-user user-icon"></i>
                    <span>Thông tin của tôi</span></a></li>
                <li><a href="trangthaidon.jsp"><i class="fa fa-shopping-bag order-icon"></i>
                    <span>Đơn mua</span></a></li>
            </ul>
        </div>
        <div class="cover-right-page">
            <div class="title-info">
                <p>Hồ sơ của tôi</p>
                <p class="style-title-info">Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
            </div>
            <form action="tai-khoan" method="post">
                <div class="cover-info">
                    <div class="left-info">
                        <div class="cover-username style-lable">
                            <label>Tên đăng nhập: </label>
                            <input type="text" class="style-input" name="username" id="" value="${sessionScope.auth.username}" readonly>
                        </div>
                        <div class="cover-name style-lable">
                            <label>Tên: </label>
                            <input type="text" class="style-input" name="name" id="" value="${sessionScope.auth.name}">
                        </div>
                        <div class="cover-email style-lable">
                            <label>Email: </label>
                            <input type="text" class="style-input" name="email" id="" value="${sessionScope.auth.email}">
                        </div>
                        <div class="cover-phone style-lable">
                            <label>Phone: </label>
                            <input type="text" class="style-phone" name="phone" id="" value="${sessionScope.auth.phone}">
                        </div>
                        <div class="cover-phone style-lable">
                            <label>Giới tính: </label>
                            <div class="cover-sex">
                                <div>
                                    <label> Nam</label>
                                    <input type="radio" class="style-radio" name="sex" value="Male"${sessionScope.auth.sex == "Male" ? "checked" : ""}>
                                </div>
                                <div>
                                    <label> Nu</label>
                                    <input type="radio" class="style-radio" name="sex" value="Female"${sessionScope.auth.sex == "Female" ? "checked" : ""}>
                                </div>
                            </div>
                        </div>
                        <div class="btn-save">
                            <button>Lưu</button>
                        </div>
                    </div>
                    <div class="right-info">
                        <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                        <button>Thay đổi</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

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
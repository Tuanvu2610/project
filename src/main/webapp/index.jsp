<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dangnhap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ctsanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/bootstrap-icons.min.css">

</head>

<body>
<!--header-->
<header class="pageHome-header" id="header-home">
    <a href="#" class="text-header">
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
                        <span class="username">Xin chào, ${sessionScope.auth.username}</span>
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
        <a href="html/giohang.jsp" class="btn-header cart-btn">
            <i class="fas fa-shopping-cart"></i>
            <span>Giỏ hàng</span>
            <span class="cart-badge">0</span> </a>
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
<div class="icon-page">
    <a href="https://zalo.me/" target="_blank" class="icon-zalo style-icon">
        <span class="text">Chat Zalo</span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/9/91/Icon_of_Zalo.svg" alt="Zalo">
    </a>
</div>

<div class="icon-page">
    <a href="#" class="icon-phone style-icon">
        <span class="text">Phone: 0987.654.321</span>
        <i class="fa-solid fa-phone" style="padding-right: 3px;"></i>
    </a>
</div>
<!-- body -->
<section class="info-home">
    <div class="left-pageinfo">
        <div class="title-left">
            <p class="title-text">GỐM SỨ NÔNG LÂM</p>
            <p class="bold-text">TINH HOA TỪ LÀNG NGHỀ VIỆT</p>
        </div>
        <div class="content-left">
            <p style="font-size: 20px;">Khám phá thế giới gốm sứ đa dạng,
                nơi mỗi sản phẩm được sinh ra để mang lại vẻ đẹp và sự ấm cúng cho ngôi nhà của bạn.
                <span style="color: #0a8300; font-weight: 700;">GỐM SỨ</span> chuyên cung cấp các mặt hàng gốm sứ
                chọn lọc, từ đồ dùng nhà bếp tiện ích,
                bộ đồ ăn sang trọng, đến các vật phẩm trang trí độc đáo.
            </p>
        </div>
        <div class="commit-item">
            <div class="cover-commit">
                <p class="bold">100%</p>
                <p>Hàng chính hãng</p>
            </div>
            <div class="cover-commit">
                <p class="bold">2000+</p>
                <p>Đa dạng sản phẩm</p>
            </div>
            <div class="cover-commit">
                <p class="bold">1 ĐỔI 1</p>
                <p>Hư hại bên vận chuyển</p>
            </div>
        </div>
        <div class="btn-info">
            <button class="style-btn" style="background-color: #0a8300; color: #fff;">
                Khám phá sản phẩm
            </button>
            <button class="style-btn " style="color: #0a8300; background: unset;">
                Hostline:
            </button>
        </div>
    </div>
    <div class="right-pageinfo">
        <img src="img/gom-su-bach-hoa-kutani-removebg-preview.png" alt="">
    </div>
</section>
<section class="product-home">
    <div class="container">
        <div class="cover-choose">
            <div class="title-choose">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS445DoH638Vr8i8MrMUm2EUT_svl0hIQNhfA&s"
                     alt="">
                <span>Bình hoa</span>
                <p>+99 sản phẩm</p>
            </div>
        </div>
        <div class="cover-choose">
            <div class="title-choose">
                <img src="https://gomsubattrang.vn/uploads/data/20/files/products/bo-bat-dia-bat-trang-cao-cap/bo-bat-dia-su-cao-cap-bat-trang-qua-tang-gom-su/bo-bat-dia-su-cao-cap-bat-trang-qua-tang-gom-su1.png"
                     alt="">
                <span>Bát dĩa</span>
                <p>+99 sản phẩm</p>
            </div>
        </div>
        <div class="cover-choose">
            <div class="title-choose" style="align-items: center;">
                <img src="https://gomdep.vn/wp-content/uploads/2019/11/binh-hoa-su-trang.png"
                     alt="">
                <span>Bình hoa</span>
                <p>+99 sản phẩm</p>
            </div>
        </div>
        <div class="cover-choose">
            <div class="title-choose">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDJFpuy-etJzc1F4PyvB-vm91A8svh6XAPfQ&s"
                     alt="">
                <span>Ấm trà</span>
                <p>+99 sản phẩm</p>
            </div>
        </div>
        <div class="cover-choose">
            <div class="title-choose">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIa1FzzBnhTLvPKrI4yezwCnJNN3Ah0z4DPg&s"
                     alt="">
                <span>Ly sứ</span>
                <p>+99 sản phẩm</p>
            </div>
        </div>
    </div>
</section>
<section id="img-home">
    <div class="container">
        <div class="hover-img"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoTOhROSQfBeeh6So9piYADBWfz7T4fLFw_Q&s"
                                    alt=""></div>
        <div class="hover-img"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHhuLP36jtq2KTCoKCRIX8-VMnWRBtvDSeyw&s"
                                    alt=""></div>
    </div>
</section>
<section id="productInHome">
    <div class="style-container">
        <p class="style-title"><span style="color: #FFEA00;">⚡</span>Sản phẩm giảm giá sốc</p>
        <div id="outstanding-product-list" class="cover">
            <button class="slide-btn prev" onclick="slideLeft()">❮</button>
            <button class="slide-btn next" onclick="slideRight()">❯</button>
            <div class="slider-wrapper hiden">
                <div class="product-list" id="slider">
                    <c:forEach var="p" items="${list}">
                        <a href="chitietsanpham?id=${p.id}">
                            <div class="product-card">
                                <c:if test="${p.percent > 0}">
                                    <span class="sale-pecent">-${p.percent}%</span>
                                </c:if>
                                <img src="${p.img}" alt="" class="product-img">
                                <h3 class="product-name padding style-name">${p.name}</h3>
                                <div class="product-price">
                                    <span class="price-origin ">
                                        <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>₫
                                    </span>
                                    <span class="price-sale">
                                        <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                    </span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="cover-other-product">
    <div class="other-product">
        <div class="cover-other">
            <div class="title-other">
                <img src="https://png.pngtree.com/png-clipart/20241115/original/pngtree-a-set-of-dishes-png-image_17080300.png"
                     alt="">
                <p>BÁT ĐĨA BÁT TRÀNG</p>
            </div>
        </div>
    </div>
    <div class="other-product-home style-container style-other">
        <p class="style-other-title">Bát đĩa</p>
        <div id="batdia-product-list" class="cover">
            <button class="slide-btn prev" onclick="slideLeft()">❮</button>
            <button class="slide-btn next" onclick="slideRight()">❯</button>
            <div class="slider-wrapper hiden">
                <div class="product-list" id="slider">
                    <c:forEach var="p" items="${listbatDia}">
                        <a href="chitietsanpham?id=${p.id}">
                            <div class="product-card">
                                <c:if test="${p.percent > 0}">
                                    <span class="sale-pecent">-${p.percent}%</span>
                                </c:if>
                                <img src="${p.img}" alt="" class="product-img">
                                <h3 class="product-name padding style-name">${p.name}</h3>
                                <div class="product-price">
                                    <span class="price-origin ">
                                        <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>₫
                                    </span>
                                    <span class="price-sale">
                                        <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                    </span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<!--Modal-->--%>
<%--<!--dang nhap-->--%>
<%--<div id="loginModal" class="modal">--%>
<%--    <div class="modal-content">--%>
<%--        <a href="#" class="close-btn">&times;</a>--%>
<%--        <h1 class="head" id="form-title">Đăng nhập</h1>--%>
<%--        <div class="section active" id="signin">--%>
<%--            <div class="username-section style-section">--%>
<%--                <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">--%>
<%--                <input class="input-style" type="text" name="dn_username" placeholder="Tên đăng nhập hoặc Email">--%>
<%--            </div>--%>
<%--            <div class="password-section style-section">--%>
<%--                <img src="https://www.svgrepo.com/show/535485/lock-closed.svg" alt="">--%>
<%--                <input class="input-style" id="toggle" name="dn_pass" type="password" placeholder="Mật khẩu">--%>
<%--                <span class="toggle-password" onclick="togglePassword('toggle', this)">🐵</span>--%>
<%--            </div>--%>
<%--            <button class="btn">Đăng nhập</button>--%>
<%--            <p class="forgot-pass"><a href="#forgotModal">Quên mật khẩu?</a></p>--%>
<%--        </div>--%>
<%--        <div class="select">--%>
<%--            <p>Hoặc đăng nhập bằng</p>--%>
<%--            <div class="link">--%>
<%--                <img src="https://www.svgrepo.com/show/354981/facebook-option.svg" alt="">--%>
<%--                <img src="https://www.svgrepo.com/show/475656/google-color.svg" alt="">--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="foot"><a href="#signupModal">Đăng ký</a></div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!--quen mat khau-->--%>
<%--<div id="forgotModal" class="modal">--%>
<%--    <div class="modal-content">--%>
<%--        <a href="#" class="close-btn">&times;</a>--%>
<%--        <h1 class="head">Quên mật khẩu</h1>--%>
<%--        <div class="section active" id="forgot">--%>
<%--            <p style="text-align:center;margin-bottom: 10px;color: #0a8300;font-weight: bold">--%>
<%--                Nhập email để đặt lại mật khẩu--%>
<%--            </p>--%>
<%--            <div class="username-section style-section">--%>
<%--                <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">--%>
<%--                <input class="input-style" name="restore_email" type="email" placeholder="Email khôi phục">--%>
<%--            </div>--%>
<%--            <button class="btn">Gửi yêu cầu khôi phục</button>--%>
<%--            <div class="foot"><a href="#loginModal">Quay lại Đăng nhập</a></div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!--dang ky-->--%>
<%--<div id="signupModal" class="modal">--%>
<%--    <div class="modal-content">--%>
<%--        <a href="#" class="close-btn">&times;</a>--%>
<%--        <h1 class="head">Đăng ký</h1>--%>
<%--        <div class=name-section>--%>
<%--            <div class="lastname-section name-style">--%>
<%--                <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">--%>
<%--                <input class="input-style" name="lastname" type="text" placeholder="Họ">--%>
<%--            </div>--%>
<%--            <div class="firstname-section name-style">--%>
<%--                <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">--%>
<%--                <input class="input-style" name="firstname" type="text" placeholder="Tên">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="username-section style-section">--%>
<%--            <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">--%>
<%--            <input class="input-style" name="dk_username" type="text" placeholder="Tên tài khoản hoặc Email">--%>
<%--        </div>--%>
<%--        <div class="password-section style-section">--%>
<%--            <img src="https://www.svgrepo.com/show/535485/lock-closed.svg" alt="">--%>
<%--            <input class="input-style" name="dk_pass" type="password" placeholder="Mật khẩu">--%>
<%--        </div>--%>
<%--        <div class="confirm-section style-section">--%>
<%--            <img src="https://www.svgrepo.com/show/93282/verify.svg" alt="">--%>
<%--            <input class="input-style" name="confirm_pass" type="password" placeholder="Xác nhận mật khẩu">--%>
<%--        </div>--%>
<%--        <button class="btn">Đăng ký</button>--%>
<%--        <div class="foot"><a href="#loginModal">Quay lại Đăng nhập</a></div>--%>
<%--    </div>--%>
<%--</div>--%>

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
<script src="js/javascript.js"></script>
</body>
</html>
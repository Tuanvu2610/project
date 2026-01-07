<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gomtrangtri.css">
    <script src="../js/javascript.js"></script>
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

<!-- content -->
<section class="content">
    <div class="cover-outstanding cursor">
        <p>Sản phẩm đang giảm giá</p>
        <div class="slider">
            <div id="outstanding-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/374/750/products/z5938234770383-a781d1083307605ce07327ca1e0df85e.jpg?v=1729668224600" alt="" class="product-img">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình hút lộc thuận buồm xuôi gió</h3>
                        <p class="price-origin padding">800.000đ</p>
                        <p class="product-price padding">600.000đ</p>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://decopro.vn/wp-content/uploads/2019/10/Bo-am-tra-gom-chu-dau-ve-vang-750ml-View4.jpg" alt="" class="product-img">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                            <h3 class="product-name padding style-name">Bộ ấm chén gốm Chu Đậu vẽ vàng Quê Hương</h3>
                        <p class="price-origin padding">3.000.000đ</p>
                        <p class="product-price padding">2.200.000đ</p>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://decopro.vn/wp-content/uploads/2018/04/Binh-gom-song-vang-decor-view1.jpg" alt="" class="product-img">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Gốm Sứ Decor Sóng Vàng</h3>
                        <p class="price-origin padding">1.800.000đ</p>
                        <p class="product-price padding">1.600.000đ</p>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://cdn.hstatic.net/products/200000532849/avatar_8ad52fde5ccf405592371c99981408cb.png?v=1763636269158" alt="" class="product-img">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tô trái cây Khổng Tước - Trang trí vàng</h3>
                        <p class="price-origin padding">8.400.000đ</p>
                        <p class="product-price padding">8.240.000đ</p>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomsuhcm.com/wp-content/uploads/2020/10/luc-binh-men-ran-cong-dao-160-cm.jpg" alt="" class="product-img">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Lục bình Men Rạn Công Đào 160cm Bát Tràng</h3>
                        <p class="price-origin padding">45.500.000đ</p>
                        <p class="product-price padding">45.000.000đ</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
    <!-- Sản phẩm Bình gốm sứ -->
<section>
    <div>
        <p class="style-title">BÌNH GỐM SỨ TRANG TRÍ</p>
        <div class="cover-product cursor">
            <div class="product-list">
                <c:forEach var="p" items="${listBinh}" varStatus="st">
                    <c:if test="${st.count <= 5}">
                        <a href="ctsp.jsp?id=${p.id}">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">
                                        ${p.name}
                                </h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm lục bình-->
<section>
    <div>
        <p class="style-title">LỤC BÌNH SỨ</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listLucBinh}" varStatus="st">
                    <c:if test="${st.count <= 5}">
                        <a href="ctsp.jsp?id=${p.id}">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">
                                        ${p.name}
                                </h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm Tượng -->
<section>
    <div>
        <p class="style-title">TƯỢNG GỐM SỨ</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listTuong}" varStatus="st">
                    <c:if test="${st.count <= 5}">
                        <a href="ctsp.jsp?id=${p.id}">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">
                                        ${p.name}
                                </h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm Tranh -->
<section>
    <div>
        <p class="style-title">TRANH</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listTranh}" varStatus="st">
                    <c:if test="${st.count <= 5}">
                        <a href="ctsp.jsp?id=${p.id}">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">
                                        ${p.name}
                                </h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm Chén Đĩa -->
<section>
    <div>
        <p class="style-title">CHÉN ĐĨA TRANG TRÍ</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listDia}" varStatus="st">
                    <c:if test="${st.count le 5}">
                        <a href="ctsp.jsp">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">${p.name}</h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm Đèn -->
<section>
    <div>
        <p class="style-title">ĐÈN TRANG TRÍ</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listDen}" varStatus="st">
                    <c:if test="${st.count le 5}">
                        <a href="ctsp.jsp">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">${p.name}</h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm Phong Thủy -->
<section>
    <div>
        <p class="style-title">GỐM SỨ PHONG THỦY</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listPhongThuy}" varStatus="st">
                    <c:if test="${st.count le 5}">
                        <a href="ctsp.jsp">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">${p.name}</h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

    <!-- Sản phẩm Phòng Khách -->
<section>
    <div>
        <p class="style-title">TRANG TRÍ PHÒNG KHÁCH</p>

        <div class="cover-product cursor">
            <div class="product-list">

                <c:forEach var="p" items="${listPhongKhach}" varStatus="st">
                    <c:if test="${st.count le 5}">
                        <a href="ctsp.jsp">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                    <div class="quick-view">Xem chi tiết</div>
                                </div>
                                <h3 class="product-name padding style-name">${p.name}</h3>
                                <div class="product-price padding">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

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
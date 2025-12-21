<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="css/gomthocung.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/ctsanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<header class="pageHome-header" id="header-home">

    <a href="index.jsp" class="text-header">
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
        <li class="sub-item"> <a href="gom-tho-cung">GỐM GIA DỤNG</a><i class="bi bi-chevron-down"></i>
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
        <li class="sub-item"><a class="tab" data-target="main-thocung" href="../html/gomthocung.html">GỐM THỜ CÚNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li class="tab" data-target="dotho-page"><a>Bộ đồ thờ đầy đủ</a></li>
                    <li class="tab" data-target="bathuong-page"><a>Bát hương</a></li>
                    <li class="tab" data-target="mambong-page"><a>Mâm bồng</a></li>
                    <li class="tab" data-target="batnap-page"><a>Bát nắp</a></li>
                    <li class="tab" data-target="dennen-page"><a>Cây đèn nến</a></li>
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
<section id="main-thocung" class="content item">
    <div class="description">
        <h1>Sơ lược về Gốm thờ cúng</h1>
        <div class="desc-img">
            <img src="../img/thocung1.png" alt="">
            <img src="../img/thocung2.png" alt="">
        </div>
        <p>
            Gốm thờ cúng là những sản phẩm gốm sứ được chế tác thủ công tinh xảo, có vai trò quan trọng
            trong không gian thờ tự của các gia đình Việt Nam. Chúng có đặc điểm là chất liệu tốt,
            hoa văn mang đậm nét văn hóa truyền thống, được nung ở nhiệt độ cao để đảm bảo độ bền
            và mang ý nghĩa phong thủy, thể hiện lòng thành kính với tổ tiên.
        </p>
    </div>
    <div class="saleproduct-section cursor">
        <p>Sản phẩm đang giảm giá</p>
        <div id="saleproduct-list" class="hidden">
            <button class="slide-btn prev" onclick="slideLeft()">❮</button>
            <button class="slide-btn next" onclick="slideRight()">❯</button>
            <div class="slider-wrapper">
                <div id="slider" class="product-list">
                    <c:forEach var="p" items="${listDiscounts}">
                        <div class="product-card">
                            <c:if test="${p.percent > 0}">
                                <span class="discount-percent">-${p.percent}%</span>
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
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="thocung">
        <p class="style-title">Bộ đồ thờ đầy đủ</p>
        <div class="product-section cursor">
            <div id="dotho-list" class="product-list hidden">
                <c:forEach var="p" items="${listDoTho}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Bát hương</p>
        <div class="product-section cursor">
            <div id="bathuong-list" class="product-list hidden">
                <c:forEach var="p" items="${listBatHuong}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Mâm Bồng</p>
        <div class="product-section cursor">
            <div id="mambong-list" class="product-list hidden">
                <c:forEach var="p" items="${listMamBong}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Bát Nắp</p>
        <div class="product-section cursor">
            <div id="batnap-list" class="product-list hidden">
                <c:forEach var="p" items="${listBatNap}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Cây Đèn Nến</p>
        <div class="product-section cursor">
            <div id="dennen-list" class="product-list hidden">
                <c:forEach var="p" items="${listDenNen}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

<!--bo do tho day du-->
<section id="dotho-page" class="item" style="display: none">
    <div class="dotho-detail product-detail">
        <div class="dotho-desc product-desc">
            <div class="title-desc">
                <h1>Bộ Đồ Thờ Cúng: Nơi Kết Nối Âm Dương, Biểu Tượng Lòng Thành Kính"</h1>
                <p><span style="font-weight: bold">Bộ Đồ Thờ Cúng</span>
                    là một bộ sưu tập các vật phẩm cúng được bài trí trên bàn thờ tổ tiên, bao gồm các vật phẩm chính
                    như bát hương, đỉnh hạc, mâm bồng, lọ hoa, đèn thờ, kỷ chén và chóe thờ. Mục đích của bộ đồ thờ là
                    để thể hiện lòng thành kính, sự tưởng nhớ đến tổ tiên, và cầu mong bình an, tài lộc cho gia đình.
                </p>
            </div>
            <div class="dotho-img prod-img">
                <img src="../img/dotho.png"
                     alt="">
            </div>
        </div>
        <div id="dothoPage-list" class="product-item">
            <c:forEach var="p" items="${listDoTho}">
                <div class="product-card-item">
                    <img src="${p.img}" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
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
            </c:forEach>
        </div>
    </div>
</section>

<!--bat huong-->
<section id="bathuong-page" class="item" style="display: none">
    <div class="bathuong-detail product-detail">
        <div class="bathuong-desc product-desc">
            <div class="title-desc">
                <h1>Bát Hương: Biểu Tượng Thành Kính Và Vượng Khí Gia Đình</h1>
                <p><span style="font-weight: bold">Bát Hương</span>
                    là vật phẩm thiêng liêng trên bàn thờ, tượng trưng cho lòng thành kính và là nơi kết nối giữa
                    thế giới con người và thế giới tâm linh. Nó thể hiện sự tôn nghiêm của gia chủ, là nơi gửi gắm
                    lòng thành khi thắp hương để tưởng nhớ tổ tiên, cầu bình an, may mắn hoặc thờ phụng các vị thần linh.
                </p>
            </div>
            <div class="bathuong-img prod-img">
                <img src="../img/bathuong.png"
                     alt="">
            </div>
        </div>
        <div id="bathuongPage-list" class="product-item">
            <c:forEach var="p" items="${listBatHuong}">
                <div class="product-card-item">
                    <img src="${p.img}" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
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
            </c:forEach>
        </div>
    </div>
</section>

<!--mam bong-->
<section id="mambong-page" class="item" style="display: none">
    <div class="mambong-detail product-detail">
        <div class="mambong-desc product-desc">
            <div class="title-desc">
                <h1>Mâm Bồng:  Nơi Dâng Trọn Lòng Thành Kính Của Con Cháu"</h1>
                <p><span style="font-weight: bold">Mâm Bồng</span>
                    là vật phẩm thờ cúng quen thuộc, dùng để bày biện lễ vật như hoa quả, bánh kẹo, trầu cau, tiền
                    vàng dâng lên tổ tiên và thần linh. Mâm bồng tượng trưng cho sự sung túc, viên mãn, thể hiện lòng
                    thành kính và biết ơn của gia chủ, thường có hình tròn với đế vững chắc và được làm từ nhiều chất
                    liệu như gốm sứ, đồng, gỗ.
                </p>
            </div>
            <div class="mambong-img prod-img">
                <img src="../img/mambong.png"
                     alt="">
            </div>
        </div>
        <div id="mambongPage-list" class="product-item">
            <c:forEach var="p" items="${listMamBong}">
                <div class="product-card-item">
                    <img src="${p.img}" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
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
            </c:forEach>
        </div>
    </div>
</section>

<!--batnap-->
<section id="batnap-page" class="item" style="display: none">
    <div class="batnap-detail product-detail">
        <div class="batnap-desc product-desc">
            <div class="title-desc">
                <h1>Bát Nắp Thờ Cúng: Đề Cao Lòng Thành Kính, Cầu Mong Sung Túc Viên Mãn"</h1>
                <p><span style="font-weight: bold">Bát Nắp</span>
                    là vật phẩm không thể thiếu trong bộ đồ thờ cúng, thường dùng để đựng trà, nước, gạo, muối hoặc
                    các lễ vật nhỏ dâng lên tổ tiên, thần linh. Bát nắp thể hiện lòng thành kính của gia chủ, sự trọn
                    vẹn trong mâm lễ và cầu mong cho gia đình sự no đủ, sung túc, bình an.
                </p>
            </div>
            <div class="batnap-img prod-img">
                <img src="../img/batnap.png"
                     alt="">
            </div>
        </div>
        <div id="batnapPage-list" class="product-item">
            <c:forEach var="p" items="${listBatNap}">
                <div class="product-card-item">
                    <img src="${p.img}" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
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
            </c:forEach>
        </div>
    </div>
</section>

<!--cay den nen-->
<section id="dennen-page" class="item" style="display: none">
    <div class="dennen-detail product-detail">
        <div class="dennen-desc product-desc">
            <div class="title-desc">
                <h1>Đèn Nến: Thắp Sáng Bàn Thờ Gia Tiên Bằng Ánh Đèn Thiêng Liêng"</h1>
                <p><span style="font-weight: bold">Đèn Nến</span>
                    là vật phẩm quan trọng trên bàn thờ, vừa mang ý nghĩa tâm linh, vừa có ý nghĩa phong thủy. Ánh sáng
                    của đèn nến được coi là cầu nối giữa thế giới người sống và người đã khuất, tượng trưng cho lòng
                    thành kính, biết ơn của con cháu đối với tổ tiên. Về mặt phong thủy, đèn nến, đặc biệt là đèn dầu,
                    đại diện cho hành Hỏa, giúp cân bằng Ngũ hành trên bàn thờ và xua đuổi tà ma, mang lại may mắn và
                    bình an cho gia chủ.
                </p>
            </div>
            <div class="dennen-img prod-img">
                <img src="../img/dennen.png"
                     alt="">
            </div>
        </div>
        <div id="dennenPage-list" class="product-item">
            <c:forEach var="p" items="${listDenNen}">
                <div class="product-card-item">
                    <img src="${p.img}" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
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
            </c:forEach>
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
<script src="js/javascript.js"></script>
</body>
</html>
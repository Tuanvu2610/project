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
<jsp:include page="/header"/>
<!-- content -->
<section id="home-page" class="content item">
    <div class="cover-outstanding">

        <p class="outstanding-title">Sản phẩm đang giảm giá</p>

        <div class="slider-wrapper">

            <!-- MŨI TÊN TRÁI -->
            <button class="nav-btn left" onclick="slideLeft()">&#10094;</button>

            <!-- SLIDER -->
            <div class="slider">
                <div id="outstanding-product-list" class="product-list">
                    <c:forEach items="${discountProducts}" var="p" begin="0" end="3">
                        <a href="chitietsanpham?id=${p.id}">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" alt="${p.name}">
                                </div>

                                <h3 class="style-name">${p.name}</h3>
                                <div class="product-price">
                                <span class="price-origin ">
                                    <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>₫
                                </span>
                                    <span class="price-sale">
                                    <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                                    <a href="AddCart?id=${p.id}&q=1"><i class="fas fa-shopping-cart btn-add-style"></i></a>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>

            <!-- MŨI TÊN PHẢI -->
            <button class="nav-btn right" onclick="slideRight()">&#10095;</button>

        </div>
    </div>
</section>

<!-- ================== BÌNH GỐM ================== -->
<section id="home-page" class="item">
    <p class="style-title">BÌNH GỐM SỨ TRANG TRÍ</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listBinh}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=binhgom-page" class="btn-view-all">Xem tất cả</a>
        </div>
    </div>
</section>

<!-- ================== LỤC BÌNH ================== -->
<section id="home-page" class="item">
    <p class="style-title">LỤC BÌNH TRANG TRÍ</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listLucBinh}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=lucbinh-page"
               class="btn-view-all">
                Xem tất cả
            </a>
        </div>
    </div>
</section>

<!-- ================== TƯỢNG ================== -->
<section id="home-page" class="item">
    <p class="style-title">TƯỢNG GỐM SỨ TRANG TRÍ</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listTuong}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=tuonggom-page"
               class="btn-view-all">
                Xem tất cả
            </a>
        </div>
    </div>
</section>

<!-- ================== TRANH ================== -->
<section id="home-page" class="item">
    <p class="style-title">TRANH GỐM SỨ TRANG TRÍ</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listTranh}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=tranh-page"
               class="btn-view-all">
                Xem tất cả
            </a>
        </div>
    </div>
</section>

<!-- ================== CHÉN – ĐĨA ================== -->
<section id="home-page" class="item">
    <p class="style-title">ẤM CHÉN ĐĨA GỐM SỨ TRANG TRÍ</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listDia}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=diaamchen-page"
               class="btn-view-all">
                Xem tất cả
            </a>
        </div>
    </div>
</section>

<!-- ================== PHONG THỦY ================== -->
<section id="home-page" class="item">
    <p class="style-title">ĐỒ PHONG THỦY GỐM SỨ</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listPhongThuy}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=phongthuy-page"
               class="btn-view-all">
                Xem tất cả
            </a>
        </div>
    </div>
</section>

<!-- ================== PHÒNG KHÁCH ================== -->
<section id="home-page" class="item">
    <p class="style-title">TRANG TRÍ PHÒNG</p>
    <div class="cover-product">
        <div class="product-list">
            <c:forEach var="p" items="${listPhongKhach}" varStatus="st">
                <c:if test="${st.count <= 4}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}" alt="${p.name}">
                                <div class="quick-view">Xem chi tiết</div>
                            </div>

                            <h3 class="style-name">${p.name}</h3>
                            <div class="product-price">
                                <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                                </span>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="view-all-wrap">
            <a href="${pageContext.request.contextPath}/gom-trang-tri?tab=trangtriphong-page"
               class="btn-view-all">
                Xem tất cả
            </a>
        </div>
    </div>
</section>

<section id="binhgom-page" class="item" style="display: none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Bình Gốm Trang Trí – Điểm Nhấn Nghệ Thuật Cho Không Gian Sống
            </h1>

            <p class="binhgom-desc">
                <strong>Bình gốm trang trí</strong>
                là dòng sản phẩm decor cao cấp, được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                mang đậm giá trị nghệ thuật và phong thủy.
                <br><br>
                Với men gốm tinh xảo, họa tiết truyền thống kết hợp hiện đại,
                bình gốm giúp không gian phòng khách, phòng làm việc, sảnh lớn trở nên
                <strong>sang trọng – hài hòa – đẳng cấp</strong>.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH SẢN PHẨM ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listBinh}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="">
                        <h3 class="style-name">${p.name}</h3>
                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<section id="lucbinh-page" class="item" style="display:none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Lục Bình Gốm Sứ – Biểu Tượng Phong Thủy & Thịnh Vượng
            </h1>

            <p class="binhgom-desc">
                <strong>Lục bình gốm sứ</strong>
                là vật phẩm phong thủy truyền thống, thường được trưng bày
                trong phòng khách, đại sảnh hoặc không gian thờ cúng nhằm
                <strong>thu hút tài lộc – giữ vượng khí – mang lại may mắn</strong>.
                <br><br>
                Được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                lục bình sở hữu kiểu dáng cân đối, men gốm cao cấp cùng hoa văn
                tinh xảo, thể hiện sự
                <strong>uy nghi – sang trọng – đẳng cấp</strong>
                cho không gian sống.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH LỤC BÌNH ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listLucBinh}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="${p.name}">
                        <h3 class="style-name">${p.name}</h3>

                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<section id="tuonggom-page" class="item" style="display:none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Tượng Gốm Trang Trí – Giá Trị Nghệ Thuật & Phong Thủy
            </h1>

            <p class="binhgom-desc">
                <strong>Tượng gốm trang trí</strong>
                là dòng sản phẩm nghệ thuật cao cấp, mang ý nghĩa phong thủy sâu sắc,
                thường được trưng bày trong phòng khách, phòng làm việc hoặc không gian thờ cúng.
                <br><br>
                Các mẫu tượng được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                thể hiện hình tượng linh vật, danh nhân, thần tài – phúc – lộc,
                giúp không gian trở nên
                <strong>uy nghi – sang trọng – thu hút vượng khí</strong>.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH TƯỢNG GỐM ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listTuong}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="${p.name}">
                        <h3 class="style-name">${p.name}</h3>

                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<section id="tranh-page" class="item" style="display:none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Tranh Gốm Sứ – Nét Đẹp Truyền Thống & Nghệ Thuật Không Gian
            </h1>

            <p class="binhgom-desc">
                <strong>Tranh gốm sứ</strong>
                là dòng sản phẩm trang trí nghệ thuật cao cấp, kết hợp hài hòa
                giữa giá trị thẩm mỹ và ý nghĩa phong thủy.
                <br><br>
                Được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                tranh gốm mang các họa tiết truyền thống như
                tứ quý, cá chép, phong cảnh làng quê,
                giúp không gian sống trở nên
                <strong>sang trọng – ấm cúng – giàu bản sắc văn hóa</strong>.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH TRANH GỐM ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listTranh}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="${p.name}">
                        <h3 class="style-name">${p.name}</h3>

                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<section id="diaamchen-page" class="item" style="display:none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Đĩa – Ấm – Chén Gốm Sứ: Tinh Hoa Nghệ Thuật & Văn Hóa Trà Việt
            </h1>

            <p class="binhgom-desc">
                <strong>Đĩa, ấm và chén gốm sứ</strong>
                là những vật dụng quen thuộc trong đời sống hằng ngày,
                đồng thời mang giá trị văn hóa và thẩm mỹ cao.
                <br><br>
                Các sản phẩm được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                với lớp men mịn, họa tiết tinh tế,
                phù hợp sử dụng trong gia đình, phòng trà
                hoặc làm quà tặng
                <strong>trang nhã – bền đẹp – giàu ý nghĩa</strong>.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH ĐĨA – ẤM – CHÉN ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listDia}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="${p.name}">
                        <h3 class="style-name">${p.name}</h3>

                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<section id="phongthuy-page" class="item" style="display:none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Gốm Sứ Phong Thủy – Thu Hút Tài Lộc & Vượng Khí
            </h1>

            <p class="binhgom-desc">
                <strong>Gốm sứ phong thủy</strong>
                là dòng sản phẩm mang ý nghĩa tâm linh sâu sắc,
                được nhiều gia đình và doanh nghiệp lựa chọn
                nhằm
                <strong>chiêu tài – hóa giải vận xấu – mang lại bình an</strong>.
                <br><br>
                Các vật phẩm phong thủy được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                thể hiện hình tượng linh vật như
                tỳ hưu, thiềm thừ, long – lân – quy – phụng,
                giúp không gian sống và làm việc trở nên
                <strong>may mắn – thịnh vượng – hài hòa năng lượng</strong>.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH GỐM SỨ PHONG THỦY ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listPhongThuy}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="${p.name}">
                        <h3 class="style-name">${p.name}</h3>

                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<section id="trangtriphong-page" class="item" style="display:none">
    <div class="binhgom-intro-inner">
        <div class="binhgom-content">
            <h1 class="binhgom-title">
                Gốm Trang Trí Phòng Khách – Tạo Điểm Nhấn Sang Trọng Cho Không Gian
            </h1>

            <p class="binhgom-desc">
                <strong>Gốm trang trí phòng khách</strong>
                là dòng sản phẩm decor cao cấp, giúp không gian sinh hoạt chung
                của gia đình trở nên
                <strong>sang trọng – tinh tế – đầy cá tính</strong>.
                <br><br>
                Các sản phẩm được chế tác thủ công từ
                <strong>gốm sứ Bát Tràng</strong>,
                với thiết kế đa dạng như bình gốm, tượng decor,
                đồ trang trí nghệ thuật,
                phù hợp với nhiều phong cách nội thất từ
                <strong>truyền thống đến hiện đại</strong>.
            </p>
        </div>
    </div>

    <!-- ===== DANH SÁCH GỐM TRANG TRÍ PHÒNG KHÁCH ===== -->
    <div class="cover-all-product-item full-width">
        <div class="cover-product-item full-width-grid">
            <c:forEach var="p" items="${listPhongKhach}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="${p.name}">
                        <h3 class="style-name">${p.name}</h3>

                        <div class="product-price">
                            <span class="price-origin">
                                <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>đ
                            </span>
                            <span class="price-sale">
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>đ
                            </span>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</section>


<!--footer-->
<jsp:include page="/common/footer.jsp"/>
<script src="js/javascript.js"></script>

</body>
</html>
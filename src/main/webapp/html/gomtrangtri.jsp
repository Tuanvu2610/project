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
<jsp:include page="/common/header.jsp"/>
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
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
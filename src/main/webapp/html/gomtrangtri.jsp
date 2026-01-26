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
    <div class="cover-outstanding">

        <p class="outstanding-title">Sản phẩm đang giảm giá</p>

        <div class="slider-wrapper">

            <!-- MŨI TÊN TRÁI -->
            <button class="nav-btn left" onclick="slideLeft()">&#10094;</button>

            <!-- SLIDER -->
            <div class="slider">
                <div id="outstanding-product-list" class="product-list">
                    <c:forEach items="${discountProducts}" var="p">
                        <a href="${pageContext.request.contextPath}/ctsp.jsp?id=${p.id}">
                            <div class="product-card">
                                <div class="product-img-wrapper">
                                    <img src="${p.img}" class="product-img">
                                </div>
                                <h3 class="product-name">${p.name}</h3>
                                <p class="price-origin">
                                    <fmt:formatNumber value="${p.price_origin}" type="number"/>đ
                                </p>
                                <p class="product-price">
                                    <fmt:formatNumber value="${p.price_sale}" type="number"/>đ
                                </p>
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
<section>
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
</section>

<!-- ================== LỤC BÌNH ================== -->
<section>
    <p class="style-title">LỤC BÌNH SỨ</p>
    <div class="cover-product cursor">
        <div class="product-list">
            <c:forEach var="p" items="${listLucBinh}" varStatus="st">
                <c:if test="${st.count <= 5}">
                    <a href="ctsp.jsp?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}">
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
</section>

<!-- ================== TƯỢNG ================== -->
<section>
    <p class="style-title">TƯỢNG GỐM SỨ</p>
    <div class="cover-product cursor">
        <div class="product-list">
            <c:forEach var="p" items="${listTuong}" varStatus="st">
                <c:if test="${st.count <= 5}">
                    <a href="ctsp.jsp?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}">
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
</section>

<!-- ================== TRANH ================== -->
<section>
    <p class="style-title">TRANH</p>
    <div class="cover-product cursor">
        <div class="product-list">
            <c:forEach var="p" items="${listTranh}" varStatus="st">
                <c:if test="${st.count <= 5}">
                    <a href="ctsp.jsp?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}">
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
</section>

<!-- ================== CHÉN – ĐĨA ================== -->
<section>
    <p class="style-title">CHÉN ĐĨA TRANG TRÍ</p>
    <div class="cover-product cursor">
        <div class="product-list">
            <c:forEach var="p" items="${listDia}" varStatus="st">
                <c:if test="${st.count <= 5}">
                    <a href="ctsp.jsp?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}">
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
</section>

<!-- ================== PHONG THỦY ================== -->
<section>
    <p class="style-title">GỐM SỨ PHONG THỦY</p>
    <div class="cover-product cursor">
        <div class="product-list">
            <c:forEach var="p" items="${listPhongThuy}" varStatus="st">
                <c:if test="${st.count <= 5}">
                    <a href="ctsp.jsp?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}">
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
</section>

<!-- ================== PHÒNG KHÁCH ================== -->
<section>
    <p class="style-title">TRANG TRÍ PHÒNG KHÁCH</p>
    <div class="cover-product cursor">
        <div class="product-list">
            <c:forEach var="p" items="${listPhongKhach}" varStatus="st">
                <c:if test="${st.count <= 5}">
                    <a href="ctsp.jsp?id=${p.id}">
                        <div class="product-card">
                            <div class="product-img-wrapper">
                                <img src="${p.img}">
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
</section>


<!--footer-->
<jsp:include page="/common/footer.jsp"/>

<script>
    const slider = document.getElementById("outstanding-product-list");
    let currentIndex = 0;
    const visibleCards = 5;

    function slideRight() {
        const totalCards = slider.children.length;
        if (currentIndex < totalCards - visibleCards) {
            currentIndex++;
            updateSlider();
        }
    }

    function slideLeft() {
        if (currentIndex > 0) {
            currentIndex--;
            updateSlider();
        }
    }

    function updateSlider() {
        const cardWidth = slider.children[0].offsetWidth + 20;
        slider.style.transform = `translateX(-${currentIndex * cardWidth}px)`;
    }
</script>

</body>
</html>
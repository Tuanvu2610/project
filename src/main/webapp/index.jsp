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
<jsp:include page="/common/header.jsp"/>
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

<jsp:include page="/common/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>
</html>
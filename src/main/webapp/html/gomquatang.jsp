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
    <link rel="stylesheet" href="css/gomquatang.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/ctsanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/common/header.jsp"/>
<!-- content -->
<section id="main-quatang" class="content item">
    <div class="description">
        <h1>Sơ lược về Gốm quà tặng</h1>
        <div class="desc-img">
            <img src="../img/quatang1.png" alt="">
            <img src="../img/quatang2.png" alt="">
        </div>
        <p>
            Gốm quà tặng là các sản phẩm gốm sứ được thiết kế để làm quà tặng, kết hợp tính thẩm mỹ,
            giá trị văn hóa và khả năng truyền tải thông điệp thương hiệu. Các món quà này có thể
            là vật dụng hữu ích hàng ngày như bình hoa, bộ ấm chén, đĩa, hoặc đồ trang trí độc đáo.
            Chúng được cá nhân hóa bằng cách in logo, khắc chữ hoặc thiết kế riêng, vừa thể hiện sự
            tinh tế của người tặng, vừa tạo dựng và củng cố mối quan hệ với người nhận.
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
                        <a href="chitietsanpham?id=${p.id}">
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
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="quatang">
        <p class="style-title">Bình hút lộc in logo</p>
        <div class="product-section cursor">
            <div id="binhhutloc-list" class="product-list hidden">
                <c:forEach var="p" items="${listBinhHutLoc}">
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
        <p class="style-title">Ấm chén in logo</p>
        <div class="product-section cursor">
            <div id="amcheninlogo-list" class="product-list hidden">
                <c:forEach var="p" items="${listAmChenInLogo}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <img src="${p.img}" alt="" class="product-img">
                            <h3 class="product-name padding style-name">${p.name}</h3>
                            <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                        </div>
                    </a>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Bình hoa in logo</p>
        <div class="product-section cursor">
            <div id="binhhoa-list" class="product-list hidden">
                <c:forEach var="p" items="${listBinhHoa}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <img src="${p.img}" alt="" class="product-img">
                            <h3 class="product-name padding style-name">${p.name}</h3>
                            <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                        </div>
                    </a>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Quà tặng bát đĩa</p>
        <div class="product-section cursor">
            <div id="batdia-list" class="product-list hidden">
                <c:forEach var="p" items="${listBatDia}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card">
                            <img src="${p.img}" alt="" class="product-img">
                            <h3 class="product-name padding style-name">${p.name}</h3>
                            <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                        </div>
                    </a>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

<!--binh hut loc in logo-->
<section id="binhhutloc-page" class="item" style="display: none">
    <div class="binhhutloc-detail product-detail">
        <div class="binhhutloc-desc product-desc">
            <div class="title-desc">
                <h1>Bình Hút Lộc: Thu Hút Tài Lộc, Sung Túc Đầy Nhà</h1>
                <p><span style="font-weight: bold">Bình Hút Lộc</span>
                    là một vật phẩm phong thủy có hình dáng đặc trưng gồm miệng rộng, cổ thon và thân phình to, tượng
                    trưng cho khả năng thu hút tài lộc từ mọi hướng và giữ chặt chúng lại bên trong. Vật phẩm này được
                    sử dụng để mang lại may mắn, thịnh vượng và bình an cho gia chủ,
                </p>
            </div>
            <div class="binhhutloc-img prod-img">
                <img src="../img/binhhutloc.png" alt=""
                     alt="">
            </div>
        </div>
        <div id="binhhutlocPage-list" class="product-item">
            <c:forEach var="p" items="${listBinhHutLoc}">
                <a href="chitietsanpham?id=${p.id}">
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
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<!--am chen in logo-->
<section id="amchenLogo-page" class="item" style="display: none">
    <div class="amchenLogo-detail product-detail">
        <div class="amchenLogo-desc product-desc">
            <div class="title-desc">
                <h1>Ấm chén Gốm Sứ: Nét Đẹp Truyền Thống Trong Từng Hoa Văn Tinh Xảo.</h1>
                <p><span style="font-weight: bold">Ấm Chén Gốm Sứ</span>
                    có nhiều đặc điểm nổi bật như chất liệu an toàn, độ bền cao, giữ nhiệt tốt, thiết kế đa dạng và
                    mang giá trị văn hóa. Chúng được tạo ra từ đất sét, nung ở nhiệt độ cao để loại bỏ tạp chất độc hại
                    như chì, an toàn cho sức khỏe người dùng. Ấm chén gốm sứ còn được yêu thích nhờ vẻ đẹp tinh tế từ
                    hoa văn vẽ tay tỉ mỉ đến kiểu dáng hiện đại, sang trọng, phù hợp với nhiều mục đích sử dụng từ pha
                    trà hàng ngày đến làm quà tặng.
                </p>
            </div>
            <div class="amchenLogo-img prod-img">
                <img src="../img/amchen2.png"
                     alt="">
            </div>
        </div>
        <div id="amchenLogoPage-list" class="product-item">
            <c:forEach var="p" items="${listAmChenInLogo}">
                <a href="chitietsanpham?id=${p.id}">
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
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<!--binh hoa in logo-->
<section id="binhhoa-page" class="item" style="display: none">
    <div class="binhhoa-detail product-detail">
        <div class="binhhoa-desc product-desc">
            <div class="title-desc">
                <h1>Bình Hoa Phong Thủy: Món Quà May Mắn, Tài Lộc và An Khang"</h1>
                <p><span style="font-weight: bold">Bình Hoa</span>
                    là vật dụng trang trí sang trọng và bền bỉ, có nhiều kiểu dáng, màu sắc và họa tiết đa dạng, mang
                    lại may mắn cho gia chủ. Bình có thể dùng để cắm hoa, tạo điểm nhấn nghệ thuật và mang lại vẻ đẹp
                    tinh tế, ấm áp cho không gian. Nó là một món quà tặng ý nghĩa, sang trọng và bền bỉ, được ưa chuộng
                    vì vẻ đẹp tinh tế, tính ứng dụng cao và ý nghĩa phong thủy tốt lành.
                </p>
            </div>
            <div class="binhhoa-img prod-img">
                <img src="../img/binhhoa.png"
                     alt="">
            </div>
        </div>
        <div id="binhhoaPage-list" class="product-item">
            <c:forEach var="p" items="${listBinhHoa}">
                <a href="chitietsanpham?id=${p.id}">
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
                </a>
            </c:forEach>
        </div>
    </div>
</section>

<!--qua tang bat dia-->
<section id="batdia-page" class="item" style="display: none">
    <div class="batdia-detail product-detail">
        <div class="batdia-desc product-desc">
            <div class="title-desc">
                <h1>Quà Tặng Bát Đĩa: Khi Nghệ Thuật Chạm Đến Bàn Ăn"</h1>
                <p><span style="font-weight: bold">Bộ Bát Đĩa</span>
                    đẹp góp phần nâng cao giá trị món ăn và thể hiện gu thẩm mỹ của gia chủ, là món quà tặng ý nghĩa
                    và thiết thực vì sự bền bỉ, tính thẩm mỹ cao, và tính hữu dụng trong đời sống hàng ngày, thể hiện
                    sự tinh tế, sang trọng và mang nhiều tầng ý nghĩa khác nhau.
                </p>
            </div>
            <div class="batdia-img prod-img">
                <img src="../img/bobatdia.png"
                     alt="">
            </div>
        </div>
        <div id="batdiaPage-list" class="product-item">
            <c:forEach var="p" items="${listBatDia}">
                <a href="chitietsanpham?id=${p.id}">
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
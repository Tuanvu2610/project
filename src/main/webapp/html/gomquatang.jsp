<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
        <li class="sub-item"><a class="tab" data-target="main-quatang" href="../html/gomquatang.html">GỐM QUÀ TẶNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li class="tab" data-target="binhhutloc-page"><a>Bình hút lộc in logo</a></li>
                    <li class="tab" data-target="amchenLogo-page"><a>Ấm chén in logo</a></li>
                    <li class="tab" data-target="binhhoa-page"><a>Bình hoa in logo</a></li>
                    <li class="tab" data-target="batdia-page"><a>Quà tặng bát đĩa</a></li>
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
                        <div class="product-card">
                            <span class="discount-percent">-20%</span>
                            <img src="${p.img}" alt="" class="product-img">
                            <h3 class="product-name padding style-name">${p.name}</h3>
                            <div class="product-price">
                                <p class="price-origin padding">${p.price_origin}đ</p>
                                <p class="price-sale padding">${p.price_sale}đ</p>
                            </div>
                        </div>
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
                        <p class="price-sale padding">${p.price_sale}đ</p>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Ấm chén in logo</p>
        <div class="product-section cursor">
            <div id="amcheninlogo-list" class="product-list hidden">
                <c:forEach var="p" items="${listAmChenInLogo}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <p class="price-sale padding">${p.price_sale}đ</p>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Bình hoa in logo</p>
        <div class="product-section cursor">
            <div id="binhhoa-list" class="product-list hidden">
                <c:forEach var="p" items="${listBinhHoa}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <p class="price-sale padding">${p.price_sale}đ</p>
                    </div>
                </c:forEach>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
        <p class="style-title">Quà tặng bát đĩa</p>
        <div class="product-section cursor">
            <div id="batdia-list" class="product-list hidden">
                <c:forEach var="p" items="${listBatDia}">
                    <div class="product-card">
                        <img src="${p.img}" alt="" class="product-img">
                        <h3 class="product-name padding style-name">${p.name}</h3>
                        <p class="price-sale padding">${p.price_sale}đ</p>
                    </div>
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
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm_02112022084918.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hút lộc chữ Phúc</h3>
                    <p class="price-origin padding">5.000.000đ</p>
                    <p class="product-price padding">3.900.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm_02112022084918.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hút lộc chữ Phúc</h3>
                    <p class="price-origin padding">5.000.000đ</p>
                    <p class="product-price padding">3.900.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm_02112022084918.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hút lộc chữ Phúc</h3>
                    <p class="price-origin padding">5.000.000đ</p>
                    <p class="product-price padding">3.900.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm_02112022084918.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hút lộc chữ Phúc</h3>
                    <p class="price-origin padding">5.000.000đ</p>
                    <p class="product-price padding">3.900.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm_02112022084918.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hút lộc chữ Phúc</h3>
                    <p class="price-origin padding">5.000.000đ</p>
                    <p class="product-price padding">3.900.000đ</p></a>
            </div>
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
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-am-chen-su-in-logo-bat-trang-qua-tang-cao-cap.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ ấm chén sứ cao cấp</h3>
                    <p class="price-origin padding">3.000.000đ</p>
                    <p class="product-price padding">2.600.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-am-chen-su-in-logo-bat-trang-qua-tang-cao-cap.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ ấm chén sứ cao cấp</h3>
                    <p class="price-origin padding">3.000.000đ</p>
                    <p class="product-price padding">2.600.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-am-chen-su-in-logo-bat-trang-qua-tang-cao-cap.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ ấm chén sứ cao cấp</h3>
                    <p class="price-origin padding">3.000.000đ</p>
                    <p class="product-price padding">2.600.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-am-chen-su-in-logo-bat-trang-qua-tang-cao-cap.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ ấm chén sứ cao cấp</h3>
                    <p class="price-origin padding">3.000.000đ</p>
                    <p class="product-price padding">2.600.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-am-chen-su-in-logo-bat-trang-qua-tang-cao-cap.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ ấm chén sứ cao cấp</h3>
                    <p class="price-origin padding">3.000.000đ</p>
                    <p class="product-price padding">2.600.000đ</p></a>
            </div>
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
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hoa-minh-long-05.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hoa gốm sứ Minh Long</h3>
                    <p class="price-origin padding">3.600.000đ</p>
                    <p class="product-price padding">1.800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hoa-minh-long-05.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hoa gốm sứ Minh Long</h3>
                    <p class="price-origin padding">3.600.000đ</p>
                    <p class="product-price padding">1.800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hoa-minh-long-05.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hoa gốm sứ Minh Long</h3>
                    <p class="price-origin padding">3.600.000đ</p>
                    <p class="product-price padding">1.800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hoa-minh-long-05.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hoa gốm sứ Minh Long</h3>
                    <p class="price-origin padding">3.600.000đ</p>
                    <p class="product-price padding">1.800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/binh-hoa-minh-long-05.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bình hoa gốm sứ Minh Long</h3>
                    <p class="price-origin padding">3.600.000đ</p>
                    <p class="product-price padding">1.800.000đ</p></a>
            </div>
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
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-bat-dia-1-1202x800.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ bát đĩa gốm sứ cao cấp</h3>
                    <p class="price-origin padding">1.000.000đ</p>
                    <p class="product-price padding">800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-bat-dia-1-1202x800.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ bát đĩa gốm sứ cao cấp</h3>
                    <p class="price-origin padding">1.000.000đ</p>
                    <p class="product-price padding">800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-bat-dia-1-1202x800.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ bát đĩa gốm sứ cao cấp</h3>
                    <p class="price-origin padding">1.000.000đ</p>
                    <p class="product-price padding">800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-bat-dia-1-1202x800.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ bát đĩa gốm sứ cao cấp</h3>
                    <p class="price-origin padding">1.000.000đ</p>
                    <p class="product-price padding">800.000đ</p></a>
            </div>
            <div class="product-card-item">
                <a href="ctsp.jsp">
                    <img src="../img/bo-bat-dia-1-1202x800.jpg" alt="" class="product-img">
                    <button class="btn">Xem nhanh</button>
                    <h3 class="product-name padding style-name">Bộ bát đĩa gốm sứ cao cấp</h3>
                    <p class="price-origin padding">1.000.000đ</p>
                    <p class="product-price padding">800.000đ</p></a>
            </div>
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
<script src="../js/javascript.js"></script>
</body>
</html>
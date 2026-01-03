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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giadung.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ctsanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>

<body>
<!-- header -->
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

<!--body-->
<section class="main-content item">
    <div class="cover-outstanding cursor">
        <p>Sản phẩm đang giảm giá</p>
        <div id="outstanding-product-list" class="hiden">
            <button class="slide-btn prev" onclick="slideLeft()">❮</button>
            <button class="slide-btn next" onclick="slideRight()">❯</button>
            <div class="slider-wrapper">
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
    <div>
        <p class="style-title">Ấm chén bát tràng</p>
        <div class="cover-product cursor">
            <div id="amchen-product-list" class="product-list hiden">
                <c:forEach var="p" items="${listAmChen}">
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
            <button class="tab" data-target="amchenbattrang-page">Xem tất cả &#9654;</button>
        </div>
    </div>
    <div>
        <p class="style-title">Bộ bát dĩa bác tràng</p>
        <div class="cover-product cursor">
            <div id="batdia-product-list" class="product-list hiden">
                <c:forEach var="p" items="${listbatDia}">
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
            <button class="tab" data-target="amchenbattrang-page">Xem tất cả &#9654;</button>
        </div>
    </div>
    <div>
        <p class="style-title">Bộ chum ngâm rượu</p>
        <div class="cover-product cursor">
            <div id="chum-product-list" class="product-list hiden">
                <c:forEach var="p" items="${listChum}">
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
            <button class="tab" data-target="amchenbattrang-page">Xem tất cả &#9654;</button>
        </div>
    </div>
    <div>
        <p class="style-title">Đèn ngủ</p>
        <div class="cover-product cursor">
            <div id="denngu-product-list" class="product-list hiden">
                <c:forEach var="p" items="${listDenNgu}">
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
            <button class="tab" data-target="amchenbattrang-page">Xem tất cả &#9654;</button>
        </div>
    </div>
    <div>
        <p class="style-title">Dụng cụ nhà tắm</p>
        <div class="cover-product cursor">
            <div id="nhatam-product-list" class="product-list hiden">
                <c:forEach var="p" items="${listNhaTam}">
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
            <button class="tab" data-target="amchenbattrang-page">Xem tất cả &#9654;</button>
        </div>
    </div>
</section>

<!-- am chen bat trang  -->
<section id="amchenbattrang-page" class="item" style="display: none">
    <div class="cover-pageAmChen">
        <div class="cover-allAmChen">
            <div class="title-product">
                <h1>Ấm Chén Bát Tràng: Mẫu Mã Đẹp, Pha Trà Ngon</h1>
                <p><span style="font-weight: bold">Bộ ấm chén Bát Tràng</span> không chỉ là vật dụng dùng để pha và
                    thưởng trà, mà còn mang nhiều giá trị văn hóa và thẩm mỹ đặc trưng của làng nghề gốm sứ truyền
                    thống Việt Nam.
                    <span style="font-weight: bold">Bộ ấm chén Bát Tràng</span> là sản phẩm gốm sứ thủ công truyền
                    thống, được chế tác tỉ mỉ bởi bàn tay của các nghệ nhân làng gốm nổi tiếng. Không chỉ là vật
                    dụng pha trà hằng ngày
                    , mà còn là biểu tượng cho văn hóa thưởng trà tinh tế của người Việt.
                </p>
            </div>
            <div class="img-amchen">
                <img src="https://png.pngtree.com/png-clipart/20240316/original/pngtree-tea-ceramic-teapot-and-cup-png-image_14604390.png"
                     alt="">
            </div>
        </div>
        <div class="choose">
            <div class="cover-choose">
                <c:set var="p" value="${listAmChen[0]}"/>
                <div class="title-choose">
                    <img src="${p.img}"
                         alt="">
                    <span>Ấm chén Bát Tràng</span>
                </div>
            </div>
            <div class="cover-choose">
                <c:set var="p" value="${listAmChen[1]}"/>
                <div class="title-choose">
                    <img src="${p.img}"
                         alt="">
                    <span>Ấm trà</span>
                </div>
            </div>
            <div class="cover-choose">
                <c:set var="p" value="${listAmChen[2]}" />
                <div class="title-choose">
                    <img src="${p.img}"
                         alt="">
                    <span>Ấm trà sứ trắng</span>
                </div>
            </div>
            <div class="cover-choose">
                <c:set var="p" value="${listAmChen[3]}" />
                <div class="title-choose">
                    <img src="${p.img}"
                         alt="">
                    <span>Khay trà</span>
                </div>
            </div>
            <div class="cover-choose">
                <c:set var="p" value="${listAmChen[4]}"/>
                <div class="title-choose">
                    <img src="${p.img}"
                         alt="">
                    <span>Tử sa</span>
                </div>
            </div>

        </div>

    </div>
    <div class="cover2">
        <div class="product">
            <div class="btnAndTitle">
                <p>Bộ ấm chén gốm sứ Bát Tràng men nâu.</p>
                <button>Xem nhanh</button>
            </div>
            <img src="img/am%20chen.png" width="100%" />
        </div>
        <div class="product">
            <div class="btnAndTitle">
                <p>Bộ Ấm Chén Uống Trà Bát Tràng Men Nâu Cao Cấp</p>
                <button>Xem nhanh</button>
            </div>
            <img src="img/amchen2.png" width="100%" />
        </div>
    </div>

    <div class="cover-all-product-item" id="amchen-product-list-2">
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Ấm chén Bát Tràng</option>
                    <option>Khay trà</option>
                    <option>Ấm trà</option>
                    <option>Ấm trà sứ trắng</option>
                    <option>Tử sa</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo giá thấp đến cao</option>
                    <option>Theo giá cao đến thấp</option>
                </select>
            </div>
        </div>
        <div class="cover-product-item">
            <c:forEach var="p" items="${listAmChen}">
                <a href="chitietsanpham?id=${p.id}">
                    <div class="product-card-item">
                        <img src="${p.img}" alt="" class="product-img">
                        <button class="btn-seen">Xem nhanh</button>
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


<!-- bo bac dia  -->
<section id="bacdia-page" class="item" style="display: none">
    <div class="cover-pageAmChen">
        <div class="cover-allAmChen">
            <div class="title-product">
                <h1>Bộ Bát Đĩa Bát Tràng: Đẹp Bền, An Toàn Cho Mọi Mâm Cơm Việt</h1>
                <p><span style="font-weight: bold">Bộ bát đĩa Bát Tràng</span> là lựa
                    chọn hoàn hảo cho mọi gia đình Việt,
                    kết hợp hài hòa giữa vẻ đẹp truyền thống và sự tinh tế hiện đại.
                    Được chế tác thủ công từ gốm sứ cao cấp <span style="font-weight: bold">Bát Tràng</span>, mỗi
                    sản phẩm
                    đều trải qua quá trình nung ở nhiệt độ cao, giúp bền chắc, khó
                    sứt mẻ và an toàn tuyệt đối cho sức khỏe.
                </p>
            </div>
            <div class="img-amchen">
                <img src="https://png.pngtree.com/png-clipart/20241115/original/pngtree-a-set-of-dishes-png-image_17080300.png"
                     alt="" style="width: 60%;">
            </div>
        </div>
        <div class="choose">
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAJh5jKrEglJa1ty9BnwHzgmilIhDOgFZPZw&s"
                         alt="">
                    <span>Chén dĩa</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://cdn.tgdd.vn/2022/01/CookDish/goi-y-cac-bo-to-chen-moi-cho-can-bep-ngay-tet-them-xinh-va-avt-1200x676.jpg"
                         alt="">
                    <span>Thiết kế hoa văn</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://gombinhduong.vn/public/uploads/Sanpham/chen-sanh.jpg" alt="">
                    <span>Chén dĩa kiểu xưa</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIJpfcRN4xdOaCtScpXLXpWLDjtkaG20VoOg&s"
                         alt="">
                    <span>Chén dĩa hiện đại</span>
                </div>
            </div>
        </div>

    </div>
    <div class="cover2">
        <div class="product">
            <div class="btnAndTitle">
                <p>Bộ bát đĩa hoa sen Bát Tràng</p>
                <button>Xem nhanh</button>
            </div>
            <img src="img/download.png" width="100%" />
        </div>
        <div class="product">
            <div class="btnAndTitle">
                <p>Bộ bát đĩa hoa sen Bát Tràng</p>
                <button>Xem nhanh</button>
            </div>
            <img src="img/download.png" width="100%" />
        </div>
    </div>

    <div class="cover-all-product-item" id="batdia-product-list-2">
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Chén dĩa</option>
                    <option>Chén dĩa hiện đại</option>
                    <option>Chén dĩa kiểu xưa</option>
                    <option>Thiết kế hoa văn</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo giá thấp đến cao</option>
                    <option>Theo giá cao đến thấp</option>
                </select>
            </div>
        </div>
        <div class="cover-product-item">
            <div class="cover-product-item">
                <c:forEach var="p" items="${listbatDia}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card-item">
                            <img src="${p.img}" alt="" class="product-img">
                            <button class="btn-seen">Xem nhanh</button>
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
</section>


<!-- chum ruou  -->
<section id="chum-page" class="item" style="display: none">
    <div class="cover-pageAmChen">
        <div class="cover-allAmChen">
            <div class="title-product">
                <h1>Chum Ngâm Rượu Bát Tràng: Bí Quyết Ủ Rượu Ngon, Khử Độc Tố An Toàn</h1>
                <p><span style="font-weight: bold">Chum ngâm rượu Bát Tràng</span> là lựa chọn hàng đầu của những
                    người sành
                    rượu Việt. Được làm thủ công từ đất sét chọn lọc và nung ở nhiệt độ cao,
                    chum có độ bền chắc vượt trội, khả năng giữ nhiệt và trao đổi oxy tự nhiên
                    giúp <span style="font-weight: bold">rượu được “thở” và lên men hài hòa.</span>
                </p>
            </div>
            <div class="img-amchen">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBRECerux0wA5L_HzS-7VTcHFG1h5BAcomtw&s"
                     alt="" style="width: 80%;border-radius: 50%;">
            </div>
        </div>
        <div class="choose">
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiX3tDPfRaPxbS8MSroKgVs9PxMFa0c1b6cg&s"
                         alt="">
                    <span>Chum rượu bằng men sứ</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://tinhhoabattrang.vn/wp-content/uploads/2018/09/chum-ruou-bat-trang-14.jpg"
                         alt="">
                    <span>Chum sành</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOzPc1YxxOz0PfXwFemrwZf2bLb8zmUl7WAA&s"
                         alt="">
                    <span>Chum có hoa văn cổ</span>
                </div>
            </div>
        </div>

    </div>
    <div class="cover-all-product-item" id="chum-product-list-2">
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Chum rượu bằng men sứ</option>
                    <option>Chum sành</option>
                    <option>Chum có hoa văn cổ</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo giá thấp đến cao</option>
                    <option>Theo giá cao đến thấp</option>
                </select>
            </div>
        </div>
        <div class="cover-product-item">
            <div class="cover-product-item">
                <c:forEach var="p" items="${listChum}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card-item">
                            <img src="${p.img}" alt="" class="product-img">
                            <button class="btn-seen">Xem nhanh</button>
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
</section>

<!-- nha tam  -->
<section id="nhatam-page" class="item" style="display: none">
    <div class="cover-pageAmChen">
        <div class="cover-allAmChen">
            <div class="title-product">
                <h1>Bộ Dụng Cụ Nhà Tắm Gốm Sứ Bát Tràng: Nâng Tầm Không Gian, An Toàn & Bền Vững</h1>
                <p>Sản phẩm được chế tác từ <span style="font-weight: bold">gốm sứ cao cấp, nung ở nhiệt độ
                            cao</span>, đảm bảo bền bỉ,
                    chống mẻ nứt, đồng thời hoàn toàn an toàn cho sức khỏe. Bề mặt men mịn, sáng bóng, dễ vệ sinh,
                    hạn chế bám bẩn và vi khuẩn
                    , <span style="font-weight: bold">mang lại trải nghiệm sử dụng tiện nghi và an toàn cho cả gia
                            đình</span>
                </p>
            </div>
            <div class="img-amchen">
                <img src="https://png.pngtree.com/png-vector/20240430/ourmid/pngtree-freestanding-faucet-on-silver-bowl-sink--photorealistic-image-png-image_12346971.png"
                     alt="" style="width: 68%;border-radius: 50%;">
            </div>
        </div>
        <div class="choose">
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://datienich.com.vn/uploads/plugin/product_items/580/1582192447-1087608577-b-ng-dung-phong-t-m-b-ng-s.jpg"
                         alt="">
                    <span>BỘ ĐỰNG ĐỒ</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://datienich.com.vn/uploads/plugin/product_items/580/1582192447-1087608577-b-ng-dung-phong-t-m-b-ng-s.jpg"
                         alt="">
                    <span>BỘ ĐỰNG ĐỒ</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://datienich.com.vn/uploads/plugin/product_items/580/1582192447-1087608577-b-ng-dung-phong-t-m-b-ng-s.jpg"
                         alt="">
                    <span>BỘ ĐỰNG ĐỒ</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://datienich.com.vn/uploads/plugin/product_items/580/1582192447-1087608577-b-ng-dung-phong-t-m-b-ng-s.jpg"
                         alt="">
                    <span>BỘ ĐỰNG ĐỒ</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://datienich.com.vn/uploads/plugin/product_items/580/1582192447-1087608577-b-ng-dung-phong-t-m-b-ng-s.jpg"
                         alt="">
                    <span>BỘ ĐỰNG ĐỒ</span>
                </div>
            </div>

        </div>

    </div>
    <div class="cover-all-product-item" id="nhatam-product-list-2">
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>BỘ ĐỰNG ĐỒ</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo giá thấp đến cao</option>
                    <option>Theo giá cao đến thấp</option>
                </select>
            </div>
        </div>
        <div class="cover-product-item">
            <div class="cover-product-item">
                <c:forEach var="p" items="${listNhaTam}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card-item">
                            <img src="${p.img}" alt="" class="product-img">
                            <button class="btn-seen">Xem nhanh</button>
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
</section>

<!-- den ngu  -->
<section id="denngu-page" class="item" style="display: none">
    <div class="cover-pageAmChen">
        <div class="cover-allAmChen">
            <div class="title-product">
                <h1>Đèn Ngủ Gốm Sứ Bát Tràng: Ánh Sáng Ấm Áp, Nâng Tầm Không Gian</h1>
                <p>Được chế tác từ <span style="font-weight: bold">gốm sứ cao cấp, nung ở
                            nhiệt độ cao</span>, đèn không chỉ bền bỉ, an
                    toàn mà còn tôn lên vẻ đẹp tinh tế, nghệ
                    thuật trong từng chi tiết. Đây là giải
                    pháp hoàn hảo để tạo điểm nhấn thẩm mỹ
                    cho phòng ngủ, phòng khách hoặc góc đọc
                    sách, đồng thời mang lại <span style="font-weight: bold">cảm giác thư thái
                            và ấm cúng.</span>
                </p>
            </div>
            <div class="img-amchen">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIIrlxtqPnRw1IhAufkhX_-YBMnU3fdOITjg&s"
                     alt="" style="width: 63%;border-radius: 50%;">
            </div>
        </div>
        <div class="choose">
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://gomsubattrang.vn/uploads/data/20/imgproducts/20210529224254_80075.png"
                         alt="">
                    <span>Đèn có họa tiết</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://denchum.com/wp-content/uploads/2022/12/0896cfe64113c3ab13dc60b4859fe65f.jpeg"
                         alt="">
                    <span>Đèn kiểu dáng</span>
                </div>
            </div>
            <div class="cover-choose">
                <div class="title-choose">
                    <img src="https://cf.shopee.vn/file/81913664122d42bb41ebf29d5575cb1f"
                         alt="">
                    <span>Đèn xông tinh dầu</span>
                </div>
            </div>
        </div>

    </div>
    <div class="cover-all-product-item" id="denngu-product-list-2">
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Đèn có họa tiết</option>
                    <option>Đèn xông tinh dầu</option>
                    <option>Đèn kiểu dáng</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo giá thấp đến cao</option>
                    <option>Theo giá cao đến thấp</option>
                </select>
            </div>
        </div>
        <div class="cover-product-item">
            <div class="cover-product-item">
                <c:forEach var="p" items="${listDenNgu}">
                    <a href="chitietsanpham?id=${p.id}">
                        <div class="product-card-item">
                            <img src="${p.img}" alt="" class="product-img">
                            <button class="btn-seen">Xem nhanh</button>
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
<script src="js/javascript.js"></script>
</body>

</html>
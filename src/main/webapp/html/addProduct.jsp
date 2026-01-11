<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addProduct.css">
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

<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="/quan-ly-account"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="/thong-ke"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="/kho" class="active"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>

    <!-- CONTENT -->
    <div class="content">
        <div class="head"><h1>➕ Thêm sản phẩm mới vào kho</h1></div>
        <c:if test="${not empty success}">
            <div class="success">
                    ${success}
            </div>
        </c:if>
        <div class="info">
            <form action="${pageContext.request.contextPath}/add-product" method="post">
                <div class="form">
                    <h3>Tên sản phẩm</h3>
                    <input name="name" required>
                </div>
                <input id="imgInput" name="img" type="hidden" required>
                <div class="form">
                    <h3>Ảnh sản phẩm</h3>
                    <button type="button" class="choose-btn" onclick="openImagePicker()">Chọn ảnh sản phẩm</button>
                    <br>
                    <img id="preview" width="140" style="display:none;margin-top:10px;border-radius:12px;border:1px solid #ddd">
                </div>
                <div class="form">
                    <h3>Danh mục</h3>
                    <select name="category_id" required>
                        <option value="">Chọn danh mục</option>
                        <c:forEach var="c" items="${categories}">
                            <option value="${c.id}">
                                    ${c.name}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form">
                    <h3>Chất liệu</h3>
                    <input name="material">
                </div>
                <div class="form">
                    <h3>Kích thước</h3>
                    <input name="size">
                </div>
                <div class="form">
                    <h3>Giá bán</h3>
                    <input name="price_sale" required>
                </div>
                <div class="form">
                    <h3>Giá gốc</h3>
                    <input name="price_origin" required>
                </div>
                <div class="form-btn" style="display: flex; flex-direction: column;">
                    <button class="btn" type="submit">💾 Lưu sản phẩm</button>
                    <a href="${pageContext.request.contextPath}/kho" class="btn" style="width: 13%;">🔙 Quay về kho</a>
                </div>
            </form>
        </div>

    </div>
</div>
<div id="imgModal">
    <div class="img-box">
        <h3>Chọn ảnh sản phẩm</h3>
        <div class="gallery">
            <c:forEach var="img" items="${categoryImages}">
                <img src="${img}" onclick="selectImage('${img}')">
            </c:forEach>
        </div>
        <br>
        <button class="btn" onclick="closeImagePicker()">Đóng</button>
    </div>
</div>

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

<script>
    function openImagePicker(){
        document.getElementById("imgModal").style.display="flex";
    }
    function closeImagePicker(){
        document.getElementById("imgModal").style.display="none";
    }
    function selectImage(url){
        document.getElementById("imgInput").value = url;
        let p = document.getElementById("preview");
        p.src = url;
        p.style.display = "block";
        closeImagePicker();
    }

</script>

</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kho</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kho.css">
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
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="/quan-ly-account"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="/thong-ke"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="#" class="active"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="content">
        <div class="content-wrapper">
            <div class="head-title">
                <h1><i class="fas fa-warehouse"></i> Kho hàng</h1>
            </div>
            <div class="tab-container" >
                <button class="tab active" data-tab="on">Đã lên kệ</button>
                <button class="tab" data-tab="off">Chưa lên kệ</button>
            </div>
            <div class="tab-content active" id="on">
                <div class="warehouse-table">
                    <table>
                        <thead>
                        <tr>
                            <th>Hàng hóa</th>
                            <th>Giá</th>
                            <th>Hàng tồn kho</th>
                            <th>Đã bán</th>
                            <th>Trạng thái</th>
                            <th>Lợi nhuận</th> <!-- loi nhuan an 5% nha -->
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody id="onSaleBody">
                        <c:forEach var="p" items="${onSale}">
                            <tr data-id="${p.id}">
                                <form action="${pageContext.request.contextPath}/kho" method="post">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <td class="product">
                                        <img src="${p.img}">
                                        <span class="view">${p.name}</span>
                                        <input class="edit" type="text" name="name" value="${p.name}" style="display:none; width:160px;">
                                    </td>
                                    <td>
                                        <span class="view"><fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/> đ</span>
                                        <input class="edit" type="number" name="price" value="${p.price_sale}" style="display:none; width:100px;">
                                    </td>
                                    <td>100</td>
                                    <td>0</td>
                                    <td class="status selling">Đang bán</td>
                                    <td class="profit">
                                        <fmt:formatNumber value="${p.price_sale * 0.05}" groupingUsed="true"/> đ
                                    </td>
                                    <td>
                                        <div class="action-btn">
                                            <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                                <input type="hidden" name="action" value="update">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <button type="button" class="btn edit-btn" onclick="edit(this)">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn save" style="display:none;">
                                                    <i class="fas fa-save"></i>
                                                </button>
                                            </form>
                                            <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                                <input type="hidden" name="action" value="unpublish">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <button type="submit" class="btn remove" onclick="return confirm('Xác nhận đưa sản phẩm xuống kệ?')">
                                                    <i class="fas fa-arrow-down"></i>
                                                </button>
                                            </form>
                                            <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                                <input type="hidden" name="action" value="delete">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <button type="submit" class="btn delete" onclick="return confirm('Xóa sản phẩm này?')">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-content" id="off">
                <div style="margin-bottom:15px; text-align:right;">
                    <a href="${pageContext.request.contextPath}/add-product" class="add-product-btn"><i class="fas fa-plus"></i> Thêm sản phẩm</a>
                </div>
                <table>
                    <thead>
                    <tr>
                        <th>Hàng hóa</th>
                        <th>Giá dự kiến</th>
                        <th>Tồn kho</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                    </thead>
                    <tbody id="offSaleBody">
                    <c:forEach var="p" items="${offSale}">
                        <tr data-id="${p.id}">
                            <td class="product">
                                <img src="${p.img}">
                                <span>${p.name}</span>
                            </td>
                            <td>
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/> đ
                            </td>
                            <td>100</td>
                            <td class="status pending">Chưa lên kệ</td>
                            <td>
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline;">
                                    <input type="hidden" name="action" value="publish">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="submit" class="btn publish" onclick="return confirm('Xác nhận đưa sản phẩm lên kệ?')">
                                        <i class="fas fa-arrow-up"></i>
                                    </button>
                                </form>
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline;">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="submit" class="btn delete" onclick="return confirm('Xóa sản phẩm này?')"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

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

<script>
    document.querySelectorAll(".tab").forEach(tab => {
        tab.onclick = () => {
            document.querySelectorAll(".tab").forEach(t =>
                t.classList.remove("active")
            );
            document.querySelectorAll(".tab-content").forEach(c =>
                c.classList.remove("active")
            );
            tab.classList.add("active");
            document.getElementById(tab.dataset.tab).classList.add("active");
        };
    });

    function edit(btn){
        const row = btn.closest("tr");
        row.querySelectorAll(".view").forEach(e => {
            e.style.display = "none";
        });
        row.querySelectorAll(".edit").forEach(e => {
            e.style.display = "inline-block";
        });
        btn.style.display = "none";
        row.querySelector(".save").style.display = "inline-flex";
    }
</script>
</body>
</html>
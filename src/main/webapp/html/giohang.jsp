<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="../css/giohang.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/javascript.js"></script>
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
            <span class="cart-badge">${empty sessionScope.cart ? 0 : sessionScope.cart.totalQuantity}</span> </a>
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
<div class="cart-container">
    <!-- SẢN PHẨM -->
    <%--    <section class="cart-items">--%>
    <%--        <h2>SẢN PHẨM</h2>--%>
    <%--        <div class="cart-header">--%>
    <%--            <span class="col-product"></span>--%>
    <%--            <span class="col-price">GIÁ</span>--%>
    <%--            <span class="col-quantity">SỐ LƯỢNG</span>--%>
    <%--            <span class="col-total">TẠM TÍNH</span>--%>
    <%--        </div>--%>
    <%--        <!-- Sản phẩm 1 -->--%>
    <%--        <c:forEach items="${sessionScope.cart.items}" var="ci">--%>
    <%--        <div class="cart-item">--%>
    <%--            <span class="item-check">--%>
    <%--                <input type="checkbox" class="select-product">--%>
    <%--            </span>--%>
    <%--            <div class="product-info">--%>
    <%--                <img src="${ci.product.img}" alt="">--%>
    <%--                <div class="product-details">--%>
    <%--                    <h3>${ci.product.name}</h3>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--            <div class="price">${ci.product.price_sale}</div>--%>
    <%--            <div class="quantity">--%>
    <%--                <button class="qty-btn minus">-</button>--%>
    <%--                <input type="text" value="${ci.quantity}" class="qty-input">--%>
    <%--                <button class="qty-btn plus">+</button>--%>
    <%--            </div>--%>
    <%--            <div class="subtotal">${ci.quantity * ci.price}</div>--%>
    <%--        </div>--%>
    <%--        </c:forEach>--%>
    <%--    </section>--%>
    <section class="cart-items">
        <h2>SẢN PHẨM</h2>
        <table  class="cart-header">
            <thead>
            <tr>
                <th style="width:40px"></th>
                <th>SẢN PHẨM</th>
                <th>GIÁ</th>
                <th>SỐ LƯỢNG</th>
                <th>TẠM TÍNH</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${sessionScope.cart.items}" var="ci">
                <tr class="cart-item">
                    <td>
                        <input type="checkbox" class="select-product">
                    </td>
                    <td class="product-info">
                        <img src="${ci.product.img}" alt="" width="80">
                        <div class="product-details">
                            <strong>${ci.product.name}</strong>
                        </div>
                    </td>
                    <td class="price">
                            ${ci.product.price_sale}
                    </td>
                    <td class="quantity">
                        <button class="qty-btn minus">-</button>
                        <input type="text" value="${ci.quantity}" class="qty-input">
                        <button class="qty-btn plus">+</button>
                    </td>
                    <td class="subtotal">
                            ${ci.quantity * ci.product.price_sale}
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
    <!-- THÀNH TIỀN-->
    <aside class="cart-summary">
        <h2>TỔNG CỘNG GIỎ HÀNG</h2>
        <div class="summary-row">
            <span>Tạm tính</span>
            <span id="subtotal">${sessionScope.cart.total}₫</span>
        </div>
        <div class="summary-row total">
            <span>Tổng cộng</span>
            <span id="total"><b>${sessionScope.cart.total}₫</b></span>
        </div>
        <a href="" class="checkout-btn">Tiến hành thanh toán</a>
    </aside>
</div>

<!-- recomment -->
<%--<div class="recommend-wrapper">--%>
<%--            <h2 class="recommet-title">Có thể bạn sẽ để tâm</h2>--%>
<%--        <div class="recomment">--%>
<%--                <div class="product-card">--%>
<%--            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">--%>
<%--            <p class="title">Bộ tranh gốm sứ</p>--%>
<%--            <p class="prices">2.500.000đ</p>--%>
<%--                 </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">--%>
<%--            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>--%>
<%--            <p class="prices">19.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">--%>
<%--            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>--%>
<%--            <p class="prices">4.500.000đ</p>--%>
<%--                </div>--%>
<%--                <div class="product-card">--%>
<%--            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">--%>
<%--            <p class="title">Bộ tranh gốm sứ</p>--%>
<%--            <p class="prices">2.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">--%>
<%--            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>--%>
<%--            <p class="prices">19.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">--%>
<%--            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>--%>
<%--            <p class="prices">4.500.000đ</p>--%>
<%--                </div>--%>
<%--                <div class="product-card">--%>
<%--            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">--%>
<%--            <p class="title">Bộ tranh gốm sứ</p>--%>
<%--            <p class="prices">2.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">--%>
<%--            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>--%>
<%--            <p class="prices">19.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">--%>
<%--            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>--%>
<%--            <p class="prices">4.500.000đ</p>--%>
<%--                </div>--%>
<%--        </div>--%>
<%--</div>--%>
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
<%--<script>--%>
<%--    // const subtotalEl = document.getElementById("subtotal");--%>
<%--    // const totalEl = document.getElementById("total");--%>
<%--    // const discountInput = document.getElementById("discount-code");--%>
<%--    // const applyBtn = document.getElementById("apply-discount");--%>
<%--    //--%>
<%--    // let subtotal = parseInt(subtotalEl.textContent.replace(/\./g, ""), 10);--%>
<%--    //--%>
<%--    // const discountCodes = {--%>
<%--    //     "GIAM10": 0.1,--%>
<%--    //     "SALE20": 0.2,--%>
<%--    //     "FREESHIP": 0.05--%>
<%--    // };--%>
<%--    //--%>
<%--    // function formatVND(number) {--%>
<%--    //     return number.toLocaleString("vi-VN");--%>
<%--    // }--%>
<%--    //--%>
<%--    // applyBtn.addEventListener("click", () => {--%>
<%--    //     const code = discountInput.value.trim().toUpperCase();--%>
<%--    //     const discount = discountCodes[code];--%>
<%--    //--%>
<%--    //     if (discount) {--%>
<%--    //         const newTotal = subtotal - subtotal * discount;--%>
<%--    //         totalEl.innerHTML = `<b>${formatVND(newTotal)}</b>`;--%>
<%--    //         alert(`Áp dụng mã "${code}" thành công! Giảm ${discount * 100}%`);--%>
<%--    //     } else {--%>
<%--    //         totalEl.innerHTML = `<b>${formatVND(subtotal)}</b>`;--%>
<%--    //         alert("Mã giảm giá không hợp lệ!");--%>
<%--    //     }--%>
<%--    // });--%>
<%--    // const subtotals = [395000, 100000];--%>
<%--    // const total = subtotals.reduce((a, b) => a + b, 0);--%>
<%--    // document.getElementById("subtotal").textContent = total.toLocaleString("vi-VN") + " ₫";--%>
<%--    // document.getElementById("total").textContent = total.toLocaleString("vi-VN") + " ₫";--%>
<%--</script>--%>
</body>
</html>
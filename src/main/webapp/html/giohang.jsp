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
        <a href="../html/giohang.html" class="btn-header cart-btn">
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
        <li class="sub-item"><a href="gomquatang.jsp">GỐM QUÀ TẶNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomquatang.jsp">Bình hút lộc in logo</a></li>
                    <li><a href="gomquatang.jsp">Ấm chén in logo</a></li>
                    <li><a href="gomquatang.jsp">Bình hoa in logo</a></li>
                    <li><a href="gomquatang.jsp">Quà tặng bát đĩa</a></li>
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
<div class="cart-container">
    <!-- SẢN PHẨM -->
    <section class="cart-items">
        <h2>SẢN PHẨM</h2>
        <div class="cart-header">
            <span class="col-product"></span>
            <span class="col-price">GIÁ</span>
            <span class="col-quantity">SỐ LƯỢNG</span>
            <span class="col-total">TẠM TÍNH</span>
        </div>
        <!-- Sản phẩm 1 -->
        <div class="cart-item">
            <span class="item-check">
                <input type="checkbox" class="select-product">
            </span>
            <div class="product-info">
                <img src="https://xuonggomsuviet.vn/wp-content/uploads/2024/09/bo-am-chen-dang-minh-long-hoa-sen-xanh-ke-chi-vang-800x800.webp" alt="Hũ đựng trà">
                <div class="product-details">
                    <h3>Bộ ấm trà Bát Tràng dáng Quốc Hội viền chỉ vàng sang trọng</h3>
                </div>
            </div>
            <div class="price">395.000₫</div>
            <div class="quantity">
                <button class="qty-btn minus">-</button>
                <input type="text" value="1" class="qty-input">
                <button class="qty-btn plus">+</button>
            </div>
            <div class="subtotal">395.000₫</div>
        </div>

        <!-- Sản phẩm 2 -->
        <div class="cart-item">
            <span class="item-check">
                <input type="checkbox" class="select-product">
            </span>
            <div class="product-info">
                <img src="https://static.skyshoptv.vn/catalog/San%20pham%20chi%20An/Bo%20coc%20su%20ham%20nong%20de%20dien/a7c7325aee46717ca4ef14251be5dd06.jpg" alt="Ấm giữ nhiệt">
                <div class="product-details">
                    <h3>Bộ cốc sứ kèm đế điện giữ nóng cao cấp</h3>
                </div>
            </div>
            <div class="price">100.000₫</div>
            <div class="quantity">
                <button class="qty-btn minus">-</button>
                <input type="text" value="1" class="qty-input">
                <button class="qty-btn plus">+</button>
            </div>
            <div class="subtotal">100.000₫</div>
        </div>
    </section>
    <!-- THÀNH TIỀN-->
    <aside class="cart-summary">
        <h2>TỔNG CỘNG GIỎ HÀNG</h2>
        <div class="summary-row">
            <span>Tạm tính</span>
            <span id="subtotal">495.000 ₫</span>
        </div>
        <div class="summary-row total">
            <span>Tổng cộng</span>
            <span id="total"><b>495.000 ₫</b></span>
        </div>
        <a href="thanhtoan.jsp" class="checkout-btn">Tiến hành thanh toán</a>
    </aside>
</div>

<!-- recomment -->
<div class="recommend-wrapper">
            <h2 class="recommet-title">Có thể bạn sẽ để tâm</h2>
        <div class="recomment">
                <div class="product-card">
            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">
            <p class="title">Bộ tranh gốm sứ</p>
            <p class="prices">2.500.000đ</p>
                 </div>

                <div class="product-card">
            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">
            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>
            <p class="prices">19.500.000đ</p>
                </div>

                <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">
            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>
            <p class="prices">4.500.000đ</p>
                </div>
                <div class="product-card">
            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">
            <p class="title">Bộ tranh gốm sứ</p>
            <p class="prices">2.500.000đ</p>
                </div>

                <div class="product-card">
            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">
            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>
            <p class="prices">19.500.000đ</p>
                </div>

                <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">
            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>
            <p class="prices">4.500.000đ</p>
                </div>
                <div class="product-card">
            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">
            <p class="title">Bộ tranh gốm sứ</p>
            <p class="prices">2.500.000đ</p>
                </div>

                <div class="product-card">
            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">
            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>
            <p class="prices">19.500.000đ</p>
                </div>

                <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">
            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>
            <p class="prices">4.500.000đ</p>
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
    // const subtotalEl = document.getElementById("subtotal");
    // const totalEl = document.getElementById("total");
    // const discountInput = document.getElementById("discount-code");
    // const applyBtn = document.getElementById("apply-discount");
    //
    // let subtotal = parseInt(subtotalEl.textContent.replace(/\./g, ""), 10);
    //
    // const discountCodes = {
    //     "GIAM10": 0.1,
    //     "SALE20": 0.2,
    //     "FREESHIP": 0.05
    // };
    //
    // function formatVND(number) {
    //     return number.toLocaleString("vi-VN");
    // }
    //
    // applyBtn.addEventListener("click", () => {
    //     const code = discountInput.value.trim().toUpperCase();
    //     const discount = discountCodes[code];
    //
    //     if (discount) {
    //         const newTotal = subtotal - subtotal * discount;
    //         totalEl.innerHTML = `<b>${formatVND(newTotal)}</b>`;
    //         alert(`Áp dụng mã "${code}" thành công! Giảm ${discount * 100}%`);
    //     } else {
    //         totalEl.innerHTML = `<b>${formatVND(subtotal)}</b>`;
    //         alert("Mã giảm giá không hợp lệ!");
    //     }
    // });
    // const subtotals = [395000, 100000];
    // const total = subtotals.reduce((a, b) => a + b, 0);
    // document.getElementById("subtotal").textContent = total.toLocaleString("vi-VN") + " ₫";
    // document.getElementById("total").textContent = total.toLocaleString("vi-VN") + " ₫";
</script>
</body>
</html>
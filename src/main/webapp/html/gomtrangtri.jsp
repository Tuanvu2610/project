<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/gomtrangtri.css">
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
        <li class="sub-item"><a href="../html/gomtrangtri.html">GỐM TRANG TRÍ</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a>Bình gốm bác tràng</a></li>
                    <li><a>Lọ hoa bác tràng</a></li>
                    <li><a>Dĩa sứ trang trí</a></li>
                    <li><a>Tượng gốm sứ</a></li>
                    <li><a>Bình hồ lô</a></li>
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
    <!-- Sản phẩm thường 1 -->
<section>
    <div>
        <p class="style-title">Mai Bình Tích Lộc</p>
        <div class="cover-product cursor">
            <div id="binhtichloc-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/100/516/168/files/mai-binh-tich-loc-cong-dao-dap-noi-gom-su-bat-trang-phuc-loc-vien-minh.jpg?v=1717772722956" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Mai bình tích lộc họa tiết công đào</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/100/516/168/files/mai-binh-tich-loc-cong-dao-dap-noi-gom-su-bat-trang-phuc-loc-vien-minh.jpg?v=1717772722956" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Mai bình tích lộc họa tiết công đào</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/100/516/168/files/mai-binh-tich-loc-cong-dao-dap-noi-gom-su-bat-trang-phuc-loc-vien-minh.jpg?v=1717772722956" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Mai bình tích lộc họa tiết công đào</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/100/516/168/files/mai-binh-tich-loc-cong-dao-dap-noi-gom-su-bat-trang-phuc-loc-vien-minh.jpg?v=1717772722956" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Mai bình tích lộc họa tiết công đào</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/100/516/168/files/mai-binh-tich-loc-cong-dao-dap-noi-gom-su-bat-trang-phuc-loc-vien-minh.jpg?v=1717772722956" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Mai bình tích lộc họa tiết công đào</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>
    <!-- Sản phẩm thường 2 -->
<section>
    <div>
        <p class="style-title">Bình Tỏi Tài Lộc</p>
        <div class="cover-product cursor">
            <div id="binhtoi-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://cdn.hstatic.net/files/200000781139/file/nh-tai-loc-ma-dao-thanh-cong-thuan-buom-xuoi-gio-huynh-bao-ve-vang__8_.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỏi Tài Mã Đáo Thành công</h3>
                        <div class="product-price padding">12.500.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://cdn.hstatic.net/products/200000781139/i-binh-tai-loc-ma-dao-thanh-cong-thuan-buom-xuoi-gio-kim-bao-ve-vang-1_c19c68fa2ed84cc4b9bfb8adc289de20_medium.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỏi Tài Mã Đáo Thành công</h3>
                        <div class="product-price padding">12.500.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://cdn.hstatic.net/files/200000781139/file/nh-tai-loc-ma-dao-thanh-cong-thuan-buom-xuoi-gio-huynh-bao-ve-vang__8_.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỏi Tài Mã Đáo Thành công</h3>
                        <div class="product-price padding">12.500.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://cdn.hstatic.net/products/200000781139/i-binh-tai-loc-ma-dao-thanh-cong-thuan-buom-xuoi-gio-kim-bao-ve-vang-1_c19c68fa2ed84cc4b9bfb8adc289de20_medium.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỏi Tài Mã Đáo Thành công</h3>
                        <div class="product-price padding">12.500.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://cdn.hstatic.net/files/200000781139/file/nh-tai-loc-ma-dao-thanh-cong-thuan-buom-xuoi-gio-huynh-bao-ve-vang__8_.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỏi Tài Mã Đáo Thành công</h3>
                        <div class="product-price padding">12.500.000đ</div>
                    </div>
                </a>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>
    <!-- Sản phẩm thường 3 -->
<section>
    <div>
        <p class="style-title">Bình Tỳ Bà</p>
        <div class="cover-product cursor">
            <div id="tyba-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/374/750/products/z5273681549283-e796d19a5d52d8f57fdd0f850b8a5071.jpg?v=1711165548313" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỳ Bà Tứ Cảnh</h3>
                        <div class="product-price padding">2.199.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/374/750/products/z5273681549283-e796d19a5d52d8f57fdd0f850b8a5071.jpg?v=1711165548313" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỳ Bà Tứ Cảnh</h3>
                        <div class="product-price padding">2.199.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/374/750/products/z5273681549283-e796d19a5d52d8f57fdd0f850b8a5071.jpg?v=1711165548313" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỳ Bà Tứ Cảnh</h3>
                        <div class="product-price padding">2.199.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/374/750/products/z5273681549283-e796d19a5d52d8f57fdd0f850b8a5071.jpg?v=1711165548313" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỳ Bà Tứ Cảnh</h3>
                        <div class="product-price padding">2.199.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://bizweb.dktcdn.net/thumb/large/100/374/750/products/z5273681549283-e796d19a5d52d8f57fdd0f850b8a5071.jpg?v=1711165548313" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Tỳ Bà Tứ Cảnh</h3>
                        <div class="product-price padding">2.199.000đ</div>
                    </div>
                </a>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>
    <!-- Sản phẩm thường 4 -->
<section>
    <div>
        <p class="style-title">Bình Hồ Lô</p>
        <div class="cover-product cursor">
            <div id="holo-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomthienlong.vn/wp-content/uploads/binh-ho-lo-dap-noi-ve-vang-4-768x960.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Hồ Lô phong thủy cao cấp vẽ vàng Thuận Buồm Trường</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomthienlong.vn/wp-content/uploads/binh-ho-lo-dap-noi-ve-vang-4-768x960.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Hồ Lô phong thủy cao cấp vẽ vàng Thuận Buồm Trường</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomthienlong.vn/wp-content/uploads/binh-ho-lo-dap-noi-ve-vang-4-768x960.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Hồ Lô phong thủy cao cấp vẽ vàng Thuận Buồm Trường</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomthienlong.vn/wp-content/uploads/binh-ho-lo-dap-noi-ve-vang-4-768x960.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Hồ Lô phong thủy cao cấp vẽ vàng Thuận Buồm Trường</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomthienlong.vn/wp-content/uploads/binh-ho-lo-dap-noi-ve-vang-4-768x960.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Bình Hồ Lô phong thủy cao cấp vẽ vàng Thuận Buồm Trường</h3>
                        <div class="product-price padding">9.000.000đ</div>
                    </div>
                </a>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>
    <!-- Sản phẩm thường 5 -->
<section>
    <div>
        <p class="style-title">Tượng Gốm Sứ</p>
        <div class="cover-product cursor">
            <div id="tuong-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomsutrangtri.vn/datafiles/22441/upload/images/C%C3%81C%20M%E1%BA%AAU%20T%C6%AF%E1%BB%A2NG/T%C6%AF%E1%BB%A2NG%20PH%C3%9AC%20L%E1%BB%98C%20TH%E1%BB%8C/PLT014/6.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tượng sứ Tam Đa</h3>
                        <div class="product-price padding">13.900.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomsutrangtri.vn/datafiles/22441/upload/images/C%C3%81C%20M%E1%BA%AAU%20T%C6%AF%E1%BB%A2NG/T%C6%AF%E1%BB%A2NG%20PH%C3%9AC%20L%E1%BB%98C%20TH%E1%BB%8C/PLT014/6.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tượng sứ Tam Đa</h3>
                        <div class="product-price padding">13.900.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomsutrangtri.vn/datafiles/22441/upload/images/C%C3%81C%20M%E1%BA%AAU%20T%C6%AF%E1%BB%A2NG/T%C6%AF%E1%BB%A2NG%20PH%C3%9AC%20L%E1%BB%98C%20TH%E1%BB%8C/PLT014/6.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tượng sứ Tam Đa</h3>
                        <div class="product-price padding">13.900.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomsutrangtri.vn/datafiles/22441/upload/images/C%C3%81C%20M%E1%BA%AAU%20T%C6%AF%E1%BB%A2NG/T%C6%AF%E1%BB%A2NG%20PH%C3%9AC%20L%E1%BB%98C%20TH%E1%BB%8C/PLT014/6.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tượng sứ Tam Đa</h3>
                        <div class="product-price padding">13.900.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://gomsutrangtri.vn/datafiles/22441/upload/images/C%C3%81C%20M%E1%BA%AAU%20T%C6%AF%E1%BB%A2NG/T%C6%AF%E1%BB%A2NG%20PH%C3%9AC%20L%E1%BB%98C%20TH%E1%BB%8C/PLT014/6.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tượng sứ Tam Đa</h3>
                        <div class="product-price padding">13.900.000đ</div>
                    </div>
                </a>
            </div>
            <button>Xem tất cả &#9654;</button>
        </div>
    </div>
</section>
    <!-- Sản phẩm thường 6 -->
<section>
    <div>
        <p class="style-title">Đĩa Cảnh Cao Cấp</p>
        <div class="cover-product cursor">
            <div id="diacanh-product-list" class="product-list">
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://quatangphuongvu.com/wp-content/uploads/2025/06/dia-tranh-ca-chep-hoa-sen-ma-dat-vang-24k.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tranh đĩa cá chép hoa sen dát vàng</h3>
                        <div class="product-price padding">6.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://quatangphuongvu.com/wp-content/uploads/2025/06/dia-tranh-ca-chep-hoa-sen-ma-dat-vang-24k.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tranh đĩa cá chép hoa sen dát vàng</h3>
                        <div class="product-price padding">6.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://quatangphuongvu.com/wp-content/uploads/2025/06/dia-tranh-ca-chep-hoa-sen-ma-dat-vang-24k.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tranh đĩa cá chép hoa sen dát vàng</h3>
                        <div class="product-price padding">6.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://quatangphuongvu.com/wp-content/uploads/2025/06/dia-tranh-ca-chep-hoa-sen-ma-dat-vang-24k.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tranh đĩa cá chép hoa sen dát vàng</h3>
                        <div class="product-price padding">6.000.000đ</div>
                    </div>
                </a>
                <a href="ctsp.jsp">
                    <div class="product-card">
                        <div class="product-img-wrapper">
                            <img src="https://quatangphuongvu.com/wp-content/uploads/2025/06/dia-tranh-ca-chep-hoa-sen-ma-dat-vang-24k.jpg" alt="">
                            <div class="quick-view">Xem chi tiết</div>
                        </div>
                        <h3 class="product-name padding style-name">Tranh đĩa cá chép hoa sen dát vàng</h3>
                        <div class="product-price padding">6.000.000đ</div>
                    </div>
                </a>
            </div>
            <button>Xem tất cả &#9654;</button>
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
</body>
</html>
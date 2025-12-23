<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="css/ctsanpham.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>

        .star5::before { width: ${(star5 * 1.0 / totalReview) * 100 }%;}
        .star4::before { width: ${(star4 * 100.0) / totalReview}%;}
        .star3::before { width: ${(star3 * 100.0) / totalReview}%;}
        .star2::before { width: ${(star2 * 100.0) / totalReview}%;}
        .star1::before { width: ${(star1 * 100.0) / totalReview}%;}
    </style>
</head>
<body>
<!--header-->
<header class="pageHome-header" id="header-home">

    <a href="../index.jsp" class="text-header">
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
<!--body-->
<section class="cover-all-info">
    <div class="info-container container-sp">
        <div class="product-image">
            <img src="${p.img}" alt="">
        </div>
        <div class="product-title">
            <h1>${p.name}</h1>
            <div class="rating">
                <span class="stars">★★★★★</span>
                <span>${((star5 * 5) + (star4 * 4) + (star3 * 3) + (star2 * 2) + (star1)) * 1.0 / totalReview}</span>
                <span>|</span>
                <span>(${totalReview} đánh giá)</span>
                <span>|</span>
                <span>Đã bán 12</span>
            </div>
            <div class="price">
                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
            </div>
            <div class="info-box">
                <h3>Thông Tin Chi Tiết</h3>
                <div class="info-content">
                    <ul>
                        <li>
                            <span class="icon"><i class="fas fa-gem"></i></span>
                            <strong>Chất liệu</strong>
                            <span>${p.material}</span>
                        </li>
                        <li>
                            <span class="icon"><i class="fas fa-ruler-combined"></i></span>
                            <strong>Kích thước</strong>
                            <span>${p.size}</span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="quantity-control">
                <button type="button" class="btn-decrease">&minus;</button>
                <input type="text" class="quantity-input" value="1">
                <button type="button" class="btn-increase">&plus;</button>
            </div>

            <div class="action-buttons">
                <button class="btn-add-cart">
                    THÊM VÀO GIỎ
                    <span>Mua thêm sản phẩm khác</span>
                </button>
                <button class="btn-buy-now">
                    ĐẶT HÀNG NHANH
                    <span>Giao tận nơi, nhận hàng trả tiền</span>
                </button>
            </div>
        </div>
    </div>
</section>
<section class="cover-all-feedback">
    <div class="container-sp">
        <div class="title-feedback">
            <p class="title">Đánh giá sản phẩm</p>
            <p>Xem tất cả ></p>
        </div>
        <div class="cover-feedback">
            <div class="left-feedback">${((star5 * 5) + (star4 * 4) + (star3 * 3) + (star2 * 2) + (star1)) * 1.0 / totalReview }<p class="stars">★★★★★</p></div>
            <div class="right-feedback">
                <div class="cover-line">5 <div class="line-feedback star5"></div></div>
                <div class="cover-line">4 <div class="line-feedback star4"></div></div>
                <div class="cover-line">3 <div class="line-feedback star3"></div></div>
                <div class="cover-line">2 <div class="line-feedback star2"></div></div>
                <div class="cover-line">1 <div class="line-feedback star1"></div></div>
            </div>
        </div>
        <div class="cover-comment">
            <c:forEach var="h" items="${rw}">
                <div class="cmt">
                    <div class="cover-user">
                        <img src="https://www.svgrepo.com/show/452030/avatar-default.svg" alt="">
                        <div class="feedback-user">
                            <span>${h.name}</span>
                            <div class="cover-feedback-date">
                                <p class="stars-comment">
                                    <c:forEach begin="1" end="${h.stars}">★</c:forEach><c:forEach begin="1" end="${5 - h.stars}">☆</c:forEach>
                                </p>
                                <span class="date">${h.created_at}</span>
                            </div>
                        </div>
                    </div>
                    <div class="cmt-user">${h.content}</div>
                </div>
            </c:forEach>
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
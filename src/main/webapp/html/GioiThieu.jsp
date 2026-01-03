<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="../css/GioiThieu.css">
    <link rel="stylesheet" href="../css/style.css">

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

<!-- Container -->
<div class="about-container">
    <section class="intro-section">
        <div class="intro-container">
            <div class="intro-text">
                <h2>Gốm Sứ Bát Tràng – Tinh hoa làng nghề Việt</h2>
                <p>
                    Gốm Sứ Bát Tràng tự hào là thương hiệu chuyên cung cấp sản phẩm gốm sứ thủ công truyền thống,
                    được làm ra từ bàn tay khéo léo của các nghệ nhân làng nghề Bát Tràng.
                </p>
                <p>
                    Với sự kết hợp hài hòa giữa nét đẹp cổ truyền và phong cách hiện đại,
                    chúng tôi mang đến cho khách hàng những sản phẩm chất lượng cao, tinh tế và mang đậm hồn Việt.
                </p>
            </div>

            <div class="intro-image">
                <img src="https://static.vinwonders.com/production/bao-tang-gom-bat-trang-top-banner.jpg">
            </div>
        </div>
    </section>



    <section class="about-content">
        <h2>Sứ mệnh của chúng tôi</h2>
        <p>
            Sứ mệnh của Gốm Sứ là mang đến những sản phẩm thủ công tinh xảo, kết hợp giữa giá trị văn hoá truyền thống và sự sáng tạo hiện đại.
            Chúng tôi hướng đến việc lan tỏa tinh hoa gốm Việt đến với mọi gia đình trong và ngoài nước.
        </p>

        <h2>Giá trị cốt lõi</h2>
        <div class="values">
            <div class="value-box">
                <h3>CHẤT LƯỢNG</h3>
                <p>Sản phẩm được lựa chọn kỹ lưỡng từ nguyên liệu đến quy trình nung men, đảm bảo độ bền và tính thẩm mỹ cao.</p>
            </div>
            <div class="value-box">
                <h3>THỦ CÔNG TRUYỀN THỐNG</h3>
                <p>Mỗi sản phẩm là một tác phẩm nghệ thuật được tạo nên từ bàn tay của nghệ nhân Bát Tràng.</p>
            </div>
            <div class="value-box">
                <h3>SÁNG TẠO</h3>
                <p>Không ngừng đổi mới kiểu dáng, màu men, hoạ tiết để phù hợp với xu hướng hiện đại.</p>
            </div>
        </div>
    </section>

    <section class="about-section">
        <h2>Danh Mục Sản Phẩm web Sàn Gốm Bát Tràng Bát Tràng Sứ Bát Tràng</h2>
        <p>
            chúng tôi cung cấp đa dạng các sản phẩm
            <strong>gốm sứ Bát Tràng</strong>, bao gồm:
        </p>
        <h3>Gốm Sứ Gia Dụng</h3>
        <p>
            <strong>Gốm sứ gia dụng</strong> bao gồm nhiều sản phẩm tiện ích cho gia đình như:
            bát đĩa, bộ ấm chén, ly sứ, chum rượu, hũ đựng gạo, lọ bia, khay mứt,
            đèn thờ, lọ bình hoa, bình đựng nước, nồi đất, lọ tinh dầu, hũ muối cà,
            phin cafe, nậm rượu và dụng cụ nhà bếp.
            <br>
            Những sản phẩm này không chỉ hữu dụng mà còn mang lại vẻ đẹp truyền thống cho không gian sống.
        </p>
        <div class="about-image">
            <img src="https://img.websosanh.vn/v2/users/review/images/cach-chon-mua-do-dung-gom-su/chf1xu0y4fart.jpg">
        </div>
        <h4>Gốm Sứ Thờ Cúng</h4>
        <p>
            <Strong>Gốm sứ thờ cúng</Strong>  bao gồm đầy đủ các món đồ cần thiết cho không gian thờ cúng như
            <Strong> bộ đỉnh hạc, bát hương, mâm bồng, bộ kỷ thờ, lọ hoa thờ, cây đèn nến, choé thờ, đèn dầu thờ,
                nậm rượu, ống hương thờ và bát thờ.</Strong> Những sản phẩm này không chỉ mang giá trị tâm linh mà
            còn thể hiện sự kính trọng và lòng thành của con cháu đối với tổ tiên.
        </p>
        <div class="about-image">
            <img src="https://product.hstatic.net/200000761325/product/z4923326074402_f9a0ea9cc6c7f481fbbbc3af9dfa9d74_ed77dffdaed04b399ebac659c4f999c2_master.jpg">
        </div>

        <h5>Gốm Sứ Trang trí</h5>
        <p>
            <Strong>Gốm sứ trang trí</Strong>  là sự lựa chọn hoàn hảo để làm đẹp ngôi nhà với các sản phẩm như
            <String>bình lọ hoa, bình hút lộc, bình tỏi, tranh gốm sứ, đĩa sứ, lục bình, đèn ngủ, mai bình, choé,
                bình tỳ bà, tượng gốm sứ, thác nước, lu chậu và đôn gỗ.</String> Mỗi sản phẩm mang đậm chất nghệ thuật
            và thể hiện sự tinh tế, tỉ mỉ của người thợ gốm.
        </p>
        <div class="about-image">
            <img src="https://img.lazcdn.com/g/ff/kf/S19a4bd106171451a8b45a7b7ec303fb7c.jpg_720x720q80.jpg">
        </div>

        <h6>Gốm Sứ Quà Tặng</h6>
        <p>
            <Strong>Gốm sứ Quà Tặng</Strong>   là lựa chọn hoàn hảo cho các dịp đặc biệt với các sản phẩm
            như <Strong>ấm chén in logo, ly sứ in logo, bộ bát đĩa, bình hút lộc in logo, lọ hoa quà tặng,
            heo đất, đĩa sứ, đồng hồ sứ và hộp quà tặng.</Strong> Những món quà này không chỉ mang lại niềm
            vui cho người nhận mà còn thể hiện sự tinh tế và tấm lòng của người tặng.
        </p>
        <div class="about-image">
            <img src="https://gomsubattrang.vn/uploads/data/20/imgproducts/2021061123305_60780.png">
        </div>

        <section class="about-section">
            <h2>DỊCH VỤ TẠI GỐM SỨ NÔNG LÂM</h2>
            <p>
                ...
            </p>
            <section class="about-end">
                <p>
                    Cảm ơn quý khách đã tin tưởng lựa chọn sản phẩm của Gốm Sứ Bát Tràng.
                    Chúng tôi cam kết mang đến giá trị tốt nhất cho từng khách hàng!
                </p>
            </section>
        </section>
    </section>
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
<script src="../js/javascript.js"></script>
</body>
</html>
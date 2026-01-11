<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .container-page {
            display: flex;
        }
        .cover-left-page {
            width: 30%;
            display: flex;
            flex-direction: column;
            background-color: #0d8e02c7;
        }
        .info-avatar img {
            width: 50px;
            padding: 20px;
            background-color: #ccc;
            border-radius: 50%;
        }
        .name {
            color: #fff;
            font-size: 16px;
            font-weight: bold;
        }
        .info-avatar {
            display: flex;
            gap: 20px;
            padding: 20px 50px;
            border-bottom: 1px solid #cccccc6b;
        }
        .nav-links {
            padding: 10px;
            list-style: none;
        }
        .nav-links li {
            margin: 15px 0;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
        }
        .active {
            background: rgba(255, 255, 255, 0.1);
        }
        .nav-links a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 15px;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.3s;
        }
        .nav-links img {
            width: 25px;
        }
        body {
            font-family: Arial, sans-serif;
            background: #f6f7fb;
            margin: 0;
            padding: 0;
        }

        .support-container {
            max-width: 800px;
            margin: 60px auto;
            background: #fff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
        }

        .support-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .support-header i {
            font-size: 48px;
            color: #333;
            margin-bottom: 15px;
        }

        .support-header h1 {
            margin: 10px 0;
        }

        .support-header p {
            color: #666;
        }

        .support-info {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 15px;
            color: #555;
        }

        .support-info i {
            margin-right: 8px;
        }

        .support-form h2 {
            margin-bottom: 10px;
        }

        .support-form p {
            color: #777;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: none;
            background: #f1f2f4;
            font-size: 14px;
            outline: none;
        }

        .form-group textarea {
            resize: none;
            height: 120px;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            border-radius: 12px;
            border: none;
            background: linear-gradient(90deg, #111, #333);
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            opacity: 0.9;
        }

        .success-alert {
            background: #e6fffa;
            border-left: 6px solid #22c55e;
            color: #065f46;
            padding: 16px 20px;
            border-radius: 12px;
            margin: 30px auto;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 12px;
            max-width: 800px;
        }
        .success-alert i {
            color: #22c55e;
            font-size: 20px;
        }
    </style>

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

<section class="page-body">
    <div class="container-page">
        <div class="cover-left-page">
            <div class="info-avatar">
                <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                <div class="name">
                    <p>Nguyen Van A</p>
                    <p>0342104524</p>
                </div>
            </div>
            <ul class="nav-links">
                <li><a href="myinfo.jsp"><i class="fa fa-user user-icon"></i>
                    <span>Thông tin của tôi</span></a></li>
                <li><a href="trangthaidon.jsp" class="active"><i class="fa fa-shopping-bag order-icon"></i>
                    <span>Đơn mua</span></a></li>
                <li><a href="#"><i class="fa fa-headset support-icon"></i>
                    <span>Yêu cầu hỗ trợ</span></a></li>
            </ul>
        </div>

        <div class="support-container">

            <!-- Header -->
            <div class="support-header">
                <i class="fa-solid fa-headset"></i>
                <h1>Trung Tâm Hỗ Trợ</h1>
                <p>
                    Chúng tôi luôn sẵn sàng hỗ trợ bạn.
                    Gửi yêu cầu của bạn và đội ngũ hỗ trợ sẽ phản hồi trong thời gian sớm nhất.
                </p>

                <div class="support-info">
                    <div>
                        <i class="fa-solid fa-envelope"  style="font-size:16px"></i>
                        support@company.com
                    </div>
                    <div>
                        <i class="fa-solid fa-clock"  style="font-size:16px"></i>
                        24/7 Hỗ trợ
                    </div>
                </div>
            </div>

            <c:if test="${not empty sessionScope.flash_success}">
                <div class="success-alert">
                    <i class="fa-solid fa-circle-check"></i>
                    <span>${sessionScope.flash_success}</span>
                </div>
                <c:remove var="flash_success" scope="session"/>
            </c:if>

            <!-- Form -->
            <div class="support-form">
                <h2>Yêu Cầu Hỗ Trợ</h2>
                <p>Điền thông tin bên dưới và chúng tôi sẽ liên hệ với bạn sớm nhất có thể</p>
                <form action="${pageContext.request.contextPath}/support"
                      method="post"
                      enctype="multipart/form-data">

                    <div class="form-group">
                        <label>Họ và Tên *</label>
                        <input type="text"
                               name="fullName"
                               placeholder="Nhập họ và tên của bạn"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email"
                               name="email"
                               placeholder="example@email.com"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Loại Vấn Đề *</label>
                        <select name="category" required>
                            <option value="Bao_hanh"> Bảo hành</option>
                            <option value="Doi_tra"> Đổi trả</option>
                            <option value="Hoan_tien">Hoàn tiền</option>
                            <option value="Khac">Khác</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Tiêu đề *</label>
                        <input type="text"
                               name="title"
                               placeholder="Nhập tiêu đề ngắn gọn"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Mô Tả Chi Tiết *</label>
                        <textarea name="description"
                                  rows="5"
                                  placeholder="Vui lòng mô tả vấn đề của bạn chi tiết..."
                                  required></textarea>
                    </div>

                    <div class="form-group">
                        <label>Hình ảnh đính kèm (nếu có)</label>
                        <input type="file"
                               name="supportImage"
                               accept="image/*">
                        <small class="hint">Hỗ trợ JPG, PNG. Tối đa 5MB.</small>
                    </div>

                    <button type="submit" class="submit-btn">
                        Gửi Yêu Cầu
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>


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

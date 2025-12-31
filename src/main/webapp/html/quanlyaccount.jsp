<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/quanly.css">
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
        <li><a href="../html/quanlyaccount.html">ADMIN CONTROL</a></li>
    </ul>
</nav>

<!--body-->
<section class="container-quanly">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="#" class="active"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="thongke.jsp"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="kho.jsp"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="main-content">
        <div class="header-control">
            <h1><i class="fas fa-users-cog"></i> Quản lý Người dùng</h1>
        </div>
        <div class="stats-container">
            <div class="stat-card">
                <div class="stat-icon total">
                    <i class="fas fa-users"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalAcc}</h3>
                    <p>Tổng số User</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon active">
                    <i class="fas fa-user-check"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalActive}</h3>
                    <p>User Active</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon pending">
                    <i class="fas fa-user-clock"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalPending}</h3>
                    <p>Đang chờ xử lý</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon banned">
                    <i class="fas fa-user-slash"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalBanned}</h3>
                    <p>User Bị khoá</p>
                </div>
            </div>
        </div>
        <div class="controls">
            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="text" placeholder="Tìm kiếm user...">
            </div>
            <div class="action-buttons">
                <button class="btn btn-primary"><i class="fas fa-plus"></i> Thêm User</button>
            </div>
        </div>
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Admin</option>
                    <option>User</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Trạng thái:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Active</option>
                    <option>Pending</option>
                    <option>Banned</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo tên A-Z</option>
                    <option>Theo tên Z-A</option>
                </select>
            </div>
        </div>
        <div class="table-container">
            <table>
                <thead class="title-table">
                <tr>
                    <th>ID</th>
                    <th>User</th>
                    <th>Email</th>
                    <th>Chức năng</th>
                    <th>Trạng thái</th>
                    <th>Ngày tham gia</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="p" items="${listAcc}">
                    <tr class="view" data-id="${p.id}">
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.username}</td>
                        <td><span class="role admin">${p.role}</span></td>
                        <td><span class="status ${p.status}">${p.status}</span></td>
                        <td>${p.registration_date}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <c:set var="start" value="${currentPage - 2}" />
        <c:set var="end" value="${currentPage + 2}" />

        <c:if test="${start < 1}">
            <c:set var="start" value="1" />
        </c:if>

        <c:if test="${end > totalPages}">
            <c:set var="end" value="${totalPages}" />
        </c:if>

        <div class="pagination">
            <c:if test="${currentPage > 1}">
                <a href="quan-ly-account?page=${currentPage - 1}">&laquo;</a>
            </c:if>
            <c:forEach begin="${start}" end="${end}" var="i">
                <a href="quan-ly-account?page=${i}"
                   class="${i == currentPage ? 'active' : ''}">
                        ${i}
                </a>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <a href="quan-ly-account?page=${currentPage + 1}">&raquo;</a>
            </c:if>
        </div>
    </div>
</section>
<!--modal-->
<section class="overlay" style="display: none;">
    <div class="container-modal">
        <div class="cover-modal">
            <span class="exit-btn">&times;</span>
            <p id="role"></p>
            <div class="cover-allinfo">
                <div class="avatar-name">
                    <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                    <p style="margin: 0" id="name"></p>
                </div>
                <div class="cover-info">
                    <p><img src="https://www.svgrepo.com/show/535565/phone.svg" alt="">Phone: <span id="phone"></span></p>
                    <p><img src="https://www.svgrepo.com/show/533217/mail-open-alt-1.svg" alt="">Email: <span id="email"></span></p>
                    <p><img src="https://www.svgrepo.com/show/509759/birthday-cupcake.svg" alt="">Birthday: <span id="birthday"></span></p>
                    <p><img src="https://www.svgrepo.com/show/535465/key-skeleton.svg" alt="">Role: <span id="role2"></span></p>
                    <p><img src="https://www.svgrepo.com/show/497557/status.svg" alt="">Status: <span id="status"></span></p>
                </div>
                <div class="cover-active">
                    <p><img src="https://www.svgrepo.com/show/502605/date-range.svg" alt="">Đăng ký: <span id="date"></span></p>
                </div>
                <div class="cover-btn">
                    <button class="edit"><img src="img/edit-svgrepo-com.png">️Edit</button>
                    <button class="remove"><img src="img/delete-svgrepo-com.svg">Remove</button>
                </div>
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
<script>
    document.querySelectorAll('.view').forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.stopPropagation();
            const id = this.dataset.id;

            fetch('${pageContext.request.contextPath}/account-detail?id=' + id)
                .then(res => res.json())
                .then(acc => {
                    document.getElementById('name').innerText = acc.name;
                    document.getElementById('email').innerText = acc.username;
                    document.getElementById('phone').innerText = acc.phone;
                    document.getElementById('birthday').innerText = acc.date_of_birth;
                    document.getElementById('role').innerText = acc.role.toUpperCase();
                    document.getElementById('role2').innerText = acc.role;
                    document.getElementById('status').innerText = acc.status;
                    document.getElementById('date').innerText = acc.registration_date;
                    document.querySelector('.overlay').style.display = 'block';
                });
        });
    });
    document.querySelector('.exit-btn').addEventListener('click', () => {
        document.querySelector('.overlay').style.display = 'none';
    });
</script>

</body>
</html>
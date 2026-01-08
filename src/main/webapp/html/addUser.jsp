<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/01/2026
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Gốm Sứ NÔNG LÂM</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addUser.css">
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

<!--body-->
<section class="container-quanly">
  <div class="sidebar">
    <div class="title">
      <h2><span>ADMIN CONTROL</span></h2>
    </div>
    <ul class="nav-links">
      <li><a href="/quan-ly-account" class="active"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
      <li><a href="/thong-ke"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
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
    <c:if test="${not empty param.msg}">
      <div class="thongbao thongbao-success">
        <c:choose>
          <c:when test="${param.msg == 'exist'}">⚠️Username đã tồn tại</c:when>
          <c:when test="${param.msg == 'addSuccess'}">✅ Thêm tài khoản thành công</c:when>
          <c:when test="${param.msg == 'error'}">⚠️ Thêm tài khoản thất bại</c:when>
          <c:otherwise>❌ Có lỗi xảy ra</c:otherwise>
        </c:choose>
      </div>
    </c:if>
    <div class="card-add">
      <div class="card-header">
        <h3 class="card-title">
          <i class="fa fa-user-plus"></i> Thêm Tài Khoản Mới
        </h3>
      </div>

      <div class="card-body">
        <form action="them-tai-khoan" method="POST">
          <div class="form-section-title">Thông tin cá nhân</div>

          <div class="form-row">
            <div class="col">
              <div class="form-group">
                <label>Họ và tên <span class="required">*</span></label>
                <input class="size-input" type="text" name="name" placeholder="Nhập họ tên đầy đủ" required>
              </div>
            </div>
            <div class="col">
              <div class="form-group">
                <label>Số điện thoại</label>
                <input class="size-input" type="text" name="phone" placeholder="Nhập số điện thoại">
              </div>
            </div>
          </div>

          <div class="form-row">
            <div class="col col-two"> <div class="form-group">
              <label>Email</label>
              <input class="size-input" type="email" name="email" placeholder="example@gmail.com">
            </div>
            </div>
            <div class="col">
              <div class="form-group">
                <label>Giới tính</label>
                <select name="sex" class="size-input">
                  <option value="Male">Nam</option>
                  <option value="Female">Nữ</option>
                  <option value="Other">Khác</option>
                </select>
              </div>
            </div>
            <div class="col">
              <div class="form-group">
                <label>Ngày sinh</label>
                <input class="size-input" type="date" name="date_of_birth">
              </div>
            </div>
          </div>

          <div class="line"></div> <div class="form-section-title">Cấu hình tài khoản</div>

          <div class="form-row">
            <div class="col">
              <div class="form-group">
                <label>Tên đăng nhập <span class="required">*</span></label>
                <input class="size-input" type="text" name="username" placeholder="Viết liền không dấu" required>
              </div>
            </div>
            <div class="col">
              <div class="form-group">
                <label>Mật khẩu <span class="required">*</span></label>
                <input class="size-input" type="password" name="password" placeholder="••••••••"  autocomplete="new-password" required>
              </div>
            </div>
          </div>

          <div class="form-row">
            <div class="col">
              <div class="form-group">
                <label>Vai trò (Role)</label>
                <select name="role" class="size-input">
                  <option value="user">User (Khách hàng)</option>
                  <option value="admin">Admin (Quản trị viên)</option>
                </select>
              </div>
            </div>
            <div class="col">
              <div class="form-group">
                <label>Trạng thái</label>
                <select name="status" class="size-input">
                  <option value="active">Active (Hoạt động)</option>
                  <option value="pending">Pending (Chờ duyệt)</option>
                  <option value="banned">Banned (Bị khóa)</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-actions">
            <a href="/quan-ly-account" class="btn btn-cancel">Hủy bỏ</a>
            <button type="submit" class="btn btn-save">
              <i class="fa fa-save"></i> Lưu tài khoản
            </button>
          </div>
        </form>
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
  if (window.location.search.includes('msg=')) {
    const url = new URL(window.location.href);
    url.searchParams.delete('msg');

    window.history.replaceState({}, document.title, url.pathname + url.search);
  }
</script>
</body>
</html>

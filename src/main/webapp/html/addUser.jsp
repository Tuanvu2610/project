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
<jsp:include page="/header"/>
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
<jsp:include page="/common/footer.jsp"/>
<script>
  if (window.location.search.includes('msg=')) {
    const url = new URL(window.location.href);
    url.searchParams.delete('msg');

    window.history.replaceState({}, document.title, url.pathname + url.search);
  }
</script>
</body>
</html>

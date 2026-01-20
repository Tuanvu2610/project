<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gốm sứ NÔNG LÂM</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dangnhap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/bootstrap-icons.min.css">

</head>

<body>
<!--header-->
<header class="pageHome-header" id="header-home">
  <a href="#" class="text-header">
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
    <a href="gio-hang" class="btn-header cart-btn">
      <i class="fas fa-shopping-cart"></i>
      <span>Giỏ hàng</span>
      <span class="cart-badge">  ${empty sessionScope.cart ? 0 : sessionScope.cart.totalQuantity}</span>
    </a>
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
<div class="icon-page">
  <a href="https://zalo.me/" target="_blank" class="icon-zalo style-icon">
    <span class="text">Chat Zalo</span>
    <img src="https://upload.wikimedia.org/wikipedia/commons/9/91/Icon_of_Zalo.svg" alt="Zalo">
  </a>
</div>

<div class="icon-page">
  <a href="#" class="icon-phone style-icon">
    <span class="text">Phone: 0987.654.321</span>
    <i class="fa-solid fa-phone" style="padding-right: 3px;"></i>
  </a>
</div>
</body>
</html>

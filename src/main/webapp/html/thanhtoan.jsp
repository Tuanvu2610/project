<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thanh Toán</title>
    <link rel="stylesheet" href="../css/thanhtoan.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/common/header.jsp"/>
<!-- content -->
<section class="checkout-container">
    <section class="shipping-info">
        <h2>📍 Địa Chỉ Nhận Hàng</h2>
        <p><strong>${sessionScope.auth.user.name}</strong> ${sessionScope.auth.user.phone}</p>
        <p>
            ${empty fullAddress ? "Chưa có địa chỉ" : fullAddress}
        </p>
        <a href="#" class="change-btn">Thay đổi</a>
    </section>

    <section class="product-list">
        <h2>Sản phẩm</h2>
        <c:forEach items="${checkoutItems}" var="item">
            <div class="product-item">
                <img src="${item.product.img}" alt="">
                <div class="product-detail">
                    <p class="product-name">${item.product.name}</p>
                </div>
                <p class="product-price"><fmt:formatNumber value="${item.product.price_sale}" groupingUsed="true"/>₫</p>
                <p class="product-qty">x${item.quantity}</p>
                <p class="product-total"><fmt:formatNumber value="${item.quantity * item.product.price_sale}" groupingUsed="true"/>₫</p>
            </div>
        </c:forEach>
    </section>
    <section class="voucher-box">
        <div class="voucher-header">
            <h2><i class="icon">🏷️</i>Voucher ưu đãi</h2>
        </div>
        <div class="voucher-input">
            <input type="text" placeholder="Nhập mã giảm giá">
            <button>Áp dụng</button>
        </div>
    </section>
    <section class="payment-method">
        <h2>Phương thức thanh toán</h2>
        <div class="method-row">
            <span>Thanh toán khi nhận hàng</span>
            <a href="#" class="change-btn">Thay đổi</a>
        </div>
    </section>

    <section class="summary">
        <div class="summary-row">
            <span>Tổng tiền hàng</span>
            <span><fmt:formatNumber value="${sessionScope.cart.total}" groupingUsed="true"/>₫</span>
        </div>
        <div class="summary-row">
            <span>Phí vận chuyển</span>
            <span>20.000₫</span>
        </div>
        <div class="summary-row total">
            <span>Tổng thanh toán</span>
            <span class="highlight"><fmt:formatNumber value="${sessionScope.cart.total - 20000}" groupingUsed="true"/>₫</span>
        </div>
        <form action="DatHang" method="post"
              onsubmit="return confirm('Xác nhận đặt hàng?')">
            <button type="submit" class="checkout-btn">Đặt hàng</button>
        </form>
    </section>
</section>

<!--footer-->
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
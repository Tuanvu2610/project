<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<jsp:include page="/header"/>
<!-- content -->
<form method="post" action="${pageContext.request.contextPath}/thanhtoan">
<div class="cart-container">
    <!-- SẢN PHẨM -->
    <section class="cart-items">
        <h2>SẢN PHẨM</h2>
        <table  class="cart-header">
            <thead>
            <tr>
                <th style="width:40px"><input type="checkbox" id="checkall"></th>
                <th>SẢN PHẨM</th>
                <th>GIÁ</th>
                <th>SỐ LƯỢNG</th>
                <th>TẠM TÍNH</th>
                <th style="width:40px"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${sessionScope.cart.items}" var="ci">
                <tr class="cart-item" id="row-${ci.product.id}">
                    <td>
                        <input type="checkbox" name="checkedIds" value="${ci.product.id}" data-id="${ci.product.id}" class="select-product" ${ci.checked ? "checked" : ""}>
                    </td>
                    <td class="product-info">
                        <img src="${ci.product.img}" alt="" width="80">
                        <div class="product-details">
                            <strong>${ci.product.name}</strong>
                        </div>
                    </td>
                    <td class="price">
                        <fmt:formatNumber value="${ci.product.price_sale}" groupingUsed="true"/>₫
                    </td>
                    <td class="quantity">
                        <button type="button" class="qty-btn tru" data-id="${ci.product.id}">-</button>
                        <input type="text" value="${ci.quantity}" class="qty-input" id="qty-${ci.product.id}">
                        <button type="button" class="qty-btn cong" data-id="${ci.product.id}">+</button>
                    </td>

                    <td class="subtotal">
                        <fmt:formatNumber value="${ci.quantity * ci.product.price_sale}" groupingUsed="true"/>₫
                    </td>
                    <td class="btn-remove">
                        <button type="button" class="qty-btn remove" data-id="${ci.product.id}"><i class="fa-solid fa-trash"></i>
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
    <!-- THÀNH TIỀN-->
    <aside class="cart-summary">
        <h2>TỔNG CỘNG GIỎ HÀNG</h2>
        <div class="summary-row">
            <span>Tạm tính</span>
            <span id="subtotal">
                <fmt:formatNumber value="${sessionScope.cart.total}" groupingUsed="true"/>₫
            </span>
        </div>
        <div class="summary-row total">
            <span>Tổng cộng</span>
            <span id="total"><b>
                <fmt:formatNumber value="${sessionScope.cart.total}" groupingUsed="true"/>₫</b>
            </span>
        </div>
      <button type="submit" class="checkout-btn">Tiến hành thanh toán</button>
    </aside>
</div>
</form>


<!-- recomment -->
<%--<div class="recommend-wrapper">--%>
<%--            <h2 class="recommet-title">Có thể bạn sẽ để tâm</h2>--%>
<%--        <div class="recomment">--%>
<%--                <div class="product-card">--%>
<%--            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">--%>
<%--            <p class="title">Bộ tranh gốm sứ</p>--%>
<%--            <p class="prices">2.500.000đ</p>--%>
<%--                 </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">--%>
<%--            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>--%>
<%--            <p class="prices">19.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">--%>
<%--            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>--%>
<%--            <p class="prices">4.500.000đ</p>--%>
<%--                </div>--%>
<%--                <div class="product-card">--%>
<%--            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">--%>
<%--            <p class="title">Bộ tranh gốm sứ</p>--%>
<%--            <p class="prices">2.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">--%>
<%--            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>--%>
<%--            <p class="prices">19.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">--%>
<%--            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>--%>
<%--            <p class="prices">4.500.000đ</p>--%>
<%--                </div>--%>
<%--                <div class="product-card">--%>
<%--            <img src="https://battrangceramica.com.vn/wp-content/uploads/2016/06/tranh-bo.jpg" alt="">--%>
<%--            <p class="title">Bộ tranh gốm sứ</p>--%>
<%--            <p class="prices">2.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhnip1WooKhcdmngGuMhIWuilUIoGqopmrLFFjhhDnu1b41MlK2ZrFg1ywGa4eUosLbyKnOvrr5KGH4ahO3KqUt5zTc_5Ej5fqT0GrEho0&usqp=CAc" alt="">--%>
<%--            <p class="title">Chum Sành Trống đồng Liên Hoa Ngũ Đồ 100 lít</p>--%>
<%--            <p class="prices">19.500.000đ</p>--%>
<%--                </div>--%>

<%--                <div class="product-card">--%>
<%--            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ5OlQMV0A2LbQDiI0hp1RrZw6ddK7DHSwV9JGK_1ldlYb9O5-RXPv5thj1bw5jgu3nWxL58lR113N4GUWif2AGFFWnUchNOGrYk5olJ6I3OfxlKccgeyXV&usqp=CAc" alt="">--%>
<%--            <p class="title">Tượng Võ Thần Tài Quan Vũ - Quan Vân Trường</p>--%>
<%--            <p class="prices">4.500.000đ</p>--%>
<%--                </div>--%>
<%--        </div>--%>
<%--</div>--%>
<!--footer-->
<jsp:include page="/common/footer.jsp"/>
</body>
<script>
    document.querySelectorAll(".select-product").forEach(cb => {
        cb.addEventListener("change", function () {
            const productId = this.dataset.id;
            const checked = this.checked;

            fetch("/gio-hang", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: new URLSearchParams({
                    action: "check",
                    id: productId,
                    checked: checked
                })
            })
                .then(res => res.json())
                .then(data => {
                    document.getElementById("subtotal").innerText = data.total + "₫";
                    document.getElementById("total").innerText = data.total + "₫";
                });
        });
    });
    document.getElementById("checkall").addEventListener("change", function () {
        const checked = this.checked;

        fetch("/gio-hang", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: new URLSearchParams({
                action: "checkall",
                checked: checked,
                id: 1
            })
        })
            .then(res => res.json())
            .then(data => {
                document.querySelectorAll(".select-product").forEach(cb => {
                    cb.checked = checked;
                });

                document.getElementById("subtotal").innerText = data.total + "₫";
                document.getElementById("total").innerText = data.total + "₫";
            });
    });
    document.querySelectorAll(".qty-btn").forEach(btn => {
        btn.addEventListener("click", function () {
            const productId = this.dataset.id;
            let action;
            if (this.classList.contains("cong") ){
                action = "cong"
            }
            else if(this.classList.contains("tru")){
                action = "tru"
            }
            else {
                action = "xoa"
            }
            fetch("/gio-hang", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: new URLSearchParams({
                    action: action,
                    id: productId
                })
            })
                .then(res => {
                    if (!res.ok) throw new Error(res.status);
                    return res.json();
                })
                .then(data => {
                    if (data.deleted) {
                        const row = document.getElementById("row-" + productId);
                        if (row) row.remove();
                    } else {
                        const qtyInput = document.getElementById("qty-" + productId);
                        if (qtyInput) qtyInput.value = data.quantity;
                    }
                    document.getElementById("subtotal").innerText = data.total + "₫";
                    document.getElementById("total").innerText = data.total + "₫";
                    const badge = document.querySelector(".cart-badge");
                    if (badge && data.totalQty !== undefined) {
                        badge.innerText = data.totalQty;
                    }
                })
                .catch(err => console.error("Cart error:", err));
        });
    });
</script>
</html>
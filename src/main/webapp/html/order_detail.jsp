<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h2>Chi tiết đơn hàng #${order.id}</h2>

<p><b>Người nhận:</b> ${order.receiverName}</p>
<p><b>Điện thoại:</b> ${order.receiverPhone}</p>
<p><b>Địa chỉ:</b> ${order.receiverAddress}</p>
<p><b>Ngày đặt:</b>
    <fmt:formatDate value="${order.createdAt}" pattern="dd/MM/yyyy"/>
</p>

<table border="1" width="100%">
    <tr>
        <th>Sản phẩm</th>
        <th>Số lượng</th>
        <th>Giá</th>
    </tr>

    <c:forEach var="i" items="${items}">
        <tr>
            <td>${i.productName}</td>
            <td>${i.quantity}</td>
            <td>
                <fmt:formatNumber value="${i.price}" type="number"/>đ
            </td>
        </tr>
    </c:forEach>
</table>

<p><b>Tổng tiền:</b>
    <fmt:formatNumber value="${order.totalAmount}" type="number"/>đ
</p>

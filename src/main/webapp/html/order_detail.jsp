<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Chi tiết đơn hàng</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 20px;
        }

        .order-container {
            max-width: 900px;
            margin: auto;
            background: #fff;
            padding: 24px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
        }

        h2 {
            margin-top: 0;
            color: #2c3e50;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }

        .order-info p {
            margin: 6px 0;
            font-size: 15px;
        }

        .order-info b {
            display: inline-block;
            width: 120px;
            color: #34495e;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th {
            background: #2ecc71;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        table td {
            padding: 10px;
            border-bottom: 1px solid #eee;
            text-align: center;
        }

        table td:first-child {
            text-align: left;
        }

        .total {
            text-align: right;
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #e74c3c;
        }

        .back-link {
            margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="order-container">

    <h2>Chi tiết đơn hàng #${order.id}</h2>

    <div class="order-info">
        <p><b>Người dùng ID:</b> ${order.userId}</p>
        <p><b>Ngày đặt:</b>
            <fmt:formatDate value="${order.orderDate}" pattern="dd/MM/yyyy"/>
        </p>
        <p><b>Trạng thái:</b> ${order.status}</p>
    </div>

    <table>
        <tr>
            <th>Sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Thành tiền</th>
        </tr>

        <c:forEach var="i" items="${items}">
            <tr>
                <td>${i.productName}</td>
                <td>${i.quantity}</td>
                <td>
                    <fmt:formatNumber value="${i.price}" type="number"/> đ
                </td>
                <td>
                    <fmt:formatNumber value="${i.quantity * i.price}" type="number"/> đ
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="total">
        Tổng tiền:
        <fmt:formatNumber value="${order.total}" type="number"/> đ
    </div>

    <a class="back-link" href="${pageContext.request.contextPath}/donhang">
        ← Quay lại danh sách đơn hàng
    </a>

</div>

</body>
</html>

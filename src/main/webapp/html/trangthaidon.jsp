<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/trangthaidon.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/common/header.jsp"/>
<!---->
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
                <li><a href="#" class="active"><i class="fa fa-shopping-bag order-icon"></i>
                    <span>Đơn mua</span></a></li>
            </ul>
        </div>
        <div class="cover-right-page">
            <div class="title-page">
                <p>Quản lý đơn hàng</p>
            </div>

            <div class="list-page">
                <a href="TrangThaiDon?status=all">Tất cả</a>
                <a href="TrangThaiDon?status=pending">Chưa giao</a>
                <a href="TrangThaiDon?status=processing">Đang giao</a>
                <a href="TrangThaiDon?status=completed">Đã giao</a>
                <a href="TrangThaiDon?status=cancelled">Đã huỷ</a>
            </div>

            <div class="all-products">
                <div class="table-container item active" id="all">
                    <table>
                        <thead class="title-table">
                        <tr>
                            <th>Mã đơn</th>
                            <th class="text-left">Tên sản phẩm</th>
                            <th class="text-right">Tổng tiền</th>
                            <th class="text-center">Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orders}" var="o">
                            <tr>
                                <td class="code">#${o.id}</td>
                                <td class="name-pro">Đơn hàng #${o.id}</td>
                                <td class="price text-right">
                                    <fmt:formatNumber value="${o.totalAmount}" groupingUsed="true"/>₫
                                </td>
                                <td class="text-center">
                                <span class="status ${o.status}">
                                    <c:choose>
                                        <c:when test="${o.status == 'pending'}">Chưa giao</c:when>
                                        <c:when test="${o.status == 'processing'}">Đang giao</c:when>
                                        <c:when test="${o.status == 'completed'}">Đã giao</c:when>
                                        <c:when test="${o.status == 'cancelled'}">Đã hủy</c:when>
                                    </c:choose>
                                </span>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
<script src="../js/javascript.js"></script>
</body>
</html>
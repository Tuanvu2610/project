<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ctsanpham.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>

<body>
<!-- header -->
<jsp:include page="/common/header.jsp"/>
<%--body--%>
<div class="cover-product-item">
    <c:forEach var="p" items="${list}">
        <a href="chitietsanpham?id=${p.id}">
            <div class="product-card-item">
                <img src="${p.img}" alt="" class="product-img">
                <button class="btn-seen">Xem nhanh</button>
                <h3 class="product-name padding style-name">${p.name}</h3>
                <div class="product-price">
                        <span class="price-origin ">
                            <fmt:formatNumber value="${p.price_origin}" groupingUsed="true"/>₫
                        </span>
                    <span class="price-sale">
                            <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
                        </span>
                </div>
            </div>
        </a>
    </c:forEach>
</div>
<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>

</html>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>${news.title}</title>

    <style>
        .news-detail {
            max-width: 900px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0,0,0,.08);
            font-family: Arial, Helvetica, sans-serif;
        }

        .news-detail h1 {
            margin-bottom: 10px;
            font-size: 28px;
        }

        .news-meta {
            color: #777;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .news-detail img {
            width: 100%;
            max-height: 420px;
            object-fit: cover;
            border-radius: 10px;
            margin: 20px 0;
        }

        .news-content {
            white-space: pre-line;
        }

        .back-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 18px;
            background: #2563eb;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
        }

        .back-btn:hover {
            background: #1e40af;
        }
    </style>
</head>

<body>

<div class="news-detail">

    <h1>${news.title}</h1>

    <div class="news-meta">
        <fmt:formatDate value="${news.publishedAt}" pattern="dd/MM/yyyy HH:mm"/>
    </div>

    <c:if test="${not empty news.img}">
        <img src="${news.img}" alt="${news.title}">
    </c:if>

    <div class="news-content">
        <c:out value="${news.content}" escapeXml="false"/>
    </div>

    <a class="back-btn" href="${pageContext.request.contextPath}/tintuc">
        ← Quay lại trang tin tức
    </a>

</div>

</body>
</html>
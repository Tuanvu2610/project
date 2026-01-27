<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tin tức | Gốm sứ NÔNG LÂM</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tintuc.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<!-- HEADER -->
<jsp:include page="/header"/>

<!-- HERO BANNER -->
<section class="hero-banner">
    <img
            src="https://images.unsplash.com/photo-1765808270869-855ab9b7f5c4?auto=format&fit=crop&w=1600&q=80"
            alt="Tin tức Gốm Sứ"
            class="hero-bg"
    >

    <div class="hero-overlay"></div>

    <!-- PHẢI NẰM TRONG -->
    <div class="hero-content">
        <div class="hero-inner">
            <span class="hero-badge">Tin tức mới nhất</span>
            <h1 class="hero-title">
                Tin tức<br>
                <span>Gốm Sứ</span>
            </h1>
            <p class="hero-desc">
                Khám phá thế giới nghệ thuật gốm sứ truyền thống và hiện đại,
                từ kỹ thuật chế tác đến xu hướng thiết kế mới nhất
            </p>
        </div>
    </div>
</section>

<!-- ===== CONTENT CONTAINER ===== -->
<div class="page-container">
    <section class="news-wrapper">
        <div class="news-grid">
            <c:forEach var="n" items="${newsList}">
                <article class="news-card">
                    <a href="${pageContext.request.contextPath}/tintuc?id=${n.id}">
                        <img src="${n.img}" alt="${n.title}">
                    </a>
                    <div class="news-info">
                        <h3>
                            <a href="${pageContext.request.contextPath}/tintuc?id=${n.id}">
                                    ${n.title}
                            </a>
                        </h3>
                        <p>
                            <c:choose>
                                <c:when test="${fn:length(n.content) > 130}">
                                    ${fn:substring(n.content, 0, 130)}...
                                </c:when>
                                <c:otherwise>
                                    ${n.content}
                                </c:otherwise>
                            </c:choose>
                        </p>
                        <a class="read-more"
                           href="${pageContext.request.contextPath}/tintuc?id=${n.id}">
                            Xem chi tiết →
                        </a>
                    </div>
                </article>
            </c:forEach>
        </div>
    </section>
</div>

<!-- FOOTER -->
<jsp:include page="/common/footer.jsp"/>

</body>
</html>
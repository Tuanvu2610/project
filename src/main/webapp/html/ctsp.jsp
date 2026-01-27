<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="css/ctsanpham.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>

        .star5::before { width: ${(star5 * 1.0 / totalReview) * 100 }%;}
        .star4::before { width: ${(star4 * 100.0) / totalReview}%;}
        .star3::before { width: ${(star3 * 100.0) / totalReview}%;}
        .star2::before { width: ${(star2 * 100.0) / totalReview}%;}
        .star1::before { width: ${(star1 * 100.0) / totalReview}%;}
    </style>
</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<!--body-->
<section class="cover-all-info">
    <div class="info-container container-sp">
        <div class="product-image">
            <img src="${p.img}" alt="">
        </div>
        <div class="product-title">
            <h1>${p.name}</h1>
            <div class="rating">
                <span class="stars">★★★★★</span>
                <span><fmt:formatNumber value="${((star5 * 5) + (star4 * 4) + (star3 * 3) + (star2 * 2) + (star1)) * 1.0 / totalReview }" pattern="#.#" groupingUsed="true"/></span>
                <span>|</span>
                <span>(${totalReview} đánh giá)</span>
                <span>|</span>
                <span>Đã bán ${totalProductSold}</span>
            </div>
            <div class="price">
                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/>₫
            </div>
            <div class="info-box">
                <h3>Thông Tin Chi Tiết</h3>
                <div class="info-content">
                    <ul>
                        <li>
                            <span class="icon"><i class="fas fa-gem"></i></span>
                            <strong>Chất liệu</strong>
                            <span>${p.material}</span>
                        </li>
                        <li>
                            <span class="icon"><i class="fas fa-ruler-combined"></i></span>
                            <strong>Kích thước</strong>
                            <span>${p.size}</span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="quantity-control">
                <button type="button" class="btn-decrease">&minus;</button>
                <input type="text" class="quantity-input" value="1">
                <button type="button" class="btn-increase">&plus;</button>
            </div>
            <div class="action-buttons">
                <a href="AddCart?id=${p.id}&q=1">
                <button class="btn-add-cart">
                    THÊM VÀO GIỎ
                    <span>Mua thêm sản phẩm khác</span>
                </button>
                </a>
                <button class="btn-buy-now">
                    ĐẶT HÀNG NHANH
                    <span>Giao tận nơi, nhận hàng trả tiền</span>
                </button>
            </div>
        </div>
    </div>
</section>
<section class="cover-all-feedback">
    <div class="container-sp">
        <div class="title-feedback">
            <p class="title">Đánh giá sản phẩm</p>
            <p>Xem tất cả ></p>
        </div>
        <div class="cover-feedback">
            <div class="left-feedback">
                <fmt:formatNumber value="${((star5 * 5) + (star4 * 4) + (star3 * 3) + (star2 * 2) + (star1)) * 1.0 / totalReview }" pattern="#.#"/>
                <p class="stars">★★★★★</p>
            </div>
            <div class="right-feedback">
                <div class="cover-line">5 <div class="line-feedback star5"></div></div>
                <div class="cover-line">4 <div class="line-feedback star4"></div></div>
                <div class="cover-line">3 <div class="line-feedback star3"></div></div>
                <div class="cover-line">2 <div class="line-feedback star2"></div></div>
                <div class="cover-line">1 <div class="line-feedback star1"></div></div>
            </div>
        </div>
        <div class="cover-comment">
            <c:forEach var="h" items="${rw}">
                <div class="cmt">
                    <div class="cover-user">
                        <img src="https://www.svgrepo.com/show/452030/avatar-default.svg" alt="">
                        <div class="feedback-user">
                            <span>${h.name}</span>
                            <div class="cover-feedback-date">
                                <p class="stars-comment">
                                    <c:forEach begin="1" end="${h.stars}">★</c:forEach><c:forEach begin="1" end="${5 - h.stars}">☆</c:forEach>
                                </p>
                                <span class="date">${h.created_at}</span>
                            </div>
                        </div>
                    </div>
                    <div class="cmt-user">${h.content}</div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>
</html>
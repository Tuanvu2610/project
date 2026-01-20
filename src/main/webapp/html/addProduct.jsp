<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addProduct.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/common/header.jsp"/>
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="/quan-ly-account"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="/thong-ke"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="/kho" class="active"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>

    <!-- CONTENT -->
    <div class="content">
        <div class="head"><h1>➕ Thêm sản phẩm mới vào kho</h1></div>
        <c:if test="${not empty success}">
            <div class="success">
                    ${success}
            </div>
        </c:if>
        <div class="info">
            <form action="${pageContext.request.contextPath}/add-product" method="post">
                <div class="form">
                    <h3>Tên sản phẩm</h3>
                    <input name="name" required>
                </div>
                <input id="imgInput" name="img" type="hidden" required>
                <div class="form">
                    <h3>Ảnh sản phẩm</h3>
                    <button type="button" class="choose-btn" onclick="openImagePicker()">Chọn ảnh sản phẩm</button>
                    <br>
                    <img id="preview" width="140" style="display:none;margin-top:10px;border-radius:12px;border:1px solid #ddd">
                </div>
                <div class="form">
                    <h3>Danh mục</h3>
                    <select name="category_id" required>
                        <option value="">Chọn danh mục</option>
                        <c:forEach var="c" items="${categories}">
                            <option value="${c.id}">
                                    ${c.name}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form">
                    <h3>Chất liệu</h3>
                    <input name="material">
                </div>
                <div class="form">
                    <h3>Kích thước</h3>
                    <input name="size">
                </div>
                <div class="form">
                    <h3>Giá bán</h3>
                    <input name="price_sale" required>
                </div>
                <div class="form">
                    <h3>Giá gốc</h3>
                    <input name="price_origin" required>
                </div>
                <div class="form-btn" style="display: flex; flex-direction: column;">
                    <button class="btn" type="submit">💾 Lưu sản phẩm</button>
                    <a href="${pageContext.request.contextPath}/kho" class="btn" style="width: 13%;">🔙 Quay về kho</a>
                </div>
            </form>
        </div>

    </div>
</div>
<div id="imgModal">
    <div class="img-box">
        <h3>Chọn ảnh sản phẩm</h3>
        <div class="gallery">
            <c:forEach var="img" items="${categoryImages}">
                <img src="${img}" onclick="selectImage('${img}')">
            </c:forEach>
        </div>
        <br>
        <button class="btn" onclick="closeImagePicker()">Đóng</button>
    </div>
</div>
<jsp:include page="/common/footer.jsp"/>

<script>
    function openImagePicker(){
        document.getElementById("imgModal").style.display="flex";
    }
    function closeImagePicker(){
        document.getElementById("imgModal").style.display="none";
    }
    function selectImage(url){
        document.getElementById("imgInput").value = url;
        let p = document.getElementById("preview");
        p.src = url;
        p.style.display = "block";
        closeImagePicker();
    }

</script>

</body>
</html>

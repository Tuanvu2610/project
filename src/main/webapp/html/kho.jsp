<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kho</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kho.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<!-- content -->
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="/quan-ly-account"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="/thong-ke"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="#" class="active"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="/donhang"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="/haumai"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="content">
        <div class="content-wrapper">
            <div class="head-title">
                <h1><i class="fas fa-warehouse"></i> Kho hàng</h1>
            </div>
            <div class="tab-container" >
                <button class="tab active" data-tab="on">Đã lên kệ</button>
                <button class="tab" data-tab="off">Chưa lên kệ</button>
            </div>
            <div class="tab-content active" id="on">
                <div class="warehouse-table">
                    <table>
                        <thead>
                        <tr>
                            <th>Hàng hóa</th>
                            <th>Giá</th>
                            <th>Hàng tồn kho</th>
                            <th>Đã bán</th>
                            <th>Trạng thái</th>
                            <th>Lợi nhuận</th> <!-- loi nhuan an 5% nha -->
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody id="onSaleBody">
                        <c:forEach var="p" items="${onSale}">
                            <tr data-id="${p.id}">
                                <form action="${pageContext.request.contextPath}/kho" method="post">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <td class="product">
                                        <img src="${p.img}">
                                        <span class="view">${p.name}</span>
                                        <input class="edit" type="text" name="name" value="${p.name}" style="display:none; width:160px;">
                                    </td>
                                    <td>
                                        <span class="view"><fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/> đ</span>
                                        <input class="edit" type="number" name="price" value="${p.price_sale}" style="display:none; width:100px;">
                                    </td>
                                    <td>100</td>
                                    <td>0</td>
                                    <td class="status selling">Đang bán</td>
                                    <td class="profit">
                                        <fmt:formatNumber value="${p.price_sale * 0.05}" groupingUsed="true"/> đ
                                    </td>
                                    <td>
                                        <div class="action-btn">
                                            <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                                <input type="hidden" name="action" value="update">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <button type="button" class="btn edit-btn" onclick="edit(this)">
                                                    <i class="fas fa-pen"></i>
                                                </button>
                                                <button type="submit" class="btn save" style="display:none;">
                                                    <i class="fas fa-save"></i>
                                                </button>
                                            </form>
                                            <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                                <input type="hidden" name="action" value="unpublish">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <button type="submit" class="btn remove" onclick="return confirm('Xác nhận đưa sản phẩm xuống kệ?')">
                                                    <i class="fas fa-arrow-down"></i>
                                                </button>
                                            </form>
                                            <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline-flex; margin:0;">
                                                <input type="hidden" name="action" value="delete">
                                                <input type="hidden" name="id" value="${p.id}">
                                                <button type="submit" class="btn delete" onclick="return confirm('Xóa sản phẩm này?')">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-content" id="off">
                <div style="margin-bottom:15px; text-align:right;">
                    <a href="${pageContext.request.contextPath}/add-product" class="add-product-btn"><i class="fas fa-plus"></i> Thêm sản phẩm</a>
                </div>
                <table>
                    <thead>
                    <tr>
                        <th>Hàng hóa</th>
                        <th>Giá dự kiến</th>
                        <th>Tồn kho</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                    </thead>
                    <tbody id="offSaleBody">
                    <c:forEach var="p" items="${offSale}">
                        <tr data-id="${p.id}">
                            <td class="product">
                                <img src="${p.img}">
                                <span>${p.name}</span>
                            </td>
                            <td>
                                <fmt:formatNumber value="${p.price_sale}" groupingUsed="true"/> đ
                            </td>
                            <td>100</td>
                            <td class="status pending">Chưa lên kệ</td>
                            <td>
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline;">
                                    <input type="hidden" name="action" value="publish">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="submit" class="btn publish" onclick="return confirm('Xác nhận đưa sản phẩm lên kệ?')">
                                        <i class="fas fa-arrow-up"></i>
                                    </button>
                                </form>
                                <form action="${pageContext.request.contextPath}/kho" method="post" style="display:inline;">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="id" value="${p.id}">
                                    <button type="submit" class="btn delete" onclick="return confirm('Xóa sản phẩm này?')"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!--footer-->
<jsp:include page="/common/footer.jsp"/>
<script>
    document.querySelectorAll(".tab").forEach(tab => {
        tab.onclick = () => {
            document.querySelectorAll(".tab").forEach(t =>
                t.classList.remove("active")
            );
            document.querySelectorAll(".tab-content").forEach(c =>
                c.classList.remove("active")
            );
            tab.classList.add("active");
            document.getElementById(tab.dataset.tab).classList.add("active");
        };
    });

    function edit(btn){
        const row = btn.closest("tr");
        row.querySelectorAll(".view").forEach(e => {
            e.style.display = "none";
        });
        row.querySelectorAll(".edit").forEach(e => {
            e.style.display = "inline-block";
        });
        btn.style.display = "none";
        row.querySelector(".save").style.display = "inline-flex";
    }
</script>
</body>
</html>
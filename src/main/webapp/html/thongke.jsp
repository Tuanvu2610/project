<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="css/thongke.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<!--content-->
<div class="container">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="/quan-ly-account"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="#" class="active"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="/kho"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="/donhang"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="/haumai"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <!--body-->
    <div class="content">
        <div class="head-title">
            <h1><i class="fas fa-chart-bar"></i> Thống kê bán hàng - Gốm sứ Nông Lâm</h1>
            <p>Doanh thu và số lượng sản phẩm theo năm & tháng</p>
        </div>
        <div class="all-section">
            <section class="filter-section">
                <form action="${pageContext.request.contextPath}/thong-ke" method="get" id="filterForm">
                    <label for="year">Chọn năm:</label>
                    <select id="year" name="year" onchange="this.form.submit()">
                        <c:forEach var="y" begin="2022" end="2026">
                            <option value="${y}" ${year == y ? 'selected' : ''}>
                                    ${y}
                            </option>
                        </c:forEach>
                    </select>
                    <label for="month">Chọn tháng:</label>
                    <select id="month" name="month" onchange="this.form.submit()">
                        <option value="0" ${month == '0' || month == null ? 'selected' : ''}>
                            Tất cả
                        </option>
                        <c:forEach var="m" begin="1" end="12">
                            <option value="${m}" ${month == m ? 'selected' : ''}>
                                Tháng ${m}
                            </option>
                        </c:forEach>
                    </select>
                </form>
            </section>

            <section class="summary-section">
                <div class="card">
                    <h3>Doanh thu (VNĐ)</h3>
                    <p class="value">
                        <fmt:formatNumber value="${totalRevenue}" type="number"/>
                    </p>
                </div>
                <div class="card">
                    <h3>Số đơn hàng</h3>
                    <p class="value">${totalOrders}</p>
                </div>
                <div class="card">
                    <h3>Sản phẩm bán ra</h3>
                    <p class="value">${totalProducts}</p>
                </div>
            </section>

            <section class="chart-section">
                <h2>
                    Biểu đồ doanh thu 12 tháng năm ${year}
                </h2>
                <div class="chart-bar">
                    <c:forEach var="value" items="${chartData}" varStatus="loop">
                        <div class="bar-wrapper">
                            <div class="bar" style="height:${value}%;">
                                <span>${revenueData[loop.index + 1]}</span>
                            </div>
                            <div class="label">Tháng ${loop.index + 1}</div>
                        </div>
                    </c:forEach>
                </div>
            </section>

            <section class="table-section">
            <h2>
                Bảng thống kê chi tiết năm ${year}
                <c:if test="${month != null && month != '0'}">
                    - Tháng ${month}
                </c:if>
            </h2>
            <table>
                <thead>
                <tr>
                    <th>Tháng</th>
                    <th>Doanh thu (VNĐ)</th>
                    <th>Số đơn</th>
                    <th>Sản phẩm bán</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${stats}" var="s">
                    <tr>
                        <td>${s.month}</td>
                        <td>${s.revenue}</td>
                        <td>${s.totalOrders}</td>
                        <td>${s.totalProducts}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </section>
        </div>
    </div>
</div>

<!--footer-->
<jsp:include page="/common/footer.jsp"/>
</body>
</html>

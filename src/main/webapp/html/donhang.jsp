<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đơn hàng</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <style>

            body{
                font-family: Arial, Helvetica, sans-serif;
                background:#f7f7f7;
                margin:0;
                padding:0;
            }

            .container{
                display:flex;
                min-height:100vh;
            }

            /* ===== SIDEBAR ===== */
            .sidebar{
                width:25%;
                background:#0d8e02c7;
                color:#fff;
                padding:20px 0;
            }

            .title{
                text-align:center;
                padding-bottom:20px;
                border-bottom:1px solid rgba(255,255,255,0.2);
            }

            .nav-links{
                list-style:none;
                padding:15px;
            }

            .nav-links a{
                display:flex;
                gap:10px;
                padding:16px 18px;
                color:#fff;
                text-decoration:none;
                border-radius:8px;
            }

            .nav-links a.active,
            .nav-links a:hover{
                background:rgba(255,255,255,0.15);
            }

            .content-wrapper{
                background:#fff;
                border-radius:16px;
                padding:24px;
                box-shadow:0 8px 24px rgba(0,0,0,.06);
            }

            .content{
                flex:1;
                padding:25px;
            }

            /* TITLE */
            .head-title h1{
                font-size:26px;
                margin-bottom:20px;
                display:flex;
                align-items:center;
                gap:10px;
            }

            /* ORDER TABS */
            .order-tabs{
                display:flex;
                align-items:center;
                gap:12px;
                background:#eee;
                padding:12px 16px;
                border-radius:14px;
                margin-bottom:20px;
            }

            .order-tabs .tab{
                padding:8px 20px;
                border-radius:20px;
                border:none;
                background:#ddd;
                font-weight:600;
                cursor:pointer;
            }

            .order-tabs .tab.active{
                background:#3b82f6;
                color:#fff;
            }

            .order-summary{
                margin-left:auto;
                font-weight:600;
            }

            /* TABLE */
            .order-table {
                width: 100%;
                border-collapse: collapse;
                table-layout: auto;
            }

            .item-name {
                white-space: normal;
                word-break: break-word;
            }

            .order-table th{
                text-align:left;
                padding:14px 12px;
                border-bottom:2px solid #e5e5e5;
            }

            .order-table td{
                padding:16px 12px;
                border-bottom:1px solid #eee;
            }

            .center{ text-align:center; }
            .money{ font-weight:700; }
            .item-name{ font-weight:600; }
            .receiver{ font-style:italic; }

            /* STATUS CELL */
            .status{
                position:relative;
            }

            /* BUTTONS – TRẠNG THÁI */
            .status button,
            .status span{
                padding:6px 16px;
                border-radius:18px;
                font-size:13px;
                font-weight:600;
                border:none;
                min-width: 120px;
            }

            .btn-processing{
                background:#ef4444;
                color:#fff;
                cursor:pointer;
            }

            .btn-shipping{
                background:#3b82f6;
                color:#fff;
                cursor:default;
            }

            .btn-cancelled{
                background:#9ca3af;
                color:#fff;
            }

            /* ACTION MENU */
            .action-menu{
                position:absolute;
                top:40px;
                right:0;
                background:#fff;
                padding:10px;
                border-radius:12px;
                box-shadow:0 4px 12px rgba(0,0,0,.1);
                display:none;
                z-index:100;
                width:160px;
            }

            .action-menu button{
                width:100%;
                margin-bottom:6px;
                padding:6px;
                border-radius:8px;
                font-weight:600;
                cursor:pointer;
            }

            /* ACTION BUTTONS */
            .btn-confirm{
                background:#22c55e;
                color:#fff;
            }

            .btn-cancel{
                background:#ef4444;
                color:#fff;
            }

            /* CANCEL BOX */
            .cancel-box{
                display:none;
                margin-top:8px;
            }

            .cancel-box input{
                width:100%;
                padding:6px;
                border-radius:8px;
                border:1px solid #ddd;
                margin-bottom:6px;
            }

            .cancel-box button{
                width:100%;
                background:#ef4444;
                color:#fff;
                border-radius:8px;
            }
        </style>
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
            <li><a href="/kho"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="#" class="active"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="/haumai"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>

    <div class="content">
        <div class="content-wrapper">

            <!-- TITLE -->
            <div class="head-title">
                <h1><i class="fas fa-receipt"></i> Đơn hàng</h1>
            </div>

            <!-- TABS -->
            <div class="order-tabs">
                <button class="tab active" data-tab="pending">Chưa giao</button>
                <button class="tab" data-tab="shipping">Đang vận chuyển</button>
                <button class="tab" data-tab="done">Đã giao</button>

                <div class="order-summary">
                    Đơn hàng đã hoàn thành: <b>${doneCount}</b>
                </div>
            </div>

            <!-- TABLE -->
            <table class="order-table">
                <thead>
                <tr>
                    <th>Mã đơn</th>
                    <th>Hàng hóa</th>
                    <th>Số lượng</th>
                    <th>Số tiền</th>
                    <th>Người nhận</th>
                    <th>Ngày</th>
                    <th>Trạng thái</th>
                </tr>
                </thead>

                <!-- ===== CHƯA GIAO ===== -->
                <tbody id="pending">
                <c:forEach var="o" items="${pendingOrders}">
                    <tr>
                        <td>${o.id}</td>

                        <td class="item-name">
                            <a href="${pageContext.request.contextPath}/order-detail?id=${o.id}">
                                Xem chi tiết
                            </a>
                        </td>

                        <td class="center">${o.totalQuantity}</td>

                        <td class="money">
                            <fmt:formatNumber value="${o.total}" type="number"/>đ
                        </td>

                        <!-- DB chưa có người nhận → để trống, KHÔNG đổi text -->
                        <td class="receiver"></td>

                        <td class="center">
                            <fmt:formatDate value="${o.orderDate}" pattern="dd/MM/yyyy"/>
                        </td>

                        <td class="status">
                            <button type="button" class="btn-processing"
                                    onclick="openActionMenu(this, event)">
                                Chờ xử lý
                            </button>

                            <div class="action-menu">
                                <form action="${pageContext.request.contextPath}/donhang" method="post">
                                    <input type="hidden" name="orderId" value="${o.id}">
                                    <input type="hidden" name="action" value="CONFIRM">
                                    <button type="submit" class="btn-confirm">✔ Xác nhận</button>
                                </form>

                                <form action="${pageContext.request.contextPath}/donhang" method="post">
                                    <input type="hidden" name="orderId" value="${o.id}">
                                    <input type="hidden" name="action" value="CANCEL">
                                    <input type="text" name="reason" placeholder="Lý do hủy...">
                                    <button type="submit" class="btn-cancel">✖ Hủy</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

                <!-- ===== ĐANG VẬN CHUYỂN ===== -->
                <tbody id="shipping" style="display:none">
                <c:forEach var="o" items="${shippingOrders}">
                    <tr>
                        <td>${o.id}</td>

                        <td class="item-name">
                            <a href="${pageContext.request.contextPath}/order-detail?id=${o.id}">
                                Xem chi tiết
                            </a>
                        </td>

                        <td class="center">${o.totalQuantity}</td>

                        <td class="money">
                            <fmt:formatNumber value="${o.total}" type="number"/>đ
                        </td>

                        <td class="receiver"></td>

                        <td class="center">
                            <fmt:formatDate value="${o.orderDate}" pattern="dd/MM/yyyy"/>
                        </td>

                        <td><span class="status shipping">Đang giao</span></td>
                    </tr>
                </c:forEach>
                </tbody>

                <!-- ===== ĐÃ GIAO ===== -->
                <tbody id="done" style="display:none">
                <c:forEach var="o" items="${doneOrders}">
                    <tr>
                        <td>${o.id}</td>

                        <td class="item-name">
                            <a href="${pageContext.request.contextPath}/order-detail?id=${o.id}">
                                Xem chi tiết
                            </a>
                        </td>

                        <td class="center">${o.totalQuantity}</td>

                        <td class="money">
                            <fmt:formatNumber value="${o.total}" type="number"/>đ
                        </td>

                        <td class="receiver"></td>

                        <td class="center">
                            <fmt:formatDate value="${o.orderDate}" pattern="dd/MM/yyyy"/>
                        </td>

                        <td><span class="status done">Đã giao</span></td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>
</div>

<!--footer-->
<jsp:include page="/common/footer.jsp"/>
<script>
    /* TAB CHUYỂN TRẠNG THÁI */
    document.querySelectorAll('.tab').forEach(tab => {
        tab.addEventListener('click', function () {

            // đổi active tab
            document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
            this.classList.add('active');

            // ẩn toàn bộ tbody
            document.querySelectorAll('tbody[id]').forEach(tb => {
                tb.style.display = 'none';
            });

            // hiện tbody tương ứng
            const target = document.getElementById(this.dataset.tab);
            if (target) target.style.display = '';
        });
    });

    /* MENU TRẠNG THÁI */
    /* ===== MỞ MENU ===== */
    function openActionMenu(btn, e) {
        e.preventDefault();
        e.stopPropagation();

        closeAllMenus();

        const menu = btn.parentElement.querySelector('.action-menu');
        menu.style.display = 'block';
        // Đánh dấu menu đang mở
        btn.parentElement.classList.add('menu-open');
    }

    /* ===== ĐÓNG MENU ===== */
    function closeAllMenus() {
        document.querySelectorAll('.action-menu').forEach(menu => {
            menu.style.display = 'none';
        });
        document.querySelectorAll('.menu-open').forEach(el => {
            el.classList.remove('menu-open');
        });
    }

    /* ===== CLICK NGOÀI STATUS → ĐÓNG ===== */
    document.addEventListener('click', function (e) {
        // nếu click KHÔNG nằm trong .status
        if (!e.target.closest('.status')) {
            closeAllMenus();
        }
    });

    /* ===== XÁC NHẬN ===== */
    function confirmOrder(btn) {
        if (!confirm("Xác nhận chuyển sang vận chuyển?")) return;

        const statusCell = btn.closest('.status');
        statusCell.innerHTML = `
        <button class="btn-shipping" disabled> Chờ vận chuyển </button>
`;
    }

    /* ===== HỦY ===== */
    function openCancelBox(btn, e) {
        e.preventDefault();
        e.stopPropagation(); // 🔥 CHẶN DOCUMENT CLICK

        const statusCell = btn.closest('.status');
        statusCell.querySelector('.cancel-box').style.display = 'block';
    }

    function cancelOrder(btn) {
        const statusCell = btn.closest('.status');
        const reason = statusCell.querySelector('input').value.trim();

        if (!reason) {
            alert("Vui lòng nhập lý do hủy");
            return;
        }

        if (!confirm("Bạn chắc chắn muốn hủy đơn?")) return;

        statusCell.innerHTML = `
        <span class="btn-cancelled">Đã hủy</span>
    `;
    }
</script>

</body>
</html>
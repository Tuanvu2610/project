<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý hậu mãi</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f7f7f7;
            margin: 0;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            width: 25%;
            background: #0d8e02c7;
            color: #fff;
            padding: 20px 0;
        }

        .title {
            text-align: center;
            padding-bottom: 20px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .nav-links {
            list-style: none;
            padding: 15px;
        }

        .nav-links a {
            display: flex;
            gap: 10px;
            padding: 14px 18px;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
        }

        .nav-links a.active,
        .nav-links a:hover {
            background: rgba(255, 255, 255, 0.15);
        }

        .content {
            flex: 1;
            padding: 24px;
        }

        .content-wrapper {
            background: #fff;
            border-radius: 16px;
            padding: 24px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, .06);
        }

        .sub-title {
            color: #666;
            margin: 8px 0 20px;
        }

        .support-table {
            width: 100%;
            border-collapse: collapse;
        }

        .support-table th,
        .support-table td {
            padding: 12px 14px;
            border-bottom: 1px solid #eee;
            vertical-align: middle;
        }

        .support-table th {
            background: #f1f5f9;
        }

        .support-table td {
            padding-left: 42px;
        }

        .badge {
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: bold;
            display: inline-block;
        }

        .status-wait { background: #fde68a; color: #92400e; }
        .status-processing { background: #bfdbfe; color: #1e40af; }
        .status-done { background: #bbf7d0; color: #065f46; }
        .status-rejected { background: #fecaca; color: #991b1b; }

        .btn {
            padding: 6px 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
        }

        .btn.view {
            background: #2563eb;
            color: #fff;
        }

        .modal-overlay {
            display: none;
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.4);
            z-index: 999999;
            justify-content: center;
            align-items: center;
        }

        .modal-overlay.show {
            display: flex;
        }

        .modal {
            background: #fff;
            width: 600px;
            max-width: 95%;
            border-radius: 12px;
            display: block !important;
        }

        .modal-header {
            padding: 16px 20px;
            border-bottom: 1px solid #eee;
        }

        .modal-footer {
            padding: 12px 20px;
            border-top: 1px solid #eee;
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .modal-footer .btn {
            padding: 6px 14px;
            font-size: 13px;
            border-radius: 18px;
            line-height: 1;
        }

        .modal-body {
            padding: 20px;
        }

        .close-btn {
            background: none;
            border: none;
            font-size: 22px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<jsp:include page="/common/header.jsp"/>

<div class="container">

    <!-- ===== SIDEBAR ===== -->
    <div class="sidebar">
        <div class="title"><h2>ADMIN CONTROL</h2></div>
        <ul class="nav-links">
            <li><a href="quanlyaccount.jsp"><i class="fas fa-users"></i> Quản lý User</a></li>
            <li><a href="thongke.jsp"><i class="fas fa-chart-bar"></i> Thống kê</a></li>
            <li><a href="kho.jsp"><i class="fas fa-house-user"></i> Kho</a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> Đơn hàng</a></li>
            <li><a class="active"><i class="fas fa-headset"></i> Hậu mãi</a></li>
        </ul>
    </div>

    <!-- ===== CONTENT ===== -->
    <div class="content">
        <div class="content-wrapper">

            <h1><i class="fas fa-headset"></i> Quản lý Hỗ trợ Khách hàng</h1>
            <p class="sub-title">Theo dõi và xử lý các yêu cầu hậu mãi</p>

            <table class="support-table">
                <thead>
                <tr>
                    <th>Mã</th>
                    <th>Khách hàng</th>
                    <th>Tiêu đề</th>
                    <th>Danh mục</th>
                    <th>Trạng thái</th>
                    <th>Thời gian</th>
                    <th>Thao tác</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="s" items="${supports}">
                    <tr
                            data-id="TK${s.id}"
                            data-name="${s.fullName}"
                            data-email="${s.email}"
                            data-content="${fn:escapeXml(s.description)}"
                            data-status="${s.status}"
                            data-time="<fmt:formatDate value='${s.createdAt}' pattern='dd/MM/yyyy HH:mm'/>"
                            data-image="${s.image}"
                    >
                        <td>TK${s.id}</td>
                        <td><b>${s.fullName}</b><br><small>${s.email}</small></td>
                        <td>${s.title}</td>
                        <td>${s.category}</td>
                        <td>
                            <span class="badge
                                ${s.status=='CHO_XU_LY'?'status-wait':
                                  s.status=='DANG_XU_LY'?'status-processing':
                                  s.status=='DA_GIAI_QUYET'?'status-done':'status-rejected'}">
                                    ${s.status=='CHO_XU_LY'?'Chờ xử lý':
                                            s.status=='DANG_XU_LY'?'Đang xử lý':
                                                    s.status=='DA_GIAI_QUYET'?'Đã giải quyết':'Từ chối'}
                            </span>
                        </td>
                        <td><fmt:formatDate value="${s.createdAt}" pattern="dd/MM/yyyy HH:mm"/></td>
                        <td><button class="btn view" onclick="openModal(this)">Xem</button></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>

<!-- ===== MODAL ===== -->
<div class="modal-overlay" id="supportModal">
    <div class="modal">
        <div class="modal-header">
            <h3>Chi tiết yêu cầu hậu mãi</h3>
            <button class="close-btn" onclick="closeModal()">×</button>
        </div>

        <div class="modal-body">
            <p><b>Mã:</b> <span id="m-id"></span></p>
            <p><b>Khách:</b> <span id="m-name"></span></p>
            <p><b>Email:</b> <span id="m-email"></span></p>
            <p><b>Thời gian:</b> <span id="m-time"></span></p>
            <p><b>Trạng thái:</b> <span id="m-status" class="badge"></span></p>
            <hr>
            <p id="m-content"></p>
            <div id="m-image"></div>
        </div>

        <div class="modal-footer">
            <form method="post" action="${pageContext.request.contextPath}/haumai"
                  style="display:flex; gap:10px;">

                <input type="hidden" name="id" id="f-id">
                <input type="hidden" name="status" id="f-status">

                <button type="submit" class="btn status-processing"
                        onclick="return setStatus('DANG_XU_LY')">
                    Đang xử lý
                </button>

                <button type="submit" class="btn status-done"
                        onclick="return setStatus('DA_GIAI_QUYET')">
                    Xác nhận
                </button>

                <button type="submit" class="btn status-rejected"
                        onclick="return setStatus('DA_TU_CHOI')">
                    Từ chối
                </button>
            </form>
        </div>

    </div>
</div>

<jsp:include page="/common/footer.jsp"/>

<script>
    let currentTicketId = null;
    const modal = document.getElementById("supportModal");

    /* ===== OPEN MODAL ===== */
    function openModal(btn) {
        const row = btn.closest("tr");

        // lấy id (bỏ TK)
        currentTicketId = row.dataset.id.replace("TK", "");

        // gán dữ liệu vào modal
        document.getElementById("m-id").innerText = row.dataset.id;
        document.getElementById("m-name").innerText = row.dataset.name;
        document.getElementById("m-email").innerText = row.dataset.email;
        document.getElementById("m-time").innerText = row.dataset.time;
        document.getElementById("m-content").innerText = row.dataset.content;

        // gán trạng thái
        const st = row.dataset.status;
        const mStatus = document.getElementById("m-status");

        mStatus.className = "badge " + (
            st === "CHO_XU_LY" ? "status-wait" :
                st === "DANG_XU_LY" ? "status-processing" :
                    st === "DA_GIAI_QUYET" ? "status-done" :
                        "status-rejected"
        );

        mStatus.innerText =
            st === "CHO_XU_LY" ? "Chờ xử lý" :
                st === "DANG_XU_LY" ? "Đang xử lý" :
                    st === "DA_GIAI_QUYET" ? "Đã giải quyết" :
                        "Từ chối";

        // set hidden input trong form
        document.getElementById("f-id").value = currentTicketId;

        modal.classList.add("show");
    }

    /* ===== CLOSE MODAL ===== */
    function closeModal() {
        modal.classList.remove("show");
    }

    // click ra ngoài modal để đóng
    modal.addEventListener("click", function (e) {
        if (e.target === modal) closeModal();
    });

    /* ===== SET STATUS + SUBMIT FORM ===== */
    function setStatus(status) {
        if (!currentTicketId) return false;

        const ok = confirm("Bạn chắc chắn muốn cập nhật trạng thái này?");
        if (!ok) return false;

        document.getElementById("f-status").value = status;
        return true; // cho phép submit form
    }
</script>

</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

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

        /* SIDEBAR */
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

        /* CONTENT */
        .content{
            flex:1;
            padding:24px;
        }

        .content-wrapper{
            background:#fff;
            border-radius:16px;
            padding:24px;
            box-shadow:0 8px 24px rgba(0,0,0,.06);
        }

        /* TITLE */
        .head-title h1{
            margin:0;
        }

        .sub-title{
            color:#666;
            margin:8px 0 20px;
        }

        /* ADMIN BOX */
        .admin-box{
            width:100%;
            max-width:100%;
            border-radius:12px;
            box-shadow:0 4px 12px rgba(0,0,0,.08);
        }


        /* TABLE */
        .support-table{
            width:100%;
            border-collapse:collapse;
            table-layout: fixed;
        }

        .support-table th,
        .support-table td{
            padding:12px 14px;
            text-align:left;
            vertical-align:middle;
            border-bottom:1px solid #eee;
        }

        .support-table th{
            background:#f1f5f9;
            font-weight:bold;
        }

        .support-table td:nth-child(5),
        .support-table td:nth-child(6){
            white-space:nowrap;
        }

        .badge{
            display:inline-flex;
            align-items:center;
            white-space:nowrap;
            padding:4px 12px;
            border-radius:999px;
            font-size:13px;
            font-weight:bold;
        }

        /* Status */
        .status-wait{ background:#fde68a; color:#92400e; }
        .status-processing{ background:#bfdbfe; color:#1e40af; }
        .status-done{ background:#bbf7d0; color:#065f46; }
        .status-rejected{ background:#fecaca; color:#991b1b; }

        /* Priority */
        .priority-high{ background:#fee2e2; color:#b91c1c; }
        .priority-medium{ background:#fef3c7; color:#92400e; }
        .priority-low{ background:#dcfce7; color:#166534; }

        .btn{
            padding:6px 14px;
            border:none;
            border-radius:8px;
            cursor:pointer;
            font-weight:bold;
            white-space:nowrap;
        }

        .btn.view{ background:#2563eb; color:#fff; }
        .btn.processing{ background:#facc15; }
        .btn.success{ background:#22c55e; color:#fff; }
        .btn.danger{ background:#ef4444; color:#fff; }

        .modal-overlay{
            display:none;
            position:fixed;
            inset:0;
            background:rgba(0,0,0,.4);
            justify-content:center;
            align-items:center;
            z-index:1000;
        }

        .modal{
            background:#fff;
            width:min(600px, 92vw);
            border-radius:12px;
            overflow:hidden;
        }

        .modal-header{
            padding:16px 20px;
            border-bottom:1px solid #eee;
            display:flex;
            justify-content:space-between;
            align-items:center;
        }

        .close-btn{
            background:none;
            border:none;
            font-size:22px;
            cursor:pointer;
        }

        .modal-body{
            padding:20px;
        }

        .section{
            margin-bottom:20px;
        }

        .image-list img{
            width:100px;
            max-width:100%;
            border-radius:8px;
            margin-right:10px;
        }

        .modal-footer{
            padding:16px;
            border-top:1px solid #eee;
            display:flex;
            gap:10px;
            justify-content:flex-end;
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
            <li><a href="quanlyaccount.jsp"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="thongke.jsp"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="kho.jsp"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="#" class="active"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <!-- Header -->
    <div class="content">
        <div class="content-wrapper">
        <div class="head-title">
            <h1><i class="fas fa-headset"></i> Quản lý Hỗ trợ Khách hàng</h1>
            <p class="sub-title">Theo dõi và xử lý các yêu cầu hậu mãi</p>
        </div>

        <div class="admin-box">
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
                    <tr data-id="TK${s.id}">
                        <td>TK${s.id}</td>
                        <td>
                            <b>${s.fullName}</b><br>
                            <small>${s.email}</small>
                        </td>
                        <td>${s.title}</td>
                        <td>${s.category}</td>
                        <td class="status-cell">
                            <span class="badge
                                ${s.status == 'CHO_XU_LY' ? 'status-wait' :
                                  s.status == 'DANG_XU_LY' ? 'status-processing' :
                                  s.status == 'DA_GIAI_QUYET' ? 'status-done' :
                                  'status-rejected'}">
                                    ${s.status == 'CHO_XU_LY' ? 'Chờ xử lý' :
                                      s.status == 'DANG_XU_LY' ? 'Đang xử lý' :
                                      s.status == 'DA_GIAI_QUYET' ? 'Đã giải quyết' :
                                      'Từ chối'}
                            </span>
                        </td>
                        <td>${s.createdAt}</td>
                        <td>
                            <button class="btn view"
                                    onclick="openModal(this)"
                                    data-id="${s.id}"
                                    data-name="${s.fullName}"
                                    data-email="${s.email}"
                                    data-content="${s.description}"
                                    data-status="${s.status}"
                                    data-time="<fmt:formatDate value='${s.createdAt}' pattern='dd/MM/yyyy HH:mm'/>"
                                    data-image="${s.image}">
                                Xem
                            </button>
                        </td>
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
                <div class="section">
                    <b>Mã yêu cầu:</b> <span id="m-id"></span><br>
                    <b>Khách hàng:</b> <span id="m-name"></span><br>
                    <b>Email:</b> <span id="m-email"></span><br>
                    <b>Thời gian:</b> <span id="m-time"></span><br>
                    <b>Trạng thái:</b> <span id="m-status" class="badge"></span>
                </div>

                <div class="section">
                    <h4>Nội dung</h4>
                    <p id="m-content"></p>
                </div>
                <div class="section">
                    <h4>Hình ảnh</h4>
                    <div id="m-image"></div>
                </div>
            </div>

            <div class="modal-footer" id="modalActions">
                <button class="btn processing" onclick="changeStatus('processing')">Đang xử lý</button>
                <button class="btn success" onclick="changeStatus('done')">Giải quyết</button>
                <button class="btn danger" onclick="changeStatus('rejected')">Từ chối</button>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
<script>
    let currentRow = null;

    function openModal(btn){
        currentRow = btn.closest("tr");

        document.getElementById("m-id").innerText = currentRow.children[0].innerText;
        document.getElementById("m-name").innerText = currentRow.children[1].querySelector("b").innerText;
        document.getElementById("m-email").innerText = currentRow.children[1].querySelector("small").innerText;
        document.getElementById("m-time").innerText = currentRow.children[6].innerText;
        document.getElementById("m-content").innerText = currentRow.children[2].innerText;

        const statusSpan = currentRow.querySelector(".status-cell span");
        const modalStatus = document.getElementById("m-status");
        modalStatus.innerText = statusSpan.innerText;
        modalStatus.className = statusSpan.className;

        if(statusSpan.innerText === "Đã giải quyết" || statusSpan.innerText === "Đã từ chối"){
            document.getElementById("modalActions").style.display = "none";
        }else{
            document.getElementById("modalActions").style.display = "flex";
        }

        document.getElementById("supportModal").style.display = "flex";

        const img = btn.dataset.image;
        const imgBox = document.getElementById("m-image");

        if (img && img.trim() !== "") {
            imgBox.innerHTML =
                `<img src="${pageContext.request.contextPath}/${img}"
                  style="max-width:200px;border-radius:8px">`;
        } else {
            imgBox.innerHTML = "<i>Không có hình ảnh đính kèm</i>";
        }

        document.getElementById("supportModal").style.display = "flex";
    }

    function closeModal(){
        document.getElementById("supportModal").style.display = "none";
    }

    function changeStatus(type){
        const map = {
            processing:{ text:"Đang xử lý", class:"badge status-processing" },
            done:{ text:"Đã giải quyết", class:"badge status-done" },
            rejected:{ text:"Đã từ chối", class:"badge status-rejected" }
        };

        const info = map[type];

        document.getElementById("m-status").innerText = info.text;
        document.getElementById("m-status").className = info.class;

        const tableStatus = currentRow.querySelector(".status-cell span");
        tableStatus.innerText = info.text;
        tableStatus.className = info.class;

        if(type === "done" || type === "rejected"){
            document.getElementById("modalActions").style.display = "none";
        }
    }
</script>

</body>
</html>
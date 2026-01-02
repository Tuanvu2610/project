<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/style.css">
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
<header class="pageHome-header" id="header-home">
    <a href="home" class="text-header">
        <span class="text-nonglam">NÔNG LÂM</span>
        <span class="text-gomsu">GỐM SỨ TINH HOA</span>
    </a>

    <form action="${pageContext.request.contextPath}/product-search" method="get" class="search-header">
        <input type="text" name="keyword" placeholder="Tìm sản phẩm..." value="${param.keyword}">
        <button class="search-btn" type="submit"><i class="fas fa-search"></i></button>
    </form>

    <div class="right-header">
        <button class="btn-header"><a href="#loginModal"><i class="fas fa-user"></i> Đăng nhập</a></button>
        <a href="../html/giohang.html" class="btn-header cart-btn">
            <i class="fas fa-shopping-cart"></i>
            <span>Giỏ hàng</span>
            <span class="cart-badge">2</span> </a>
    </div>
</header>
<nav class="menu-home">
    <ul class="cover-menu">
        <li class="sub-item"> <a href="../html/gomgiadung.html">GỐM GIA DỤNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomgiadung.html">Ấm chén bác tràng</a></li>
                    <li><a href="../html/gomgiadung.html">Bộ bác đĩa bác tràng</a></li>
                    <li><a href="../html/gomgiadung.html">Chum ngâm rượu</a></li>
                    <li><a href="../html/gomgiadung.html">Dụng cụ nhà tắm</a></li>
                    <li><a href="../html/gomgiadung.html">Đèn ngủ</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="../html/gomtrangtri.html">GỐM TRANG TRÍ</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomtrangtri.html">Bình gốm bát tràng</a></li>
                    <li><a href="../html/gomtrangtri.html">Lọ hoa bát tràng</a></li>
                    <li><a href="../html/gomtrangtri.html">Dĩa sứ trang trí</a></li>
                    <li><a href="../html/gomtrangtri.html">Tượng gốm sứ</a></li>
                    <li><a href="../html/gomtrangtri.html">Bình hồ lô</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="../html/gomthocung.html">GỐM THỜ CÚNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomthocung.html">Bộ đồ thờ đầy đủ</a></li>
                    <li><a href="../html/gomthocung.html">Bát hương</a></li>
                    <li><a href="../html/gomthocung.html">Mâm bồng</a></li>
                    <li><a href="../html/gomthocung.html">Bát nắp</a></li>
                    <li><a href="../html/gomthocung.html">Cây đèn nến</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="../html/gomquatang.html">GỐM QUÀ TẶNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="../html/gomquatang.html">Bình hút lộc in logo</a></li>
                    <li><a href="../html/gomquatang.html">Ấm chén in logo</a></li>
                    <li><a href="../html/gomquatang.html">Bình hoa in logo</a></li>
                    <li><a href="../html/gomquatang.html">Quà tặng bát đĩa</a></li>
                </ul>
            </div>
        </li>
        <li><a href="../html/tintuc.html">TIN TỨC</a></li>
        <li><a href="../html/GioiThieu.html">GIỚI THIỆU</a></li>
        <li><a href="../html/lienhe.html">LIÊN HỆ</a></li>
        <li><a href="../html/quanlyaccount.html">ADMIN CONTROL</a></li>
    </ul>
</nav>

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
                    <th>Ưu tiên</th>
                    <th>Trạng thái</th>
                    <th>Thời gian</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>

                <tr data-id="TK001">
                    <td>TK001</td>
                    <td><b>Nguyễn Văn A</b><br><small>a.nguyen@email.com</small></td>
                    <td>Sản phẩm bị trầy xước nhẹ</td>
                    <td>Bảo hành</td>
                    <td><span class="badge priority-high">Cao</span></td>
                    <td class="status-cell"><span class="badge status-wait">Chờ xử lý</span></td>
                    <td>20/11/2025 09:30</td>
                    <td><button class="btn view" onclick="openModal(this)" data-id="TK001">Xem</button></td>
                </tr>

                <tr data-id="TK002">
                    <td>TK002</td>
                    <td><b>Trần Thị B</b><br><small>b.tran@email.com</small></td>
                    <td>Giao sai mẫu đã đặt</td>
                    <td>Đổi trả</td>
                    <td><span class="badge priority-medium">Trung bình</span></td>
                    <td class="status-cell"><span class="badge status-processing">Đang xử lý</span></td>
                    <td>19/11/2025 14:20</td>
                    <td><button class="btn view" onclick="openModal(this)" data-id="TK002">Xem</button></td>
                </tr>

                <tr data-id="TK003">
                    <td>TK003</td>
                    <td><b>Lê Văn C</b><br><small>c.le@email.com</small></td>
                    <td>Trả hàng do không phù hợp</td>
                    <td>Hoàn trả</td>
                    <td><span class="badge priority-low">Thấp</span></td>
                    <td class="status-cell"><span class="badge status-done">Đã giải quyết</span></td>
                    <td>18/11/2025 10:00</td>
                    <td><button class="btn view" onclick="openModal(this)" data-id="TK003">Xem</button></td>
                </tr>

                <tr data-id="TK004">
                    <td>TK004</td>
                    <td><b>Vũ Minh H</b><br><small>h.vu@email.com</small></td>
                    <td>Yêu cầu hoàn tiền không hợp lệ</td>
                    <td>Khác</td>
                    <td><span class="badge priority-low">Thấp</span></td>
                    <td class="status-cell"><span class="badge status-rejected">Đã từ chối</span></td>
                    <td>18/11/2025 10:00</td>
                    <td><button class="btn view" onclick="openModal(this)" data-id="TK004">Xem</button></td>
                </tr>

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
                    <div class="image-list">
                        <img src="../img/loi1.jpg">
                        <img src="../img/loi2.jpg">
                    </div>
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
<footer class="site-footer">
    <div class="footer-container">

        <div class="footer-column">
            <h3 class="footer-title">Về Chúng Tôi</h3>
            <p style="margin-bottom: 20px;">
                Tinh hoa gốm Việt - Nơi lưu giữ và phát triển những giá trị truyền thống của làng nghề Bát Tràng. Chúng tôi cam kết mang đến những sản phẩm chất lượng cao, an toàn và thẩm mỹ.
            </p>
            <ul class="contact-info">
                <li>
                    <i class="fas fa-map-marker-alt"></i>
                    <span>Khu phố 33, Linh Xuân, Tp.HCM</span>
                </li>
                <li>
                    <i class="fas fa-phone-alt"></i>
                    <span>Hotline: 0987.654.321 (Zalo/Viber)</span>
                </li>
                <li>
                    <i class="fas fa-envelope"></i>
                    <span>Email: info@gomsutinhhoa.vn</span>
                </li>
            </ul>
        </div>

        <div class="footer-column">
            <h3 class="footer-title">Hỗ Trợ Khách Hàng</h3>
            <ul class="footer-links">
                <li><a href="#">Hướng dẫn mua hàng</a></li>
                <li><a href="#">Chính sách đổi trả & Hoàn tiền</a></li>
                <li><a href="#">Chính sách bảo mật thông tin</a></li>
                <li><a href="#">Quy định vận chuyển</a></li>
                <li><a href="#">Hình thức thanh toán</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3 class="footer-title">Sản Phẩm Nổi Bật</h3>
            <ul class="footer-links">
                <li><a href="#">Bộ đồ ăn Bát Tràng</a></li>
                <li><a href="#">Ấm chén trà cao cấp</a></li>
                <li><a href="#">Lọ hoa & Bình hút lộc</a></li>
                <li><a href="#">Đồ thờ cúng tâm linh</a></li>
                <li><a href="#">Quà tặng doanh nghiệp</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3 class="footer-title">Kết Nối Với Chúng Tôi</h3>
            <div class="social-links">
                <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" title="Zalo"><i class="fas fa-comment-dots"></i></a>
                <a href="#" title="Youtube"><i class="fab fa-youtube"></i></a>
                <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
            </div>

            <h3 class="footer-title" style="margin-top: 30px;">Đăng Ký Nhận Tin</h3>
            <p style="margin-bottom: 15px;">Nhận ngay thông tin về các chương trình khuyến mãi và sản phẩm mới nhất.</p>
            <form class="newsletter-form">
                <input type="email" placeholder="Nhập email của bạn...">
                <button type="submit">ĐĂNG KÝ</button>
            </form>
        </div>
    </div>

    <div class="footer-bottom">
        <p>© 2025 Gốm Sứ Tinh Hoa Bát Tràng. Tất cả các quyền được bảo lưu.</p>
    </div>
</footer>

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
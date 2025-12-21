<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kho</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background:#f7f7f7;
            margin:0;
            padding:24px;
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
            padding:12px;
            color:#fff;
            text-decoration:none;
            border-radius:8px;
        }

        .nav-links a.active,
        .nav-links a:hover{
            background:rgba(255,255,255,0.15);
        }

        /* ===== CONTENT ===== */
        .content{
            flex:1;
            padding-left:20px;
        }

        .head-title h1{
            margin-bottom:20px;
        }

        /* ===== TABS ===== */
        .tab-container{
            margin-bottom:20px;
        }

        .tab{
            padding:10px 20px;
            border:none;
            cursor:pointer;
            border-radius:6px;
            background:#ddd;
            font-weight:bold;
        }

        .tab.active{
            background:#4b89ff;
            color:#fff;
        }

        .tab-content{
            display:none;
        }

        .tab-content.active{
            display:block;
        }

        /* ===== TABLE ===== */
        table{
            width:100%;
            border-collapse:collapse;
            background:#fff;
            border-radius:10px;
            overflow:hidden;
            box-shadow:0 0 10px rgba(0,0,0,0.1);
        }

        th, td{
            padding:15px;
            text-align:left;
            border-bottom:1px solid #eee;
        }

        th{
            background:#f5f5f5;
        }

        .product{
            display:flex;
            align-items:center;
            gap:10px;
        }

        .product img{
            width:50px;
            height:50px;
            border-radius:6px;
            border:1px solid #ccc;
        }

        /* ===== STATUS ===== */
        .status.selling{
            color:#0079ff;
            font-weight:bold;
        }

        .status.pending{
            color:#ff9800;
            font-weight:bold;
        }

        .profit{
            color:#00aa33;
            font-weight:bold;
        }

        /* ===== BUTTONS ===== */
        button{
            padding:6px 12px;
            border:none;
            border-radius:6px;
            cursor:pointer;
            font-weight:bold;
        }

        .remove{ background:#e0e0e0; }
        .edit{ background:#ffba00; }
        .publish{ background:#4caf50; color:white; }
        .delete{ background:#ff5252; color:white; }

        button:hover{ opacity:0.85; }

        .save{
            background:#2196f3;
            color:white;
        }

        /* --- Trạng thái chưa lên kệ --- */
        .status.pending {
            color: #ff9800;
            font-weight: bold;
        }

        /* --- Button cho bảng chưa lên kệ --- */
        .publish {
            background: #4caf50;
            color: white;
            padding: 6px 12px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        .publish:hover {
            background: #43a047;
        }

        .delete {
            background: #ff5252;
            color: white;
            padding: 6px 12px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        .delete:hover {
            background: #e53935;
        }
        .save{
            background:#2196f3;
            color:white;
        }
    </style>

</head>
<body>
<!--header-->
<header class="pageHome-header" id="header-home">

    <a href="../index.jsp" class="text-header">
        <span class="text-nonglam">NÔNG LÂM</span>
        <span class="text-gomsu">GỐM SỨ TINH HOA</span>
    </a>

    <div class="search-header">
        <input type="text" placeholder="Bạn đang tìm sản phẩm gốm sứ nào?">
        <button class="search-btn"><i class="fas fa-search"></i></button>
    </div>

    <div class="right-header">
        <div class="user-info-container">
            <a href="myinfo.jsp" class="cover-avatar-user">
                <div class="user-avatar">
                    <i class="fas fa-user"></i>
                </div>
                <div class="info-user">
                    <span class="user-name">Nguyen Van A</span>
                    <span class="user-phone">0342104524</span>
                </div>
            </a>
            <div class="user-menu">
                <ul>
                    <li><a href="myinfo.jsp"><i class="fas fa-id-card"></i> Tài khoản của tôi</a></li>
                    <li><a href="#"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a></li>
                </ul>
            </div>
        </div>
        <a href="giohang.jsp" class="btn-header cart-btn">
            <i class="fas fa-shopping-cart"></i>
            <span>Giỏ hàng</span>
            <span class="cart-badge">2</span> </a>
    </div>
</header>
<nav class="menu-home">
    <ul class="cover-menu">
        <li class="sub-item"> <a href="gomgiadung.jsp">GỐM GIA DỤNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomgiadung.jsp">Ấm chén bác tràng</a></li>
                    <li><a href="gomgiadung.jsp">Bộ bác đĩa bác tràng</a></li>
                    <li><a href="gomgiadung.jsp">Chum ngâm rượu</a></li>
                    <li><a href="gomgiadung.jsp">Dụng cụ nhà tắm</a></li>
                    <li><a href="gomgiadung.jsp">Đèn ngủ</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="gomtrangtri.jsp">GỐM TRANG TRÍ</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomtrangtri.jsp">Bình gốm bát tràng</a></li>
                    <li><a href="gomtrangtri.jsp">Lọ hoa bát tràng</a></li>
                    <li><a href="gomtrangtri.jsp">Dĩa sứ trang trí</a></li>
                    <li><a href="gomtrangtri.jsp">Tượng gốm sứ</a></li>
                    <li><a href="gomtrangtri.jsp">Bình hồ lô</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="gomthocung.jsp">GỐM THỜ CÚNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomthocung.jsp">Bộ đồ thờ đầy đủ</a></li>
                    <li><a href="gomthocung.jsp">Bát hương</a></li>
                    <li><a href="gomthocung.jsp">Mâm bồng</a></li>
                    <li><a href="gomthocung.jsp">Bát nắp</a></li>
                    <li><a href="gomthocung.jsp">Cây đèn nến</a></li>
                </ul>
            </div>
        </li>
        <li class="sub-item"><a href="gomquatang.jsp">GỐM QUÀ TẶNG</a><i class="bi bi-chevron-down"></i>
            <div class="sub-menu">
                <ul class="hover">
                    <li><a href="gomquatang.jsp">Bình hút lộc in logo</a></li>
                    <li><a href="gomquatang.jsp">Ấm chén in logo</a></li>
                    <li><a href="gomquatang.jsp">Bình hoa in logo</a></li>
                    <li><a href="gomquatang.jsp">Quà tặng bát đĩa</a></li>
                </ul>
            </div>
        </li>
        <li><a href="tintuc.jsp">TIN TỨC</a></li>
        <li><a href="GioiThieu.jsp">GIỚI THIỆU</a></li>
        <li><a href="lienhe.jsp">LIÊN HỆ</a></li>
        <li><a href="quanlyaccount.jsp">ADMIN CONTROL</a></li>
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
            <li><a href="#" class="active"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="content">
        <div class="head-title">
            <h1><i class="fas fa-warehouse"></i> Kho hàng</h1>
        </div>

        <!-- ===== ĐÃ LÊN KỆ ===== -->
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
                <tr>
                    <td class="product">
                        <img src="../img/bo_binh_6_coc_8.jpg">
                        <span>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</span>
                    </td>
                    <td>
                        <span class="price-text">2.300.000</span> đ
                        <input type="number"
                               class="price-input"
                               value="2300000"
                               style="display:none; width:100px;">
                    </td>
                    <td>100</td>
                    <td>360</td>
                    <td class="status selling">Đang bán</td>
                    <td class="profit green">115.000đ</td>
                    <td>
                        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
                        <button class="edit" onclick="editPrice(this)">Điều chỉnh</button>
                        <button class="save" onclick="savePrice(this)" style="display:none;">Lưu</button>
                    </td>
                </tr>

                <tr>
                    <td class="product">
                        <img src="../img/bo_binh_6_coc_8.jpg">
                        <span>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</span>
                    </td>
                    <td>
                        <span class="price-text">2.300.000</span> đ
                        <input type="number"
                               class="price-input"
                               value="2300000"
                               style="display:none; width:100px;">
                    </td>
                    <td>100</td>
                    <td>360</td>
                    <td class="status selling">Đang bán</td>
                    <td class="profit green">115.000đ</td>
                    <td>
                        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
                        <button class="edit" onclick="editPrice(this)">Điều chỉnh</button>
                        <button class="save" onclick="savePrice(this)" style="display:none;">Lưu</button>
                    </td>
                </tr>

                <tr>
                    <td class="product">
                        <img src="../img/bo_binh_6_coc_8.jpg">
                        <span>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</span>
                    </td>
                    <td>
                        <span class="price-text">2.300.000</span> đ
                        <input type="number"
                               class="price-input"
                               value="2300000"
                               style="display:none; width:100px;">
                    </td>
                    <td>100</td>
                    <td>360</td>
                    <td class="status selling">Đang bán</td>
                    <td class="profit green">115.000đ</td>
                    <td>
                        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
                        <button class="edit" onclick="editPrice(this)">Điều chỉnh</button>
                        <button class="save" onclick="savePrice(this)" style="display:none;">Lưu</button>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
        <!-- ===== CHƯA LÊN KỆ ===== -->
        <div class="tab-content" id="off">
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
                <tr>
                    <td class="product">
                        <img src="../img/bo_binh_6_coc_8.jpg">
                        <span>Lọ Hoa Gốm Men Lam</span>
                    </td>
                    <td>850.000đ</td>
                    <td>120</td>
                    <td class="status pending">Chưa lên kệ</td>
                    <td>
                        <button class="publish" onclick="publishProduct(this)">Lên kệ</button>
                        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
                    </td>
                </tr>

                <tr>
                    <td class="product">
                        <img src="../img/bo_binh_6_coc_8.jpg">
                        <span>Lọ Hoa Gốm Men Lam</span>
                    </td>
                    <td>850.000đ</td>
                    <td>120</td>
                    <td class="status pending">Chưa lên kệ</td>
                    <td>
                        <button class="publish" onclick="publishProduct(this)">Lên kệ</button>
                        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
                    </td>
                </tr>

                <tr>
                    <td class="product">
                        <img src="../img/bo_binh_6_coc_8.jpg">
                        <span>Lọ Hoa Gốm Men Lam</span>
                    </td>
                    <td>850.000đ</td>
                    <td>120</td>
                    <td class="status pending">Chưa lên kệ</td>
                    <td>
                        <button class="publish" onclick="publishProduct(this)">Lên kệ</button>
                        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>

    </div>
</div>

<!--footer-->
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
    /* 1. CHUYỂN TAB (Đã lên kệ / Chưa lên kệ) */
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

    /* 2. ĐIỀU CHỈNH GIÁ SẢN PHẨM */
    function editPrice(btn){
        const row = btn.closest("tr");
        row.querySelector(".price-text").style.display = "none";
        row.querySelector(".price-input").style.display = "inline-block";
        btn.style.display = "none";
        row.querySelector(".save").style.display = "inline-block";
    }
    function savePrice(btn){
        const row = btn.closest("tr");
        const input = row.querySelector(".price-input");
        const newPrice = Number(input.value);

        if(newPrice <= 0){
            alert("Giá không hợp lệ");
            return;
        }
        row.querySelector(".price-text").innerText =
            newPrice.toLocaleString("vi-VN");

        row.querySelector(".price-text").style.display = "inline";
        input.style.display = "none";
        btn.style.display = "none";
        row.querySelector(".edit").style.display = "inline-block";
    }

    /* 3. XÓA SẢN PHẨM */
    function deleteProduct(btn){
        if(!confirm("Bạn có chắc chắn muốn xóa sản phẩm này không?")) return;
        const row = btn.closest("tr");
        row.remove();
    }

    /* 4. LÊN KỆ SẢN PHẨM */
    function publishProduct(btn){
        if(!confirm("Xác nhận đưa sản phẩm lên kệ?")) return;
        const oldRow = btn.closest("tr");
        // Hàng hóa
        const tdProduct = oldRow.querySelector("td.product").cloneNode(true);
        // Giá
        const rawPrice = oldRow.children[1].innerText.replace("đ","").trim();
        const priceNumber = Number(rawPrice.replace(/\D/g,''));
        const profit = Math.round(priceNumber * 0.05);
        const tdPrice = document.createElement("td");
        tdPrice.innerHTML = `
        <span class="price-text">${rawPrice}</span> đ
        <input type="number" class="price-input"
               value="${priceNumber}"
               style="display:none; width:100px;">
    `;
        // Tồn
        const tdStock = document.createElement("td");
        tdStock.innerText = oldRow.children[2].innerText;
        // Đã bán
        const tdSold = document.createElement("td");
        tdSold.innerText = "0";
        // Trạng thái
        const tdStatus = document.createElement("td");
        tdStatus.className = "status selling";
        tdStatus.innerText = "Đang bán";
        // Lợi nhuận 5%
        const tdProfit = document.createElement("td");
        tdProfit.className = "profit";
        tdProfit.innerText = profit.toLocaleString("vi-VN") + "đ";
        // Thao tác
        const tdAction = document.createElement("td");
        tdAction.innerHTML = `
        <button class="remove" onclick="deleteProduct(this)">Xóa</button>
        <button class="edit" onclick="editPrice(this)">Điều chỉnh</button>
        <button class="save" onclick="savePrice(this)" style="display:none;">Lưu</button>
    `;
        // Ghép dòng
        const newRow = document.createElement("tr");
        newRow.append(
            tdProduct,
            tdPrice,
            tdStock,
            tdSold,
            tdStatus,
            tdProfit,
            tdAction
        );

        document.getElementById("onSaleBody").appendChild(newRow);
        oldRow.remove();
        document.querySelector('[data-tab="on"]').click();
    }
</script>
</body>
</html>
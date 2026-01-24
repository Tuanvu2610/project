<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/trangthaidon.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<!---->
<section class="page-body">
    <div class="container-page">
        <div class="cover-left-page">
            <div class="info-avatar">
                <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                <div class="name">
                    <p>Nguyen Van A</p>
                    <p>0342104524</p>
                </div>
            </div>
            <ul class="nav-links">
                <li><a href="myinfo.jsp"><i class="fa fa-user user-icon"></i>
                    <span>Thông tin của tôi</span></a></li>
                <li><a href="#" class="active"><i class="fa fa-shopping-bag order-icon"></i>
                    <span>Đơn mua</span></a></li>
            </ul>
        </div>
        <div class="cover-right-page">
            <div class="title-page">
                <p>Trạng thái đơn hàng của tôi</p>
            </div>
            <ul class="list-page">
                <li class="tab" data-target="all">Tất cả</li>
                <li class="tab" data-target="dagiao">Đã giao</li>
                <li class="tab" data-target="chuagiao">Chưa giao</li>
                <li class="tab" data-target="huy">Đã hủy</li>
            </ul>
            <div class="all-products">
                <div class="table-container item"  id="all">
                    <table>
                        <thead class="title-table ">
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Tên sản phẩm</th>
                            <th>Tổng tiền</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody >
                        <tr >
                            <td>#001</td>
                            <td>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                            <td>1.000.000</td>
                            <td><span class="status dagiao">Đã giao</span></td>
                        </tr>
                        <tr>
                            <td>#002</td>
                            <td>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                            <td>5.000.000</td>
                            <td><span class="status chuagiao">Chưa giao</span></td>
                        </tr>
                        <tr>
                            <td>#003</td>
                            <td>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                            <td>600.000</td>
                            <td><span class="status huy">Đã hủy</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table-container item" id="dagiao" style="display: none">
                    <table>
                        <thead class="title-table">
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>#001</td>
                            <td>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                            <td>01</td>
                            <td><span class="status dagiao">Đã giao</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table-container item" id="chuagiao" style="display: none">
                    <table>
                        <thead class="title-table">
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>#002</td>
                            <td>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                            <td>02</td>
                            <td><span class="status chuagiao">Chưa giao</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table-container item" id="huy" style="display: none">
                    <table>
                        <thead class="title-table">
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>#003</td>
                            <td>Bộ Bình Rượu Gốm Sứ Sóng Vàng Biển Xanh</td>
                            <td>01</td>
                            <td><span class="status huy">Đã hủy</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
<script src="../js/javascript.js"></script>
</body>
</html>
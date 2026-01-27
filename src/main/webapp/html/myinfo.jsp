<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dangnhap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<!--body-->
<section class="body-info">
    <div class="container-info">
        <div class="cover-left-page">
            <div class="info-avatar">
                <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                <div class="name">
                    <p>${sessionScope.auth.user.name}</p>
                    <p>${sessionScope.auth.user.phone}</p>
                </div>
            </div>
            <ul class="nav-links">
                <li><a href="#" class="active"><i class="fa fa-user user-icon"></i>
                    <span>Thông tin của tôi</span></a></li>
                <li><a href="trangthaidon.jsp"><i class="fa fa-shopping-bag order-icon"></i>
                    <span>Đơn mua</span></a></li>
            </ul>
        </div>
        <div class="cover-right-page">
            <div class="title-info">
                <p>Hồ sơ của tôi</p>
                <p class="style-title-info">Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
            </div>
            <form action="tai-khoan" method="post">
                <div class="cover-info">
                    <div class="left-info">
                        <div class="cover-username style-lable">
                            <label>Tên đăng nhập: </label>
                            <input type="text" class="style-input" name="username" id="" value="${sessionScope.auth.username}" readonly>
                        </div>
                        <div class="cover-name style-lable">
                            <label>Tên: </label>
                            <input type="text" class="style-input" name="name" id="" value="${sessionScope.auth.user.name}">
                        </div>
                        <div class="cover-email style-lable">
                            <label>Email: </label>
                            <input type="text" class="style-input" name="email" id="" value="${sessionScope.auth.user.email}">
                        </div>
                        <div class="cover-phone style-lable">
                            <label>Phone: </label>
                            <input type="text" class="style-phone" name="phone" id="" value="${sessionScope.auth.user.phone}">
                        </div>
                        <div class="cover-phone style-lable">
                            <label>Giới tính: </label>
                            <div class="cover-sex">
                                <div>
                                    <label> Nam</label>
                                    <input type="radio" class="style-radio" name="sex" value="Male"${sessionScope.auth.user.sex == "Male" ? "checked" : ""}>
                                </div>
                                <div>
                                    <label> Nu</label>
                                    <input type="radio" class="style-radio" name="sex" value="Female"${sessionScope.auth.user.sex == "Female" ? "checked" : ""}>
                                </div>
                            </div>
                        </div>
                        <div class="btn-save">
                            <button>Lưu</button>
                        </div>
                    </div>
                    <div class="right-info">
                        <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                        <button>Thay đổi</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dangnhap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<!--header-->
<jsp:include page="/header"/>

<!--content-->
<div class="modal-container active">
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <a href="home" class="close-btn">&times;</a>
            <h1 class="head">Đăng nhập</h1>
            <c:if test="${not empty error}">
                <div class="error-message">${error}</div>
            </c:if>
            <c:if test="${not empty success}">
                <div class="success-message">${success}</div>
            </c:if>
            <form action="login" method="post">
                <div class="section active">
                    <div class="username-section style-section">
                        <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">
                        <input class="input-style" type="text" name="username" placeholder="Tên đăng nhập hoặc Email">
                    </div>
                    <div class="password-section style-section">
                        <img src="https://www.svgrepo.com/show/535485/lock-closed.svg" alt="">
                        <input class="input-style" id="loginPassword" name="password" type="password" autocomplete="current-password" placeholder="Mật khẩu">
                        <span class="toggle-password" onclick="togglePassword('loginPassword', this)">🐵</span>
                    </div>
                    <div class="remember-section">
                        <label class="remember-me"><input type="checkbox" name="remember">Ghi nhớ mật khẩu</label>
                    </div>
                    <button type="submit" class="btn">Đăng nhập</button>
                    <p class="forgot-pass"><a href="javascript:void(0)" onclick="showForgotPass()">Quên mật khẩu?</a></p>
                </div>
            </form>
            <div class="select">
                <p>Hoặc đăng nhập bằng</p>
                <div class="link">
                    <img src="https://www.svgrepo.com/show/354981/facebook-option.svg" alt="Facebook">
                    <img src="https://www.svgrepo.com/show/475656/google-color.svg" alt="Google">
                </div>
            </div>
            <div class="foot"><a href="javascript:void(0)" onclick="showSignup()">Đăng ký tài khoản mới</a></div>
        </div>
    </div>

    <div id="signupModal" class="modal">
        <div class="modal-content">
            <a href="javascript:void(0)" class="close-btn" onclick="showLogin()">&times;</a>
            <h1 class="head">Đăng ký</h1>
            <c:if test="${not empty registerError}">
                <div class="error-message">${registerError}</div>
            </c:if>
            <form action="login" method="post">
                <input type="hidden" name="action" value="register">

                <div class="name-section style-section">
                    <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">
                    <input class="input-style" name="name" type="text" placeholder="Tên đầy đủ"
                           value="${name != null ? name : ''}">
                </div>

                <div class="username-section style-section">
                    <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">
                    <input class="input-style" name="dk_username" type="text" placeholder="Tên tài khoản"
                           value="${user != null ? user : ''}">
                </div>
                <div class="email-section style-section">
                    <img src="https://www.svgrepo.com/show/498958/email.svg" alt="">
                    <input class="input-style" name="email" type="email" placeholder="Email"
                           value="${email != null ? email : ''}">
                </div>
                <div class="password-section style-section">
                    <img src="https://www.svgrepo.com/show/535485/lock-closed.svg" alt="">
                    <input class="input-style" id="registerPassword" name="dk_pass" type="password" placeholder="Mật khẩu">
                    <span class="toggle-password" onclick="togglePassword('registerPassword', this)">🐵</span>
                </div>
                <div class="confirm-section style-section">
                    <img src="https://www.svgrepo.com/show/93282/verify.svg" alt="">
                    <input class="input-style" id="confirmPassword" name="confirm_pass" type="password" placeholder="Xác nhận mật khẩu">
                    <span class="toggle-password" onclick="togglePassword('confirmPassword', this)">🐵</span>
                </div>

                <button class="btn" type="submit">Đăng ký</button>
            </form>
            <div class="foot"><a href="javascript:void(0)" onclick="showLogin()">Quay lại Đăng nhập</a></div>
        </div>
    </div>

    <!--quen mat khau-->
    <div id="forgotModal" class="modal">
        <div class="modal-content">
            <a href="javascript:void(0)" class="close-btn" onclick="showLogin()">&times;</a>
            <h1 class="head">Quên mật khẩu</h1>
            <div class="section active" id="forgot">
                <p style="text-align:center;margin-bottom: 10px;color: #0a8300;font-weight: bold">
                    Nhập email để đặt lại mật khẩu
                </p>
                <form action="login" method="post">
                    <input type="hidden" name="action" value="forgot">

                    <div class="username-section style-section">
                        <img src="https://www.svgrepo.com/show/105517/user-icon.svg" alt="">
                        <input class="input-style" name="restore_email" type="email" placeholder="Email khôi phục">
                    </div>

                    <button class="btn" type="submit">Gửi yêu cầu khôi phục</button>
                </form>
                <div class="foot"><a href="javascript:void(0)" onclick="showLogin()">Quay lại Đăng nhập</a></div>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<jsp:include page="/common/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>
</html>

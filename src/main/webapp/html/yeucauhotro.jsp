<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .container-page {
            display: flex;
        }
        .cover-left-page {
            width: 30%;
            display: flex;
            flex-direction: column;
            background-color: #0d8e02c7;
        }
        .info-avatar img {
            width: 50px;
            padding: 20px;
            background-color: #ccc;
            border-radius: 50%;
        }
        .name {
            color: #fff;
            font-size: 16px;
            font-weight: bold;
        }
        .info-avatar {
            display: flex;
            gap: 20px;
            padding: 20px 50px;
            border-bottom: 1px solid #cccccc6b;
        }
        .nav-links {
            padding: 10px;
            list-style: none;
        }
        .nav-links li {
            margin: 15px 0;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
        }
        .active {
            background: rgba(255, 255, 255, 0.1);
        }
        .nav-links a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 15px;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.3s;
        }
        .nav-links img {
            width: 25px;
        }
        body {
            font-family: Arial, sans-serif;
            background: #f6f7fb;
            margin: 0;
            padding: 0;
        }

        .support-container {
            max-width: 800px;
            margin: 60px auto;
            background: #fff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
        }

        .support-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .support-header i {
            font-size: 48px;
            color: #333;
            margin-bottom: 15px;
        }

        .support-header h1 {
            margin: 10px 0;
        }

        .support-header p {
            color: #666;
        }

        .support-info {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 15px;
            color: #555;
        }

        .support-info i {
            margin-right: 8px;
        }

        .support-form h2 {
            margin-bottom: 10px;
        }

        .support-form p {
            color: #777;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: none;
            background: #f1f2f4;
            font-size: 14px;
            outline: none;
        }

        .form-group textarea {
            resize: none;
            height: 120px;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            border-radius: 12px;
            border: none;
            background: linear-gradient(90deg, #111, #333);
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            opacity: 0.9;
        }

        .success-alert {
            background: #e6fffa;
            border-left: 6px solid #22c55e;
            color: #065f46;
            padding: 16px 20px;
            border-radius: 12px;
            margin: 30px auto;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 12px;
            max-width: 800px;
        }
        .success-alert i {
            color: #22c55e;
            font-size: 20px;
        }
    </style>

</head>
<body>
<!--header-->
<jsp:include page="/common/header.jsp"/>
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
                <li><a href="trangthaidon.jsp" class="active"><i class="fa fa-shopping-bag order-icon"></i>
                    <span>Đơn mua</span></a></li>
                <li><a href="#"><i class="fa fa-headset support-icon"></i>
                    <span>Yêu cầu hỗ trợ</span></a></li>
            </ul>
        </div>

        <div class="support-container">

            <!-- Header -->
            <div class="support-header">
                <i class="fa-solid fa-headset"></i>
                <h1>Trung Tâm Hỗ Trợ</h1>
                <p>
                    Chúng tôi luôn sẵn sàng hỗ trợ bạn.
                    Gửi yêu cầu của bạn và đội ngũ hỗ trợ sẽ phản hồi trong thời gian sớm nhất.
                </p>

                <div class="support-info">
                    <div>
                        <i class="fa-solid fa-envelope"  style="font-size:16px"></i>
                        support@company.com
                    </div>
                    <div>
                        <i class="fa-solid fa-clock"  style="font-size:16px"></i>
                        24/7 Hỗ trợ
                    </div>
                </div>
            </div>

            <c:if test="${not empty sessionScope.flash_success}">
                <div class="success-alert">
                    <i class="fa-solid fa-circle-check"></i>
                    <span>${sessionScope.flash_success}</span>
                </div>
                <c:remove var="flash_success" scope="session"/>
            </c:if>

            <!-- Form -->
            <div class="support-form">
                <h2>Yêu Cầu Hỗ Trợ</h2>
                <p>Điền thông tin bên dưới và chúng tôi sẽ liên hệ với bạn sớm nhất có thể</p>
                <form action="${pageContext.request.contextPath}/support"
                      method="post"
                      enctype="multipart/form-data">

                    <div class="form-group">
                        <label>Họ và Tên *</label>
                        <input type="text"
                               name="fullName"
                               placeholder="Nhập họ và tên của bạn"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Email *</label>
                        <input type="email"
                               name="email"
                               placeholder="example@email.com"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Loại Vấn Đề *</label>
                        <select name="category" required>
                            <option value="Bao_hanh"> Bảo hành</option>
                            <option value="Doi_tra"> Đổi trả</option>
                            <option value="Hoan_tien">Hoàn tiền</option>
                            <option value="Khac">Khác</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Tiêu đề *</label>
                        <input type="text"
                               name="title"
                               placeholder="Nhập tiêu đề ngắn gọn"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Mô Tả Chi Tiết *</label>
                        <textarea name="description"
                                  rows="5"
                                  placeholder="Vui lòng mô tả vấn đề của bạn chi tiết..."
                                  required></textarea>
                    </div>

                    <div class="form-group">
                        <label>Hình ảnh đính kèm (nếu có)</label>
                        <input type="file"
                               name="supportImage"
                               accept="image/*">
                        <small class="hint">Hỗ trợ JPG, PNG. Tối đa 5MB.</small>
                    </div>

                    <button type="submit" class="submit-btn">
                        Gửi Yêu Cầu
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/common/footer.jsp"/>
</body>
</html>

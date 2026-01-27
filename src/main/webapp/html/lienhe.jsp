<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/lienhe.css">
    <link rel="stylesheet" href="../css/style.css">
    <title>Gốm sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<div class="container">
    <div class="content">
        <h1>LIÊN HỆ</h1>
        <p>Nếu bạn có thắc mắc với dịch vụ sản phẩm của Gốm Sứ Nông Lâm,
            vui lòng liên hệ để Gốm Sứ Nông Lâm tư vấn rõ nhất các vấn đề của bạn.</p>
        <ul>
            <li>Địa chỉ : <a href="https://www.google.com/maps/dir/10.8712063,106.7553723/Trường+Đại+học+Nông+Lâm+TP.HCM">Khu phố 33, Linh Xuân, Tp.HCM</a></li>
            <li>Hotline: 028.38974560</li>
            <li>Group: Team 4 | Web Programing</li>
            <li>Website: <a href="">https://helloworld/</a></li>
            <li>Gmail: <a href="">helloworld@gmail.com</a></li>
            <div class="support">
                <a href="${pageContext.request.contextPath}/support" class="btn-support">
                    <i class="fa-solid fa-headset"></i>
                    Yêu cầu hỗ trợ
                </a>
            </div>
        </ul>
    </div>
    <div class="map">
        <iframe
                src="https://www.google.com/maps?q=Trường+Đại+học+Nông+Lâm+TP.HCM&output=embed"
                width="100%"
                height="350"
                style="border:0;"
                allowfullscreen=""
                loading="lazy">
        </iframe>
    </div>
</div>

<!--footer-->
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gốm Sứ NÔNG LÂM</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/quanly.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
<!--header-->
<jsp:include page="/header"/>
<!--body-->
<section class="container-quanly">
    <div class="sidebar">
        <div class="title">
            <h2><span>ADMIN CONTROL</span></h2>
        </div>
        <ul class="nav-links">
            <li><a href="#" class="active"><i class="fas fa-users"></i> <span>Quản lý User</span></a></li>
            <li><a href="/thong-ke"><i class="fas fa-chart-bar"></i> <span>Thống kê</span></a></li>
            <li><a href="/kho"><i class="fas fa-house-user"></i> <span>Kho</span></a></li>
            <li><a href="donhang.jsp"><i class="fas fa-receipt"></i> <span>Đơn hàng</span></a> </li>
            <li><a href="haumai.jsp"><i class="fas fa-headset"></i> <span>Hậu mãi</span></a> </li>
        </ul>
    </div>
    <div class="main-content">
        <div class="header-control">
            <h1><i class="fas fa-users-cog"></i> Quản lý Người dùng</h1>
        </div>
        <div class="stats-container">
            <div class="stat-card">
                <div class="stat-icon total">
                    <i class="fas fa-users"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalAcc}</h3>
                    <p>Tổng số User</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon active">
                    <i class="fas fa-user-check"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalActive}</h3>
                    <p>User Active</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon pending">
                    <i class="fas fa-user-clock"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalPending}</h3>
                    <p>Đang chờ xử lý</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon banned">
                    <i class="fas fa-user-slash"></i>
                </div>
                <div class="stat-info">
                    <h3>${totalBanned}</h3>
                    <p>User Bị khoá</p>
                </div>
            </div>
        </div>
        <div class="controls">
            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="text" placeholder="Tìm kiếm user...">
            </div>
            <div class="action-buttons">
                <button class="btn btn-primary"><a href="/them-tai-khoan"><i class="fas fa-plus"></i> Thêm User</a></button>
            </div>
        </div>
        <div class="filters">
            <div class="filter-group">
                <label>Nhóm:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Admin</option>
                    <option>User</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Trạng thái:</label>
                <select>
                    <option>Tất cả</option>
                    <option>Active</option>
                    <option>Pending</option>
                    <option>Banned</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Sắp xếp:</label>
                <select>
                    <option>Mới nhất</option>
                    <option>Cũ nhất</option>
                    <option>Theo tên A-Z</option>
                    <option>Theo tên Z-A</option>
                </select>
            </div>
        </div>
        <c:if test="${not empty param.msg}">
            <div class="thongbao thongbao-success">
                <c:choose>
                    <c:when test="${param.msg == 'deleted'}">✅ Xóa tài khoản thành công</c:when>
                    <c:when test="${param.msg == 'notfound'}">⚠️ Không tìm thấy tài khoản</c:when>
                    <c:when test="${param.msg == 'editSuccess'}">✅ Chỉnh sửa tài khoản thành công</c:when>
                    <c:when test="${param.msg == 'notfoundEdit'}">⚠️ Không tìm thấy tài khoản</c:when>
                    <c:otherwise>❌ Có lỗi xảy ra</c:otherwise>
                </c:choose>
            </div>
        </c:if>
        <div class="table-container">
            <table>
                <thead class="title-table">
                <tr>
                    <th>ID</th>
                    <th>User</th>
                    <th>Email</th>
                    <th>Chức năng</th>
                    <th>Trạng thái</th>
                    <th>Ngày tham gia</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="p" items="${listAcc}" varStatus="st">
                    <tr class="view" data-id="${p.id}">
                        <td>${st.index + 1 + 10 * (currentPage - 1)}</td>
                        <td>${p.name}</td>
                        <td>${p.username}</td>
                        <td><span class="role admin">${p.role}</span></td>
                        <td><span class="status ${p.status}">${p.status}</span></td>
                        <td>${p.registration_date}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <c:set var="start" value="${currentPage - 2}" />
        <c:set var="end" value="${currentPage + 2}" />

        <c:if test="${start < 1}">
            <c:set var="start" value="1" />
        </c:if>

        <c:if test="${end > totalPages}">
            <c:set var="end" value="${totalPages}" />
        </c:if>

        <div class="pagination">
            <c:if test="${currentPage > 1}">
                <a href="quan-ly-account?page=${currentPage - 1}">&laquo;</a>
            </c:if>
            <c:forEach begin="${start}" end="${end}" var="i">
                <a href="quan-ly-account?page=${i}"
                   class="${i == currentPage ? 'active' : ''}">
                        ${i}
                </a>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <a href="quan-ly-account?page=${currentPage + 1}">&raquo;</a>
            </c:if>
        </div>
    </div>
</section>
<!--modal-->
<section class="overlay overlay-view" style="display: none;">
    <div class="container-modal">
        <div class="cover-modal">
            <span class="exit-btn">&times;</span>
            <p id="role"></p>
            <div class="cover-allinfo">
                <div class="avatar-name">
                    <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                    <p style="margin: 0" id="name"></p>
                </div>
                <div class="cover-info">
                    <p><img src="https://www.svgrepo.com/show/535565/phone.svg" alt="">Phone: <span id="phone"></span></p>
                    <p><img src="https://www.svgrepo.com/show/533217/mail-open-alt-1.svg" alt="">Email: <span id="email"></span></p>
                    <p><img src="https://www.svgrepo.com/show/509759/birthday-cupcake.svg" alt="">Birthday: <span id="birthday"></span></p>
                    <p><img src="https://www.svgrepo.com/show/535465/key-skeleton.svg" alt="">Role: <span id="role2"></span></p>
                    <p><img src="https://www.svgrepo.com/show/497557/status.svg" alt="">Status: <span id="status"></span></p>
                </div>
                <div class="cover-active">
                    <p><img src="https://www.svgrepo.com/show/502605/date-range.svg" alt="">Đăng ký: <span id="date"></span></p>
                </div>
                <div class="cover-btn">
                    <button class="edit button-style size-btn" onclick="openEdit()"><img src="img/edit-svgrepo-com.png">️Edit</button>
                    <form class="size-btn" action="${pageContext.request.contextPath}/account-detail" method="post" onsubmit="return confirm('Bạn có chắc muốn xóa user này?')">
                        <input type="hidden" name="action" value="deleteUser">
                        <input type="hidden" name="id" id="delete-id">
                        <button type="submit"  class="remove button-style">
                            <img src="img/delete-svgrepo-com.svg">Remove
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<%----%>
<section class="overlay overlay-edit" style="display: none;">
    <div class="container-modal">
        <div class="cover-modal">
            <span class="exit-btn">&times;</span>
            <p id="role"></p>
            <div class="cover-allinfo">
                <div class="avatar-name">
                    <img src="https://www.svgrepo.com/show/535711/user.svg" alt="">
                    <p style="margin: 0" id="name-id"></p>
                </div>
                <form action="account-detail" method="post">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="id" id="edit-id">
                    <div class="cover-info">
                        <p><img src="https://www.svgrepo.com/show/535565/phone.svg" alt="">Phone:
                            <label for="edit-phone"></label><input type="text" name="phone" id="edit-phone"></p>
                        <p><img src="https://www.svgrepo.com/show/533217/mail-open-alt-1.svg" alt="">Email:
                            <label for="edit-email"></label><input type="email" name="email" id="edit-email"></p>
                        <p><img src="https://www.svgrepo.com/show/509759/birthday-cupcake.svg" alt="">Birthday:
                            <label for="edit-birthday"></label><input type="date" name="birthday" id="edit-birthday"></p>
                        <p><img src="https://www.svgrepo.com/show/535465/key-skeleton.svg" alt="">Role:
                            <select name="role" id="edit-role">
                                <option value="user">User</option>
                                <option value="admin">Admin</option>
                            </select>
                        </p>
                        <p><img src="https://www.svgrepo.com/show/497557/status.svg" alt="">Status:
                            <select name="status" id="edit-status">
                                <option value="active">Active</option>
                                <option value="pending">Pending</option>
                                <option value="banned">Banned</option>
                            </select>
                        </p>
                    </div>
                    <div class="cover-active">
                        <p><img src="https://www.svgrepo.com/show/502605/date-range.svg" alt="">Đăng ký: <span id="date-edit"></span></p>
                    </div>
                    <div class="cover-btn">
                        <button  type="submit" class="save button-style size-btn"><img src="img/save-floppy-svgrepo-com.svg">Lưu</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--footer-->
<jsp:include page="/common/footer.jsp"/>
<script>
    let currentAcc = null;
    document.querySelectorAll('.view').forEach(btn => {
        btn.addEventListener('click', function (e) {
            e.stopPropagation();
            const id = this.dataset.id;

            fetch('${pageContext.request.contextPath}/account-detail?id=' + id)
                .then(res => res.json())
                .then(acc => {
                    currentAcc = acc;
                    document.getElementById('name').innerText = acc.name;
                    document.getElementById('email').innerText = acc.username;
                    document.getElementById('phone').innerText = acc.phone;
                    document.getElementById('birthday').innerText = acc.date_of_birth;
                    document.getElementById('role').innerText = acc.role.toUpperCase();
                    document.getElementById('role2').innerText = acc.role;
                    document.getElementById('status').innerText = acc.status;
                    document.getElementById('date').innerText = acc.registration_date;
                    document.getElementById('delete-id').value = acc.user_id;
                    document.querySelector('.overlay').style.display = 'block';
                });
        });
    });

    setTimeout(() => {
        const thongbao = document.querySelector('.thongbao');
        if (thongbao) thongbao.style.display = 'none';
    }, 3000);


    if (window.location.search.includes('msg=')) {
        const url = new URL(window.location.href);
        url.searchParams.delete('msg');

        window.history.replaceState({}, document.title, url.pathname + url.search);
    }
    function openEdit() {
        document.querySelector('.overlay-view').style.display = 'none';
        document.querySelector('.overlay-edit').style.display = 'block';
        document.getElementById("edit-id").value = currentAcc.user_id;
        document.getElementById('name-id').innerText = currentAcc.name;
        document.getElementById('edit-phone').value = currentAcc.phone;
        document.getElementById('edit-email').value = currentAcc.username;
        document.getElementById('edit-birthday').value = currentAcc.date_of_birth;
        document.getElementById('edit-role').value = currentAcc.role;
        document.getElementById('edit-status').value = currentAcc.status;
        document.getElementById('date-edit').innerText = currentAcc.registration_date;
    }
    document.querySelector('.exit-btn').addEventListener('click', () => {
        document.querySelector('.overlay').style.display = 'none';
    });
</script>

</body>
</html>
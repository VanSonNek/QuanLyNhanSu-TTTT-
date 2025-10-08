<%--
  Created by IntelliJ IDEA.
  User: abc09
  Date: 4/15/2025
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page isELIgnored="false"%>

<html>
<head>
    <title>Hello</title>
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/admin/home.css'/>">

</head>
<body>

<div class="header">
    <div class="header-left">
        <i class="fa-solid fa-user-tie fa-lg"></i>
        <div class="title">Quản Lý Thông <br> Tin</div>

    </div>

    <div class="header-right">
        <div class="dash-mark"><i class="fa-solid fa-bars"></i></div>
        <div class="right-group">
            <div class="search"><i class="fa-solid fa-magnifying-glass"></i></div>
            <div><i class="fa-regular fa-bell"></i></div>
            <div>|</div>
            <div class="user-info">
                <img src="https://via.placeholder.com/30" alt="User Avatar">
                <span>${users.username} (${users.role})</span>
                <!-- menu dropdown -->
                <div class="dropdown-menu">
                    <a href="/app/personal-information"><i class="fa-solid fa-user-tie"></i> Thông tin cá nhân</a>
                    <a href="#"><i class="fa-solid fa-gear"></i> Chỉnh sửa</a>
                    <hr>
                    <a href="/app/login"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
                </div>

            </div>
        </div>
    </div>
</div>


<div class="layout">

    <div class="sidebar">
        <ul>
            <li>
                <a href="/app/home-admin">
                    <i class="fa-solid fa-house"></i>Trang chủ
                </a>
            </li>

        </ul>
        <hr>
        <h6>QUẢN LÝ</h6>
        <ul>

            <li>
                <details>
                    <summary><i class="fa-solid fa-shield-heart"></i> Thuế - Bảo hiểm</summary>
                    <ul class="submenu">
                        <li><a href="/app/tax-admin"><i class="fa-solid fa-file-invoice-dollar"></i> Quản lý cơ quan thuế</a></li>
                        <li><a href="/app/insuran-admin"><i class="fa-solid fa-hand-holding-medical"></i> Bảo hiểm xã hội</a></li>
                    </ul>
                </details>
            </li>

            <li>
                <details>
                    <summary><i class="fa-solid fa-money-bill-wave"></i> Nhân viên - Lương</summary>
                    <ul class="submenu">
                        <li><a href="/app/tax-information"><i class="fa-solid fa-file-invoice-dollar"></i> Nhân viên</a></li>
                        <li><a href="/app/salary-admin"><i class="fa-solid fa-hand-holding-medical"></i> Lương thưởng</a></li>
                    </ul>
                </details>
            </li>

            <li>
                <a href="/app/insurance-information">
                    <i class="fa-solid fa-book"></i> Thông tin
                </a>
            </li>
            <li>
                <a href="/app/insurance-information">
                    <i class="fa-solid fa-gears"></i> Phân quyền
                </a>
            </li>

        </ul>
        <hr>
        <h6>THỐNG KÊ - BÁO CÁO</h6>
        <ul>
            <li>
                <a href="/app/tax-information">
                    <i class="fa-solid fa-chart-line"></i>Thông kê Lương
                </a>
            </li>

        </ul>
    </div>


    <div class="main-content">
        <h3 class="mb-3">Danh sách nhân viên</h3>
        <div class="card shadow-sm p-3">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h5 class="fw-bold text-primary">Nhân viên</h5>

            </div>

            <!-- Bộ lọc -->
            <div class="d-flex justify-content-between align-items-center mb-2">
                <div>
                    Show
                    <select class="form-select d-inline-block w-auto">
                        <option>10</option>
                        <option>25</option>
                        <option>50</option>
                    </select>
                    entries
                </div>
                <div>
                    <label>Search:
                        <input type="search" class="form-control d-inline-block w-auto" placeholder="Tìm cơ quan...">
                    </label>
                </div>
            </div>

            <!-- Bảng dữ liệu -->
            <table class="table table-striped align-middle table-bordered">
                <thead class="table-light">
                <tr>
                    <th>Ảnh</th>
                    <th>Họ tên</th>
                    <th>Đơn vị</th>
                    <th>Chuyên môn</th>

                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="userlist" items="${userlist}">
                    <tr>
                        <td>Ảnh</td>
                        <td>${userlist.username}</td>
                        <td>${userlist.donvi}</td>
                        <td>${userlist.chuyenMon}</td>
                        <td>${userlist.ngaySinh}</td>
                        <td>${userlist.gioiTinh}</td>
                        <td>
                            <form action="/app/update-role" method="post" class="d-inline">
                                <input type="hidden" name="userId" value="${userlist.id}">

                                <select name="role" class="form-select form-select-sm d-inline w-auto">
                                    <option value="Nhân viên" ${userlist.role == 'Nhân viên' ? 'selected' : ''}>Nhân viên</option>
                                    <option value="Quản lý" ${userlist.role == 'Quản lý' ? 'selected' : ''}>Quản lý</option>
                                </select>
                                <button type="submit" class="btn btn-primary btn-sm ms-1">
                                    Lưu
                                </button>
                            </form>

                            <button class="btn btn-danger btn-sm">Xóa</button>
                        </td>



                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <!-- Phân trang -->
            <div class="d-flex justify-content-between align-items-center">
                <div>Showing ${fn:length(userlist)} entries</div>
                <nav>
                    <ul class="pagination mb-0">
                        <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>


</div>
</body>
</html>

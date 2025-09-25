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
                <span>Hồ Văn Sơn (nhân viên)</span>

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
                <a href="/app/salary-information">
                <i class="fa-solid fa-shield-heart"></i> Thuế - Bảo hiểm
                </a>
            </li>
            <li>
                <a href="/app/insurance-information">
                    <i class="fa-solid fa-money-bill-wave"></i>  Nhân viên - Lương
                </a>
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


<div class="content">
   <h5> Ứng dụng Website</h5>

   <h3> QUẢN LÝ NHÂN SỰ</h3>
   <h7> Mọi thông tin liên hệ <a href="">đội ngũ hỗ trợ</a></h7>

    <div class="dashboard">
        <div class="card">
            <div class="card-header">
                <img src="https://img.icons8.com/fluency/48/000000/combo-chart.png" alt="Thống Kê Lương">
                <div class="card-title">
                    <h3>Thống Kê Lương</h3>
                    <span class="subtitle">Xem danh sách bảng lương</span>
                </div>
            </div>
            <p>Danh sách tổng hợp bảng lương theo tháng của nhân viên công ty.</p>
            <a href="#">Xem ngay ></a>
        </div>

        <div class="card">
            <div class="card-header">
                <img src="https://img.icons8.com/fluency/48/000000/money.png" alt="Bậc Lương">
                <div class="card-title">
                    <h3>Bậc Lương</h3>
                    <span class="subtitle">Xem danh sách bậc lương</span>
                </div>
            </div>
            <p>Danh sách các bậc lương của nhân viên công ty.</p>
            <a href="#">Xem ngay ></a>
        </div>

        <div class="card">
            <div class="card-header">
                <img src="https://img.icons8.com/fluency/48/000000/tax.png" alt="Thuế TNCN">
                <div class="card-title">
                    <h3>Thuế TNCN</h3>
                    <span class="subtitle">Thuế thu nhập cá nhân</span>
                </div>
            </div>
            <p>Danh sách thuế thu nhập cá nhân của nhân viên công ty.</p>
            <a href="#">Xem ngay ></a>
        </div>

        <div class="card">
            <div class="card-header">
                <img src="https://img.icons8.com/fluency/48/000000/user.png" alt="Nhân Sự">
                <div class="card-title">
                    <h3>Nhân Sự</h3>
                    <span class="subtitle">Nhân sự của công ty </span>
                </div>
            </div>
            <p>Danh sách nhân viên của công ty.</p>
            <a href="#">Xem ngay ></a>
        </div>

        <div class="card">
            <div class="card-header">
                <img src="https://img.icons8.com/fluency/48/000000/insurance.png" alt="Bảo Hiểm">
                <div class="card-title">
                    <h3>Bảo Hiểm</h3>
                    <span class="subtitle">Bảo hiểm lao động</span>
                </div>
            </div>
            <p>Danh sách các loại bảo hiểm lao động của công ty.</p>
            <a href="#">Xem ngay ></a>
        </div>

        <div class="card">
            <div class="card-header">
                <img src="https://img.icons8.com/fluency/48/000000/settings.png" alt="Phân Quyền">
                <div class="card-title">
                    <h3>Phân Quyền</h3>
                    <span class="subtitle">Phân quền cho các tài khoảng</span>
                </div>
            </div>
            <p>Phân loại quyền truy cập và chức năng của các tài khoản.</p>
            <a href="#">Xem ngay ></a>
        </div>
    </div>


</div>

</div>
</body>
</html>

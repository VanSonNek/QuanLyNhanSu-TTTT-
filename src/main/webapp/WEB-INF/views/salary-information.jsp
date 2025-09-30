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
  <link rel="stylesheet" href="<c:url value='/resources/css/Client.css'/>">

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
    <h6>THÔNG TIN</h6>
    <ul>
      <li>
        <a href="/app/tax-information">
          <i class="fa-solid fa-file-invoice-dollar"></i> Thông tin thuế
        </a>
      </li>
      <li>
        <a href="/app/salary-information">
          <i class="fa-solid fa-money-bill-wave"></i> Thông tin lương
        </a>
      </li>
      <li>
        <a href="/app/insurance-information">
          <i class="fa-solid fa-shield-heart"></i> Thông tin bảo hiểm
        </a>
      </li>
    </ul>
  </div>



</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: hovan
  Date: 22/09/2025
  Time: 9:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/login.css'/>">

</head>
<body>
<div class="login-box">
    <h2>ĐĂNG NHẬP</h2>
    <form>
        <input type="email" class="form-input" placeholder="Email" required>
        <input type="password" class="form-input" placeholder="Mật khẩu" required>

        <div class="remember">
            <input type="checkbox" id="remember">
            <label for="remember">Nhớ mật khẩu</label>
        </div>

        <button type="submit" class="btn btn-login">Đăng nhập</button>
        <button type="button" class="btn btn-google">Đăng nhập với Google</button>
        <button type="button" class="btn btn-facebook">Đăng nhập với Facebook</button>
    </form>
    <a href="/app/register" class="create-account">Tạo tài khoản mới</a>
</div>
</body>
</html>

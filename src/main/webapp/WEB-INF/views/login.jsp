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
<%--    <form:form method="post" action="login" modelAttribute="loginRequest">--%>
<%--        <h5>Login</h5>--%>
<%--        <div class="mb-3">--%>
<%--            <label class="form-label">Email</label>--%>
<%--            <form:input path="email" cssClass="form-control"/>--%>
<%--            <form:errors path="email" cssClass="text-danger"/>--%>
<%--        </div>--%>

<%--        <div class="mb-3">--%>
<%--            <label class="form-label">MK</label>--%>
<%--            <form:input path="password" cssClass="form-control"/>--%>
<%--            <form:errors path="password" cssClass="text-danger"/>--%>
<%--        </div>--%>


<%--        <div class="text-center">--%>
<%--            <button type="submit" class="btn btn-success">Login</button>--%>
<%--        </div>--%>
<%--    </form:form>--%>

    <form:form action="login" method="post" modelAttribute="loginRequest">
        <form:input path="email" type="email" class="form-input" placeholder="Email" required="true"/>
        <form:password path="password" class="form-input" placeholder="Mật khẩu" required="true"/>

        <div class="remember">
            <input type="checkbox" id="remember"/>
            <label for="remember">Nhớ mật khẩu</label>
        </div>

        <button type="submit" class="btn btn-login">Đăng nhập</button>
        <button type="button" class="btn btn-google">Đăng nhập với Google</button>
        <button type="button" class="btn btn-facebook">Đăng nhập với Facebook</button>
    </form:form>
    <a href="/app/register" class="create-account">Tạo tài khoản mới</a>
</div>
</body>
</html>

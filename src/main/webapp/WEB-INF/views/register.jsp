<%--
  Created by IntelliJ IDEA.
  User: hovan
  Date: 22/09/2025
  Time: 9:34 CH
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
    <link rel="stylesheet" href="<c:url value='/resources/css/register.css'/>">
</head>
<body>


    <!-- Box bao quanh form -->
    <div class="form-box">
        <div class="form-container">
            <h4>Register</h4>
            <div class="form-row">
                <div class="form-group">
                    <label>Họ và tên</label>
                    <input type="text" value="Nguyễn Tiến Dũng" class="name">
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Ngày sinh</label>
                    <input type="text" value="15/06/2023">
                </div>
                <div class="form-group">
                    <label>Giới tính</label>
                    <input type="text">
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>CCCD</label>
                    <input type="text">
                </div>
                <div class="form-group">
                    <label>Điện thoại</label>
                    <input type="text">
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Email</label>
                    <input type="text"  class="email">
                </div>
                <div class="form-group">
                    <label>Dân tộc</label>
                    <input type="text">
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Địa chỉ</label>
                    <input type="text">
                </div>

            </div>




            <div class="form-row">
                <div class="form-group">
                    <label>Mật khẩu</label>
                    <input type="text" class="pass">
                </div>
                <div class="form-group">
                    <label>Nhập lại mật khẩu</label>
                    <input type="text" class="pass-again">
                </div>
            </div>

           <div> <button type="submit" class="btn btn-login">Đăng nhập</button></div>
           <div> <button type="button" class="btn btn-google">Đăng nhập với Google</button></div>
            <div><button type="button" class="btn btn-facebook">Đăng nhập với Facebook</button></div>
            <a href="/app/login" class="create-account">Tạo tài khoản mới</a>
        </div>
    </div>

</body>
</html>

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
    <link rel="stylesheet" href="<c:url value='/resources/css/information.css'/>">
</head>
<body>


<!-- Box bao quanh form -->

<h3>Thông tin cá nhân</h3>
    <div class="container">
        <div class="form-box">
            <div class="form-container">
                <h4>Xem thông tin</h4>
                <div class="form-row">
                    <div class="form-group">
                        <label>Ảnh đại diện</label>
                        <input type="text" value="Nguyễn Tiến Dũng" class="name">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Họ và tên</label>
                        <input type="text" value="15/06/2023">
                    </div>
                    <div class="form-group">
                        <label>Ngày sinh</label>
                        <input type="text">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Chuyên mon</label>
                        <input type="text">
                    </div>
                    <div class="form-group">
                        <label>Trình độ</label>
                        <input type="text">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text"  class="email">
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại</label>
                        <input type="text">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Địa chỉ</label>
                        <input type="text">
                    </div>

                </div>

                <div class="btn-row">
                    <button type="submit" class="btn btn-login"> Sửa lại thông tin </button>
                    <button type="button" class="btn btn-google">Đôi mật khẩu</button>
                    <button type="button" class="btn btn-facebook">Quay lai</button>
                </div>

            </div>
        </div>

    </div>


</body>
</html>

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
        <h4>Thêm nhân viên</h4>
        <form:form action="/app/addstaff" method="post" modelAttribute="userRequest">
        <div class="form-row">
                <div class="form-group">
                    <label>Họ và tên</label>
                    <form:input path="username" cssClass="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Ngày sinh</label>
                    <form:input path="ngaySinh" type="date" cssClass="form-control"/>
                </div>
                <div class="form-group">
                    <label>Giới tính</label>
                    <form:input path="gioiTinh" cssClass="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>CCCD</label>
                    <form:input path="cccd" cssClass="form-control"/>
                </div>
                <div class="form-group">
                    <label>Điện thoại</label>
                    <form:input path="dienThoai" cssClass="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Email</label>
                    <form:input path="email" cssClass="form-control"/>
                </div>
                <div class="form-group">
                    <label>Dân tộc</label>
                    <form:input path="danToc" cssClass="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Địa chỉ</label>
                    <form:input path="diaChi" cssClass="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label>Mật khẩu</label>
                    <form:password path="password" cssClass="form-control"/>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Thêm nhân viên</button>
        </form:form>

    </div>
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp"%>
<c:url var="loginURL" value="/dang-nhap"/>
<c:url var="registerAPI" value="/api/register"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
<c:if test="${not empty message}">
    <div class="alert alert-${alert}">
            ${message}
    </div>
</c:if>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form>
            <h1>Create Account</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your email for registration</span>
            <div class="form-group">
                <input  cssClass="col-xs-10 col-sm-5" placeholder="UserName"/>
            </div>
            <div class="form-group">
                <input cssClass="col-xs-10 col-sm-5" placeholder="FullName"/>
            </div>
            <div class="form-group">
                    <input cssClass="col-xs-10 col-sm-5" placeholder="PassWord"/>
            </div>
            <button class="btn btn-info" type="button" id="btnAddRegister">
                <i class="ace-icon fa fa-check bigger-110"></i>
                Đăng kí
            </button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="j_spring_security_check" id="formLogin" method="post">
            <h1>Sign in</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your account</span>
            <div class="form-group">
                <input type="text" class="form-control" id="username" name="j_username" placeholder="Email">
            </div>

            <div class="form-group">
                <input type="password" class="form-control" id="password" name="j_password" placeholder="Password">
            </div>
            <a href="#">Forgot your password?</a>
            <button type="submit" class="btn btn-primary" >Đăng nhập</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="ghost" id="signIn">Đăng nhập</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
                <button class="ghost" id="signUp">Đăng kí</button>
            </div>
        </div>
    </div>
</div>

<script>
 /*   $('#btnAddRegister').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        addRegister(data);
    });

    function addRegister(data) {
        $.ajax({
            url: '${registerAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${loginURL}?&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${loginURL}?message=error_system";
            }
        });
    }
*/
</script>

</body>
</html>

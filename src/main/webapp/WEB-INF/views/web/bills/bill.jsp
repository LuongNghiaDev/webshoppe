<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<c:url var="checkoutURL" value="/checkout"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thanh toán</title>
</head>
<body>

<div id="sidebar" class="span3">
    <div class="well well-small">
        <ul class="nav nav-list">

            <nav class="category">
                <h3 class="category__heading">
                    <i class="category__heading-icon fas fa-list-ul"></i>
                    Danh mục
                </h3>

                <ul class="category-list">
                    <li class="category-item category-item--active">
                        <a href="#" class="category-item__link">Đánh giá</a>
                    </li>

                    <li class="category-item category-item--active">
                        <a href="#" class="category-item__link">Liên hệ</a>
                    </li>

                    <li class="category-item category-item--active">
                        <a href="#" class="category-item__link">Trợ giúp</a>
                    </li>

                    <li class="category-item">
                        <a href="#" class="category-item__link">Tổng tiền
                            <span class="badge badge-warning pull-right" tyle="line-height: 18px;">
                                <fmt:formatNumber type="number" groupingUsed="true" value="${TotalPriceCart }" />₫</span></a>
                    </li>
                </ul>
            </nav>
        </ul>
    </div>

    <div class="well well-small alert alert-warning cntr">
        <h2>50% Discount</h2>
        <p>
            only valid for online order. <br> <br> <a
                class="defaultBtn" href="#">Click here </a>
        </p>
    </div>
    <div class="well well-small">
        <a href="#"><img src="<c:url value="/assets/user/img/paypal.jpg" />"
                         alt="payment method paypal"></a>
    </div>

    <a class="shopBtn btn-block" href="#">Upcoming products <br>
        <small>Click to view</small></a> <br> <br>

</div>

    <div class="span9">
        <c:if test="${not empty message}">
            <div class="alert alert-${alert}">
                    ${message}
            </div>
        </c:if>
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a> <span class="divider">/</span></li>
            <li class="active">Thanh toán</li>
        </ul>

        <div class="well">
        <security:authorize access = "isAuthenticated()">
            <form:form action="checkout" method="POST" modelAttribute="bill"  class="form-horizontal">
                <h3>Thanh toán đơn hàng</h3>
                <div class="control-group">
                    <label class="control-label">Fullname <sup>*</sup></label>
                    <div class="controls">
                        <form:input type="text" class="span3" placeholder=" FullName" path="fullName"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Email <sup>*</sup></label>
                    <div class="controls">
                        <form:input type="text" class="span3" placeholder=" Email" path="userName"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">PhoneNumber <sup>*</sup></label>
                    <div class="controls">
                        <form:input type="text" class="span3" placeholder=" PhoneNumber" path="phone"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Address <sup>*</sup></label>
                    <div class="controls">
                        <form:textarea path="address" rows="5" cols="30" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Note <sup>*</sup></label>
                    <div class="controls">
                        <form:textarea path="note" rows="5" cols="30" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <input type="submit" name="submitAccount" value="Thanh Toán"
                               class="shopBtn exclusive">
                    </div>
                </div>
            </form:form>
        </security:authorize>
        <security:authorize access = "isAnonymous()">
            <p>
                Đăng nhập trước khi thanh toán <br> <br> <a
                    class="defaultBtn" href="<c:url value="/dang-nhap" /> ">Đăng nhập </a>
            </p>
        </security:authorize>
        </div>



    </div>
<script>

  /*  $('#btnBill').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        addBill(data);
        addBillDetail(data);
    });

    function addBill(data) {
        $.ajax({
            url: '${billAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${checkoutURL}?&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${checkoutURL}?message=error_system";
            }
        });
    }

    function addBillDetail(data) {
        $.ajax({
            url: '${billDetailAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${checkoutURL}?&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${checkoutURL}?message=error_system";
            }
        });
    }*/
</script>



</body>
</html>

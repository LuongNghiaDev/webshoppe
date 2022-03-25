<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp" %>
<head>
    <title>Giỏ hàng</title>
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
<div class="row">
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
            <li class="active">Giỏ hàng</li>
        </ul>
        <div class="well well-small">
            <h1>Giỏ hàng <small class="pull-right"> Sản phẩm trong giỏ hàng </small></h1>
            <hr class="soften"/>

            <table class="table table-bordered table-condensed">
                <thead>
                <tr>
                    <th>Hình ảnh</th>
                    <th>Mô tả</th>
                    <th>Màu sắc</th>
                    <th>Giá bán</th>
                    <th>Số lượng </th>
                    <th>Chỉnh sửa </th>
                    <th>Xóa </th>
                    <th>Tổng tiền</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="item" items="${Cart}">
                    <tr>
                        <td><img width="100" src="<c:url value="/assets/user/img/${ item.value.productDTO.colorsImg }"/>" alt=""></td>
                        <td>${ item.value.productDTO.title }</td>
                        <td><span class="shopBtn" style="background-color: yellow;"><span class="icon-ok"></span></span> </td>
                        <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.productDTO.price }"/> ₫</td>
                        <td>
                            <input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${item.key }" size="16" type="text" value="${ item.value.quanty }">
                        </td>
                        <td>
                            <button  data-id="${item.key }" class="btn btn-mini btn-danger edit-cart" type="button">
                                <span class="icon-edit"></span>
                            </button>
                        </td>
                        <td>
                            <a href="<c:url value="/DeleteCart/${item.key }"/>" class="btn btn-mini btn-danger" type="button">
                                <span class="icon-remove"></span>
                            </a>
                        </td>
                        <td><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/> ₫</td>
                    </tr>
                </c:forEach>

                </tbody>
            </table><br/>

            <a href="<c:url value="/trang-chu" /> " class="shopBtn btn-large"><span class="icon-arrow-left"></span> Tiếp tục mua sắm </a>
            <a href="<c:url value="#" /> " class="shopBtn btn-large pull-right">Thanh toán <span class="icon-arrow-right"></span></a>

        </div>
    </div>
</div>

<content tag="script">
    <script>
        $(".edit-cart").on("click", function () {
            var id =  $(this).data("id");
            var quanty = $("#quanty-cart-" + id).val();
            window.location += "/EditCart/"+id+"/"+quanty;
        });


    </script>
</content>
</body>

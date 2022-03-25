<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>San-pham</title>
    <style>
        .pagination {
            display: flex;
            justify-content: center;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
            border: 1px solid #ddd;
        }

        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
        }

        .pagination a:hover:not(.active) {
            background-color: #ddd;
        }
    </style>
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
                    <c:forEach var="item" items="${categoryOftheloai}">
                        <li class="category-item category-item--active">
                            <a href="<c:url value="/sanpham?page=1&limit=9" /> " class="category-item__link">${item.name}</a>
                        </li>
                    </c:forEach>
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
    <ul class="nav nav-list promowrapper">
        <li>
            <div class="thumbnail">
                <a class="zoomTool" href="product_details.html"
                   title="add to cart"><span class="icon-search"></span> QUICK
                    VIEW</a> <img src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.PNG" />"
                                  alt="bootstrap ecommerce templates">
                <div class="caption">
                    <h4>
                        <a class="defaultBtn" href="product_details.html">VIEW</a> <span
                            class="pull-right">$22.00</span>
                    </h4>
                </div>
            </div>
        </li>
        <li style="border: 0">&nbsp;</li>
        <li>
            <div class="thumbnail">
                <a class="zoomTool" href="product_details.html"
                   title="add to cart"><span class="icon-search"></span> QUICK
                    VIEW</a> <img src="<c:url value="/assets/user/img/shopping-cart-template.PNG" />"
                                  alt="shopping cart template">
                <div class="caption">
                    <h4>
                        <a class="defaultBtn" href="product_details.html">VIEW</a> <span
                            class="pull-right">$22.00</span>
                    </h4>
                </div>
            </div>
        </li>
        <li style="border: 0">&nbsp;</li>
        <li>
            <div class="thumbnail">
                <a class="zoomTool" href="product_details.html"
                   title="add to cart"><span class="icon-search"></span> QUICK
                    VIEW</a> <img src="<c:url value="/assets/user/img/bootstrap-template.png" />"
                                  alt="bootstrap template">
                <div class="caption">
                    <h4>
                        <a class="defaultBtn" href="product_details.html">VIEW</a> <span
                            class="pull-right">$22.00</span>
                    </h4>
                </div>
            </div>
        </li>
    </ul>

</div>
<div class="well well-small">
    <div class="row">
        <span style="margin-left: 25px;">List Product</span> <select
            class="pull-right">
        <option>A - Z</option>
        <option>Cao - Thấp</option>
    </select>
    </div>


    <c:if test="${ model.listResult.size() > 0 }">
    <div class="row-fluid">
        <ul class="thumbnails">

            <c:forEach var="item" items="${ model.listResult }" varStatus="loop">
            <li class="span4">
                <div class="thumbnail">
                    <a href="product_details.html" class="overlay"></a> <a
                        class="zoomTool" href="product_details.html"
                        title="add to cart"><span class="icon-search"></span> QUICK
                    VIEW</a> <a href="<c:url value="/chitiet-sanpham/${ item.id }"/>"><img
                        src="<c:url value="/assets/user/img/${ item.colorsImg }"/>" alt=""></a>
                    <div class="caption cntr">
                        <p>${item.name }</p>
                        <p>
                            <strong> <fmt:formatNumber
                                    type="number" groupingUsed="true" value="${ item.price }" />
                                ₫</strong>
                        </p>
                        <h4>
                            <a class="shopBtn" href="<c:url value="/AddCart/${ item.id}"/>" title="add to cart"> Add to
                                cart </a>
                        </h4>
                        <div class="actionList">
                            <a class="pull-left" href="#">Add to Wish List </a> <a
                                class="pull-left" href="#"> Add to Compare </a>
                        </div>
                        <br class="clr">
                    </div>
                </div>
            </li>
            <c:if test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == model.listResult.size() }">
        </ul>
    </div>
    <c:if test="${ (loop.index + 1) < model.listResult.size() }">
    <div class="row-fluid">
        <ul class="thumbnails">
            </c:if>
            </c:if>
            </c:forEach>
            </c:if>

    </div>
    <ul class="pagination" id="pagination"></ul>
    <input type="hidden" value="" id="page" name="page"/>
    <input type="hidden" value="" id="limit" name="limit"/>
</div>
    <!-- phan trang -->
    <div class="pagination">
    <script>
        var totalPages = ${model.totalPage};
        var currentPage = ${model.page};
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 10,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    if (currentPage != page) {
                        $('#limit').val(6);
                        $('#page').val(page);
                        $('#formSubmit').submit();
                    }
                }
            });
        });
    </script>
    </div>
</body>
</html>

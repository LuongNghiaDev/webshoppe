<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
    <style type="text/css">
        .product-content {
            overflow-x: hidden;
        }
    </style>
</head>
<body>

<!--
Body Section
-->
<div class="row product-content">
    <div id="sidebar" class="span3">
        <div class="well well-small">
            <ul class="nav nav-list">

                <nav class="category">
                    <h3 class="category__heading">
                        <i class="category__heading-icon fas fa-list-ul"></i>
                        Danh mục
                    </h3>

                    <ul class="category-list">
                        <c:forEach var="item" items="${categoryOfProduct}">
                            <li class="category-item category-item--active">
                                <a href="#" class="category-item__link">${item.name}</a>
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
    <div class="span9">
        <ul class="breadcrumb">
            <li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
            <li><a href="products.html">Sản phẩm</a> <span class="divider">/</span></li>
            <li class="active">Chi tiết sản phẩm</li>
        </ul>
        <div class="well well-small">
            <div class="row-fluid">
                <div class="span5">
                    <div id="myCarousel" class="carousel slide cntr">
                        <div class="carousel-inner">
                            <div class="item active">
                                <a href="#"> <img
                                        src="<c:url value="/assets/user/img/${ products.colorsImg }"/>"
                                        alt="" style="width: 100%"></a>
                            </div>

                        </div>
                        <a class="left carousel-control" href="#myCarousel"
                           data-slide="prev">‹</a> <a class="right carousel-control"
                                                      href="#myCarousel" data-slide="next">›</a>
                    </div>
                </div>
                <div class="span7">
                    <h3>${products.name }</h3>
                    <hr class="soft" />

                    <form class="form-horizontal qtyFrm" method="get" action="#"/>
                        <div class="control-group">
                            <label class="control-label"><span><fmt:formatNumber
                                    type="number" groupingUsed="true" value="${ products.price }" />
										₫</span></label>
                            <div class="controls">
                                <input type="number" min="0" value="0" class="span6">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label"><span>Color</span></label>
                            <div class="controls">
                                <select class="span11">
                                    <option>Red</option>
                                    <option>Purple</option>
                                    <option>Pink</option>
                                    <option>Red</option>
                                </select>
                            </div>
                        </div>

                        <h4></h4>
                        <p>${products.title }
                        <p>
                            <button type="submit" class="shopBtn">
                                <span class=" icon-shopping-cart"></span> Add to cart
                            </button>
                    </form>
                </div>
            </div>
            <hr class="softn clr" />


            <ul id="productDetail" class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">Chi
                    tiết sản phẩm</a></li>
                <li class=""><a href="#profile" data-toggle="tab">Sản phẩm
                    liên quan </a></li>

            </ul>
            <div id="myTabContent" class="tab-content tabWrapper">
                <div class="tab-pane fade active in" id="home">
                    ${products.detail }</div>
                <div class="tab-pane fade" id="profile">



                </div>
            </div>

        </div>
    </div>
</div>
<!-- Body wrapper -->

</body>
</html>

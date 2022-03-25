<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
           prefix="decorator"%>
<%@include file="/layouts/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><decorator:title default="Master-layout"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="<c:url value="/assets/user/css/bootstrap.css" />" rel="stylesheet" />
    <!-- Customize styles -->
    <link href="<c:url value="/assets/user/style.css" />" rel="stylesheet" />
    <!-- font awesome styles -->
    <link href="<c:url value="/assets/user/font-awesome/css/font-awesome.css" />" rel="stylesheet">

    <!-- Favicons -->
    <link rel="shortcut icon" href="<c:url value="/assets/user/ico/favicon.ico" />">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="<c:url value="/assets/user/assets/css/base.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/user/assets/css/main.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/user/assets/css/gird.css" /> ">
    <link rel="stylesheet" href="<c:url value="/assets/user/assets/css/responsive.css"/>" >
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/assets/user/assets/font/fontawesome-free-5.15.4-web/css/all.min.css"/>" >

</head>
<body>


<!--
Lower Header Section
-->
    <div class="app">

    <%@include file="/layouts/web/header.jsp" %>
        <div class="grid__row app__content">

                <decorator:body/>
        </div>

    <%@include file="/layouts/web/footer.jsp" %>

    </div>
<!-- /container -->


<!-- Placed at the end of the document so the pages load faster -->
<script src=" <c:url value="/assets/user/js/jquery.js" />"></script>
<script src="<c:url value="/assets/user/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js" />"></script>
<script src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js" />"></script>
<script src="<c:url value="/assets/user/js/shop.js" /> "></script>

<decorator:getProperty property="page.script"></decorator:getProperty>

</body>
</html>
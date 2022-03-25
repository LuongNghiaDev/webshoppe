<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><decorator:title default="Master-layout" /></title>
    <meta charset="UTF-8">
    <link rel='stylesheet'
          href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
    <link rel="stylesheet" href="<c:url value="/assets/login/style.css" />">

    <!-- sweetalert -->
    <script src="<c:url value='/assets/admin/sweetalert/sweetalert2.min.js' />"></script>
    <link rel="stylesheet" href="<c:url value='/assets/admin/sweetalert/sweetalert2.min.css' />" />

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type='text/javascript' src='<c:url value="/assets/admin/js/jquery-2.2.3.min.js" />'></script>
    <script src="<c:url value='/assets/admin/assets/js/jquery.2.1.1.min.js' />"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

<decorator:body />


<!-- partial -->
<script src="<c:url value="/assets/login/script.js" />" ></script>

<script src="<c:url value='/assets/admin/assets/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery-ui.custom.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery.easypiechart.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery.sparkline.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery.flot.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery.flot.pie.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/jquery.flot.resize.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/ace-elements.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/ace.min.js' />"></script>
<script src="<c:url value='/assets/admin/assets/js/bootstrap.min.js'/>"></script>

<!-- page specific plugin scripts -->
<script src="<c:url value='/assets/admin/assets/js/jquery-ui.min.js'/>"></script>


</body>
</html>


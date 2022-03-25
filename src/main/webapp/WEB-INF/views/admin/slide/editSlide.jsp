<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/layouts/taglib.jsp"%>
<c:url var="slideURL" value="/quan-tri/slide/danh-sach"/>
<c:url var="editSlideURL" value="/quan-tri/slide/chinh-sua"/>
<c:url var="slideAPI" value="/api/slide"/>
<html>
<head>
    <title>Chỉnh sửa slide</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
                </li>

                <li><a href="#">Forms</a></li>
                <li class="active">Form Elements</li>
            </ul>
            <!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">
                                ${message}
                        </div>
                    </c:if>
                    <form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model"> <!-- khai bao 1 form cos id tong the de goi o ajax-->
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" >Name</label>
                            <div class="col-sm-9">
                                <form:input path="caption" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-3 control-label no-padding-right">Content</label>
                            <div class="col-sm-9">
                                <form:textarea path="content" rows="5" cols="10" cssClass="form-control" id="content"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Img</label>
                            <div class="col-sm-9">
                                <input type="file" class="col-xs-10 col-sm-5" id="img" name="img"/>
                            </div>
                        </div>
                        <form:hidden path="id" id="newId"/> <!-- hien thị ngầm id để xử lí -->
                        <div class="clearfix form-actions">
                            <div class="col-md-offset-3 col-md-9">
                                <c:if test="${not empty model.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateSlide">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Cập nhật Slide
                                    </button>
                                </c:if>
                                <c:if test="${empty model.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateSlide">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Thêm Slide
                                    </button>
                                </c:if>

                                &nbsp; &nbsp; &nbsp;
                                <button class="btn" type="reset">
                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                    Hủy
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $('#btnAddOrUpdateSlide').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        var id = $('#newId').val();
        if(id == ""){
            addSlide(data);
        }else{
            updateSlide(data);
        }
    });

    function addSlide(data){
        $.ajax({
            url: '${slideAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${editSlideURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${slideURL}?page=1&limit=2&message=error_system";
            }
        });
    }

    function updateSlide(data){
        $.ajax({
            url: '${slideAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${editSlideURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
                window.location.href = "${editSlideURL}?id="+result.id+"&message=error_system";
            }
        });
    }

</script>
</body>
</html>



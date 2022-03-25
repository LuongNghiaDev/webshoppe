<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/layouts/taglib.jsp"%>
<c:url var="productURL" value="/quan-tri/san-pham/danh-sach"/>
<c:url var="editProductURL" value="/quan-tri/san-pham/chinh-sua"/>
<c:url var="productAPI" value="/api/product"/>
<html>
<head>
    <title>Chỉnh sửa sản phẩm</title>
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
                        <!-- modelAttribute="model" trung vs model o NewCOntroller de map cac path o day vs model dto-->
                        <!-- path thay cho name(value + name)-->
                        <div class="form-group">
                            <label for="categoryCode" class="col-sm-3 control-label no-padding-right">Thể loại:</label>
                            <div class="col-sm-9">
                                <form:select path="categoryCode" id="categoryCode">
                                    <form:option value="" label="-- Chọn thể loại --"/>
                                    <form:options items="${categories}"/>
                                </form:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="colorsCode" class="col-sm-3 control-label no-padding-right">Màu:</label>
                            <div class="col-sm-9">
                                <form:select path="colorsCode" id="colorsCode">
                                    <form:option value="" label="-- Chọn màu --"/>
                                    <form:options items="${colors}"/>
                                </form:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Name</label>
                            <div class="col-sm-9">
                                <form:input path="name" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Size</label>
                            <div class="col-sm-9">
                                <form:input path="size" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Price</label>
                            <div class="col-sm-9">
                                <form:input path="price" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Sale</label>
                            <div class="col-sm-9">
                                <form:input path="sale" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Hightlight</label>
                            <div class="col-sm-9">
                                <form:input path="highlight" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">NewProduct</label>
                            <div class="col-sm-9">
                                <form:input path="newproduct" cssClass="col-xs-10 col-sm-5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="title" class="col-sm-3 control-label no-padding-right">Title</label>
                            <div class="col-sm-9">
                                <form:textarea path="title" rows="5" cols="10" cssClass="form-control" id="title"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="detail" class="col-sm-3 control-label no-padding-right">Detail</label>
                            <div class="col-sm-9">
                                <form:textarea path="detail" rows="5" cols="10" cssClass="form-control" id="detail"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Img</label>
                            <div class="col-sm-9">
                                <input type="file" class="col-xs-10 col-sm-5" id="colorsImg" name="colorsImg"/>
                            </div>
                        </div>
                        <form:hidden path="id" id="productId"/> <!-- hien thị ngầm id để xử lí -->
                        <div class="clearfix form-actions">
                            <div class="col-md-offset-3 col-md-9">
                                <c:if test="${not empty model.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateProduct">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Cập nhật sản phẩm
                                    </button>
                                </c:if>
                                <c:if test="${empty model.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateProduct">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Thêm sản phẩm
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
    $('#btnAddOrUpdateProduct').click(function (e) { //khi  click button truyen vao ajax,tu ajax day vao API
        e.preventDefault();  //submit vao url api/new ... chu ko submit vao url dang dung cua trang do
        var data = {};
        var formData = $('#formSubmit').serializeArray(); //get thong tin tu formSubmit
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value; //chuyen het gia tri formData vao trong mang data
        });
        var id = $('#productId').val();
        if(id == ""){
            addProduct(data);
        }else{
            updateProduct(data);
        }
    });

    function addProduct(data){
        $.ajax({
            url: '${productAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${editProductURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${productURL}?page=1&limit=2&message=error_system";
            }
        });
    }

    function updateProduct(data){
        $.ajax({
            url: '${productAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${editProductURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
                window.location.href = "${editProductURL}?id="+result.id+"&message=error_system";
            }
        });
    }

</script>
</body>
</html>



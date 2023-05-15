<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div id="loading">
    <div id="loading-center">
    </div>
</div>
<!-- loader END -->
<!-- Wrapper Start -->
<div class="wrapper">
    <div id="content-page" class="content-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-center">
                            <div class="iq-header-title">
                                <h4 class="card-title">CHỈNH SỬA THỂ LOẠI</h4>
                            </div>
                        </div>
                        <div class="iq-card-body">
                            <form method="post" action="edit">
                                <input type="hidden" class="form-control" name="id" value="${category.id}" >
                                <div class="form-group">
                                    <label>Tên thể loại:</label>
                                    <input type="text" class="form-control" id="name" required name="name" value="${category.name}">
                                </div>
                                <button type="submit" class="btn btn-primary">Xác nhận</button>
                                <button type="button" id="reset" class="btn btn-danger">Dọn dẹp</button>
                                <button type="button" id="back" class="btn btn-secondary">Huỷ</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.getElementById('reset').addEventListener('click', function () {
        document.getElementById('name').value = "";
    })
    document.getElementById('back').addEventListener('click', function () {
        history.back()
    })
</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑数据字典</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body>

 <form id="dictadd"
		action="${pageContext.request.contextPath }/dict/edit" method="post"
		class="form-horizontal" style="margin: 20px">
		<fieldset>
			<div id="legend" class="">
				<legend class="">编辑字典表</legend>
			</div>
			
			<!-- 隐藏域 -->
			<input type="hidden" name="id" value="${dict.id }" />
			
			<!--内容-->
			<div class="control-group">
				<label for="dictText" class="col-sm-2 control-label">显示内容：</label>
				<div class="col-sm-10">
					<input id="dictText" required name="dictText" type="text" placeholder="请输入显示内容"
						value="${dict.dictText}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p>
				</div>
			</div>
			<!--值 -->
			<div class="control-group">
				<label for="dictOption" class="col-sm-2 control-label">值：</label>
				<div class="col-sm-10">
					<input id="dictOption" required name="dictOption" type="text" placeholder="请输入值"
						value="${dict.dictOption}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			<!-- 顺序-->
			<div class="control-group">
				<label for="dictSort" class="col-sm-2 control-label">顺序：</label>
				<div class="col-sm-10">
					<input id="dictSort" required name="dictSort" type="number" min="0" step="1" placeholder="请输入顺序"
						value="${dict.dictSort}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			<!--表位置 -->
			<div class="control-group">
				<label for="dictTabname" class="col-sm-2 control-label">表位置：</label>
				<div class="col-sm-10">
					<input id="dictTabname" required name="dictTabname" type="text" placeholder="请输入表位置名称"
						value="${dict.dictTabname}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			<!--属性位置 -->
			<div class="control-group">
				<label for="dictColname" class="col-sm-2 control-label">属性位置：</label>
				<div class="col-sm-10">
					<input id="dictColname" required name="dictColname" type="text" placeholder="请输入属性位置名称"
						value="${dict.dictColname}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			<!--描述 -->
			<div class="control-group">
				<label for="dictName" class="col-sm-2 control-label">描述 ：</label>
				<div class="col-sm-10">
					<input id="dictName"  name="dictName" type="text" placeholder="请输入描述 "
						value="${dict.dictName}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span>
  				<p></p></div>
			</div>
        <!-- 按钮 -->
        <div class="control-group">
            <label class="col-sm-2 control-label"></label>
            <!-- Button -->
            <div class="col-sm-10" style="margin-top:7px; " >
                <button class="btn btn-success">修改</button>
            </div>
        </div> 
		</fieldset>
</form>
</body>

</html>
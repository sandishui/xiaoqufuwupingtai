<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>增加小区</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrapvalidator-0.4.5/dist/css/bootstrapValidator.min.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrapvalidator-0.4.5/dist/js/bootstrapValidator.min.js"></script>
 <script>
 //cityCodeprovinceCode
 ;$(function (){
	$.ajax({
		url:"${pageContext.request.contextPath}/area/query",
		type:"post", 
		dataType:"json",
		success:function (data){  
			var obj=$("#provinceCode");
			obj.append($("<option value='-1'>请选择</option>"))
			 for(var i=0;i<data.length;i++){
				var val=data[i];
				 
				obj.append($("<option value='"+val.areaCode+"'>"+val.areaName+"</option>"));
			} 
			var obj=$("#cityCode");
			obj.empty();
			obj.append($("<option value='-1'>请选择</option>"));
			/*  $.ajax({
					url:"${pageContext.request.contextPath}/area/query",
					type:"post", 
					data:{"prentId":data[0].areaCode},
					dataType:"json",
					success:function (d){
						for(var i=0;i<d.length;i++){
							var val=d[i];
							var obj=$("#cityCode");
							obj.append($("<option value='"+val.areaCode+"'>"+val.areaName+"</option>"));
						} 
					}
			 }); */
		}
	}); 
	$("#provinceCode").change(function(){
		var pv=$(this).val();
		 $.ajax({
				url:"${pageContext.request.contextPath}/area/query",
				type:"post", 
				data:{"prentId":pv},
				dataType:"json",
				success:function (d){
					var obj=$("#cityCode");
					obj.empty();
					obj.append($("<option value='-1'>请选择</option>"));
					for(var i=0;i<d.length;i++){
						var val=d[i];
						
						obj.append($("<option value='"+val.areaCode+"'>"+val.areaName+"</option>"));
					} 
				}
		 });
	});
 });
 </script>
</head>

<body>
	
<form action="${pageContext.request.contextPath }/housingEstate/add" class="form-horizontal" style="margin: 20px"  method="post">
    <fieldset>
        <div id="legend" class="">
            <legend class="">增加小区</legend>
        </div>
   			<!--编号-->
			<div class="control-group">
				<label for="code" class="col-sm-2 control-label">编号：</label>
				<div class="col-sm-10">
					<input id="code"  name="code" type="text" required placeholder="请输入小区编号"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
   			<!--小区名称-->
			<div class="control-group">
				<label for="name" class="col-sm-2 control-label">名称：</label>
				<div class="col-sm-10">
					<input id="name"  name="name" type="text" required placeholder="请输入小区名称"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
		 	<!--住户数量-->
			<div class="control-group">
				<label for="quantity" class="col-sm-2 control-label">住户数量：</label>
				<div class="col-sm-10">
					<input id="quantity"  name="quantity" type="number" required placeholder="请输入住户数量"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			<!--省市-->
			<div class="control-group">
				<label class="col-sm-2 control-label">省市：</label>
				<div class="col-sm-10">
					 <select id="provinceCode" name="provinceCode">
						
					 </select>
					 <label for="provinceCode">省</label>
					 <select id="cityCode" name="cityCode">
					 </select>
					 <label for="cityCode">市</label>
					 <p></p> 
				</div>
				
				   
				
			</div>
   			<!--详细地址-->
			<div class="control-group">
				<label for="address" class="col-sm-2 control-label">详细地址：</label>
				<div class="col-sm-10">
					<input id="address"  name="address" type="text" required placeholder="请输入详细地址"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			
        <!-- 按钮 -->
        <div class="control-group">
            <label class="col-sm-2 control-label"></label>
            <!-- Button -->
            <div class="col-sm-10" style="margin-top:7px; " >
                <button class="btn btn-success">增加</button>
            </div>
        </div>
    </fieldset>
</form>
 
</body>
 
</html>
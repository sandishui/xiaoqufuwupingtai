<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑小区</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script>
 //cityCodeprovinceCode
 ;$(function (){
	 var oldP=${housingEstate.provinceCode};
	 var oldC=${housingEstate.cityCode};
	$.ajax({
		url:"${pageContext.request.contextPath}/area/query",
		type:"post", 
		dataType:"json",
		success:function (data){  
			var obj=$("#provinceCode");
			obj.append($("<option value='-1'>请选择</option>"))
			var order=data[0].areaCode;
			 for(var i=0;i<data.length;i++){
				var val=data[i];
				var selected="";
				if(val.areaCode==oldP){
					selected=" selected ";
					order=oldP;
				}
				obj.append($("<option "+selected+" value='"+val.areaCode+"'>"+val.areaName+"</option>"));
			} 
			var obj=$("#cityCode");
			obj.empty();
			obj.append($("<option value='-1'>请选择</option>"));
			 $.ajax({
					url:"${pageContext.request.contextPath}/area/query",
					type:"post", 
					data:{"prentId":order},
					dataType:"json",
					success:function (d){
						for(var i=0;i<d.length;i++){
							var val=d[i];
							var selected="";
							if(val.areaCode==oldC)
								selected=" selected "
							obj.append($("<option "+selected+" value='"+val.areaCode+"'>"+val.areaName+"</option>"));
						} 
					}
			 }); 
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

 <form id="housingEstateEdit"
		action="${pageContext.request.contextPath }/housingEstate/edit" method="post"
		class="form-horizontal" style="margin: 20px">
		<fieldset>
			<div id="legend" class="">
				<legend class="">编辑小区</legend>
			</div>
			
			<!-- 隐藏域 -->
			<input type="hidden" name="id" value="${housingEstate.id}" />
			
				<!--编号-->
			<div class="control-group">
				<label for="code" class="col-sm-2 control-label">编号：</label>
				<div class="col-sm-10">
					<input id="code"  name="code" type="text" placeholder="请输入小区编号"
					value="${housingEstate.code}"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
   			<!--小区名称-->
			<div class="control-group">
				<label for="name" class="col-sm-2 control-label">名称：</label>
				<div class="col-sm-10">
					<input id="name"  name="name" type="text" placeholder="请输入小区名称"
					value="${housingEstate.name}"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
		 	<!--住户数量-->
			<div class="control-group">
				<label for="quantity" class="col-sm-2 control-label">住户数量：</label>
				<div class="col-sm-10">
					<input id="quantity"  name="quantity" type="number" placeholder="请输入住户数量"
					 value="${housingEstate.quantity}"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
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
					<input id="address"  name="address" type="text" placeholder="请输入详细地址"
					value="${housingEstate.address}" class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
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
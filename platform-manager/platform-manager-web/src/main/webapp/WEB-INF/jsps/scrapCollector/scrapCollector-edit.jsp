<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑废品回收员</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
;$(function (){
	$.ajax({
		url:"${pageContext.request.contextPath}/dict/query",
		data:{"dictTabName":"owner","dictColName":"sex"},
		dataType:"json",
		type:"post",
		success:function(data){
			var obj=$("#sex"); 
			for(var i=0;i<data.length;i++){
				var val=data[i];
				obj.append('<input type="radio" checked name="sex" value="'+val.dictOption+'"/>'+val.dictText+'');
			}
		}
	});	
	var code="${scrapCollector.housingEstateCode}";
	 var oldP=code.split("-")[0];
	 var oldC=code.split("-")[1];
	 var oldA=code.split("-")[2];
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
								selected=" selected ";
							obj.append($("<option "+selected+" value='"+val.areaCode+"'>"+val.areaName+"</option>"));
						}
						$.ajax({
							url:"${pageContext.request.contextPath}/housing/query",
							type:"post", 
							data:{"pCode":oldP,"cCode":oldC},
							dataType:"json",
							success:function (d){
								var obj=$("#housingEstate");
								obj.empty();
								obj.append($("<option value='-1'>请选择</option>"));
								for(var i=0;i<d.length;i++){
									var val=d[i]; 
									if(val.code==oldA)
										selected=" selected ";
									obj.append($("<option "+selected+" value='"+val.code+"'>"+val.name+"</option>"));
								} 
							}
					 });
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
	$("#cityCode").change(function(){
		var pv=$("#provinceCode").val();
		var cv=$(this).val();
		 $.ajax({
				url:"${pageContext.request.contextPath}/housing/query",
				type:"post", 
				data:{"pCode":pv,"cCode":cv},
				dataType:"json",
				success:function (d){
					var obj=$("#housingEstate");
					obj.empty();
					obj.append($("<option value='-1'>请选择</option>"));
					for(var i=0;i<d.length;i++){
						var val=d[i]; 
						obj.append($("<option value='"+val.code+"'>"+val.name+"</option>"));
					} 
				}
		 });
	});
});
</script>
</head>
<body>
<form id="scrapCollectorEdit"
		action="${pageContext.request.contextPath }/scrapCollector/edit" method="post"
		class="form-horizontal" style="margin: 20px">
		<fieldset>
			<div id="legend" class="">
				<legend class="">编辑废品回收员</legend>
			</div>
			
			<!-- 隐藏域 -->
			<input type="hidden" name="id" value="${scrapCollector.id }" />
   			  <!-- 		<th>姓名</th>
				<th>性别</th>
				<th>身份证号</th> 
				<th>电话</th>
				<th>所在小区</th>
				<th>微信号</th>
				<th>收入</th>
				<th>创建时间</th> -->
   			<!--姓名-->
			<div class="control-group">
				<label for="name" class="col-sm-2 control-label">姓名：</label>
				<div class="col-sm-10">
					<input id="name"  name="name" type="text" required placeholder="请输入姓名"
					value="${scrapCollector.name }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div> 
   			<!--性别-->
			<div class="control-group">
				<label for="sex" class="col-sm-2 control-label">性别：</label>
				<div class="col-sm-10">
					<span style="display:inline-block;width:100px;height:30px;" id="sex"  
						class="input-xlarge"></span>&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--身份证-->
			<div class="control-group">
				<label for="idcard" class="col-sm-2 control-label">身份证：</label>
				<div class="col-sm-10">
					<input id="idcard"  name="idcard" type="text" required placeholder="请输入身份证"
					value="${scrapCollector.idcard }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--电话-->
			<div class="control-group">
				<label for="tel" class="col-sm-2 control-label">电话：</label>
				<div class="col-sm-10">
					<input id="tel"  name="tel" type="text" required placeholder="请输入电话"
					value="${scrapCollector.tel }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
   			<!--所在小区-->
			<div class="control-group">
				<label  class="col-sm-2 control-label">小区：</label>
				<div class="col-sm-10">
				 <select id="provinceCode" name="provinceCode">
					 </select>
					 <label for="provinceCode">省</label>
					 <select id="cityCode" name="cityCode">
					 </select>
					 <label for="cityCode">市</label>
					<select id="housingEstate"  name="housingEstate">
					</select>
					 <label for="housingEstate">小区</label> <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
   			<!--微信号-->
			<div class="control-group">
				<label for="openid" class="col-sm-2 control-label">微信号：</label>
				<div class="col-sm-10">
					<input id="openid"  name="openid" type="text" required placeholder="请输入微信号"
					value="${scrapCollector.openid }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div> 
   			<!--收入-->
			<div class="control-group">
				<label for="income" class="col-sm-2 control-label">收入：</label>
				<div class="col-sm-10">
					<input id="income"  name="income" value="0" type="text" required placeholder="请输入收入"
					value="${scrapCollector.income }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑废品</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>

<script type="text/javascript">
;$(function (){
	var curVal=${scrap.category};
	$.ajax({
		url:"${pageContext.request.contextPath}/dict/query",
		data:{"dictTabName":"scrap","dictColName":"category"},
		dataType:"json",
		type:"post",
		success:function(data){
			var obj=$("#category"); 
			for(var i=0;i<data.length;i++){
				var val=data[i];
				var selected="";
				if(val.dictOption==curVal)
					selected=" selected ";
					obj.apend('<option '+selected+' value="'+val.dictOption+'">'+val.dictText+'</option>');
			}
		}
	});	
});
</script>
<body>

 <form id="scrapCollectorEdit"
		action="${pageContext.request.contextPath }/scrap/edit" method="post"
		class="form-horizontal" style="margin: 20px">
		<fieldset>
			<div id="legend" class="">
				<legend class="">编辑废品</legend>
			</div>
			
			<!-- 隐藏域 -->
			<input type="hidden" name="id" value="${scrap.id }" />
			
		
   			<!--废品编号-->
			<div class="control-group">
				<label for="scrapCode" class="col-sm-2 control-label">废品编号：</label>
				<div class="col-sm-10">
					<input id="scrapCode"  name="scrapCode" type="text" required placeholder="请输入废品编号"
					value="${scrap.scrapCode }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--废品名称-->
			<div class="control-group">
				<label for="scrapName" class="col-sm-2 control-label">废品名称：</label>
				<div class="col-sm-10">
					<input id="scrapName"  name="scrapName" type="text" required placeholder="请输入废品名称"
					value="${scrap.scrapName }"		class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--废品类型-->
			<div class="control-group">
				<label for="category" class="col-sm-2 control-label">废品类型：</label>
				<div class="col-sm-10">
					<select id="category"  name="category" 
						class="input-xlarge">
						</select>&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--废品价格-->
			<div class="control-group">
				<label for="price" class="col-sm-2 control-label">废品价格：</label>
				<div class="col-sm-10">
					<input id="price"  name="price" type="number" required value="0" min="0.00" step="0.05" placeholder="请输入废品价格"
					value="${scrap.price }"	class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--单位-->
			<div class="control-group">
				<label for="unit" class="col-sm-2 control-label">单位：</label>
				<div class="col-sm-10">
					<select id="unit"  name="unit" >
						 <option value="kg">kg</option>
						 <option value="个">个</option>
						 </select>&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--积分-->
			<div class="control-group">
				<label for="score" class="col-sm-2 control-label">积分：</label>
				<div class="col-sm-10">
					<input id="score"  name="score" type="number" required placeholder="请输入积分"
					value="${scrap.score }"		class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
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
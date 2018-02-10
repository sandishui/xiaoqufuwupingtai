<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>增加废品</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrapvalidator-0.4.5/dist/css/bootstrapValidator.min.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrapvalidator-0.4.5/dist/js/bootstrapValidator.min.js"></script>
</head>
<script type="text/javascript">
;$(function (){
	$.ajax({
		url:"${pageContext.request.contextPath}/dict/query",
		data:{"dictTabName":"scrap","dictColName":"category"},
		dataType:"json",
		type:"post",
		success:function(data){
			var obj=$("#category"); 
			for(var i=0;i<data.length;i++){
				var val=data[i];
				obj.apend('<option value="'+val.dictOption+'">'+val.dictText+'</option>');
			}
		}
	});	
});
</script>
<body>
	
<form action="${pageContext.request.contextPath }/scrap/add" class="form-horizontal" style="margin: 20px"  method="post">
    <fieldset>
        <div id="legend" class="">
            <legend class="">增加废品</legend>
        </div>
  
   			<!--废品编号-->
			<div class="control-group">
				<label for="scrapCode" class="col-sm-2 control-label">废品编号：</label>
				<div class="col-sm-10">
					<input id="scrapCode"  name="scrapCode" type="text" required placeholder="请输入废品编号"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
				<p></p></div>
			</div>
			 
   			<!--废品名称-->
			<div class="control-group">
				<label for="scrapName" class="col-sm-2 control-label">废品名称：</label>
				<div class="col-sm-10">
					<input id="scrapName"  name="scrapName" type="text" required placeholder="请输入废品名称"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
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
					<input id="price"  name="price" type="text" required placeholder="请输入废品价格"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span> 
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
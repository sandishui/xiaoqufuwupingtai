<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑角色</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrapvalidator-0.4.5/dist/css/bootstrapValidator.min.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrapvalidator-0.4.5/dist/js/bootstrapValidator.min.js"></script>
</head> 
<body onload="changepid()">

	<form id="defaultForm" class="form-horizontal" style="margin: 20px"
		method="post">



		<fieldset>
			<div id="legend" class="">
				<legend class="">编辑角色</legend>
			</div>
			<!-- 创建人 -->
			<input type="hidden" name="createId" value="${role.id }">
			<!-- 更新人 -->
			<input type="hidden" name="updateId" value="${user.id }">

			<!--角色名称 -->
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">角色名称：</label>
				<div class="col-sm-5">
					<input id="name" class="form-control" name="name" type="text"
						value="${role.name }" placeholder="请输入角色名称">
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请输入角色名称
					</p>
				</div>
			</div>


			<!--角色序号-->
			<div class="form-group">
				<label for="sort" class="col-sm-2 control-label">角色序号：</label>
				<div class="col-sm-5">

					<input id="sort" class="form-control" name="sort"
						value="${role.sort }" placeholder="请输入角色序号">

				</div>
			</div>

			<!-- 角色权限 -->
			<div class="form-group">
				<label for="parentId" class="col-sm-2 control-label">角色权限：</label>
				<div class="col-sm-3">
					<!-- <input id="parentId" name="parentId" class="form-control"
						type="text" placeholder="角色权限" class="input-xlarge"> -->

					<!-- 判断 -->
					<c:choose>
						<c:when test="${menuPid == 0 && menuSid!=0 }">
							<select class="form-control" id="selparent" name="selparent"
								onchange="changepid()">
								<option value="0">根模块</option>
								<c:forEach items="${listMenu}" var="menu">
									<option value="${menu.id }"
										<c:if test="${menu.id == menuSid }"> 
											selected="selected" </c:if>>${menu.name}
									</option>
								</c:forEach>
							</select>
						</c:when>
						<c:when test="${menuPid != 0 && menuSid!=0 }">
							<select class="form-control" id="selparent"  name="selparent"
								onchange="changepid()">
								<option value="0">请选择</option>
								<c:forEach items="${listMenu}" var="menu">
									<option value="${menu.id }"
										<c:if test="${menu.id == menuPid }"> 
											selected="selected" </c:if>>${menu.name}
									</option>
								</c:forEach>
							</select>

							<span id="selspan"> </span>
						</c:when>
					</c:choose>


					<!-- 提交的数据 -->
					<input id="menuId" type="hidden" name="menuId" />


					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请输入角色权限
					</p>
				</div>

			</div>



			<!-- 按钮 -->
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>

				<!-- Button -->
				<div class="col-sm-5" style="margin-bottom: 10px;">
					<button id="preBtn" class="btn btn-success">修改</button>
					<button id="resetBtn" class="btn btn-success">重置</button>
				</div>
			</div>
			<br /> <br />
		</fieldset>
	</form>


	<script type="text/javascript">
		
		function changepid(){
			// 获取到选择值得Value
			var optval = $("#selparent").val();
			// 获取到span 标签
			var selspanObject = document.getElementById("selspan");
			//alert(optval);
			if( optval==0){
				selspanObject.innerHTML ="";
				return ;
			}
			
			var url = "${pageContext.request.contextPath}/findMenuByPId/";
			$.post(url,
					{parentId:optval},
					function (data) {
						// 判断
						if(data.length>0 ){
							// 拼接select
							var sel = ""; 
							sel=	"<select id='selson' class='form-control' ><option value='0'>--选择子模块--</option>";
							 // 遍历拼接option
							for(var i=0; i<data.length; i++){
							 
								
							/* 	sel =  sel +"<option value='"+data[i].id+"'     >"+data[i].name+"</option>"; */
								sel =  sel +'<option value="'+data[i].id;
							 	 
								var flag = ${ menuSid != null} && ${not empty  menuSid}   ?  (${ menuSid} == data[i].id) : false ;
								
								if(flag){
									sel = sel+ '"  selected="selected" >';
								}else{
									sel = sel+'" >';
								}
								sel = sel+data[i].name+"</option>";
							}
							
							 // 将数据添加到span中
							selspanObject.innerHTML =  sel +"</select>";
						}
					},
					"json"
			);
		}
	
		// 获取到角色权限 --pid
		function changepid2(){
			// 获取到选择值得Value
			var optval = $("#selparent").val();
			// 获取到span 标签
			var selspanObject = document.getElementById("selspan");
			//alert(optval);
			if( optval==0){
				selspanObject.innerHTML ="";
				return ;
			}
			
			var url = "${pageContext.request.contextPath}/findMenuByPId/";
			$.post(url,
					{parentId:optval},
					function (data) {
						// 判断
						if(data.length>0 ){
							
							// 拼接select
							var sel = ""; 
							sel=	"<select id='selson' class='form-control' ><option value='0'>--选择子模块--</option>";
							 // 遍历拼接option
							for(var i=0; i<data.length; i++){
								sel =  sel +"<option value='"+data[i].id+"'>"+data[i].name+"</option>";
							}
							
							 // 将数据添加到span中
							selspanObject.innerHTML =  sel +"</select>";
						}
					},
					"json"
			);
		}
	
	
		$(document)
				.ready(

						function() {
							// 获取到指定的遍历的值
							$('#defaultForm')
									.bootstrapValidator(
											{
												message : '',
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													name : {
														 validators : {
															notEmpty : {
																message : '名称不能为空'
															} 
														}
													} ,
													selparent: {
														 validators : {
															 	regexp : {
																	regexp : /^[1-9]\d*$/,
																	message : '请选择模块'
																}
															}
													}
													
												}
											}
									);
						}	
				
				);

		// 提交表单
		$('#preBtn').click(
				function() {
					$('#defaultForm').bootstrapValidator('validate') ;
					// 校验
					var flag = $('#defaultForm').data("bootstrapValidator")
							.isValid();
					
					// 获取到option中的值
					var pid = $("#selparent").val();
					var sid =  $("#selson").val();
				 
					// 判断 pid、sid 给menuId赋值
					var menuvalue = 0;
					if(pid !=0 && sid==0 ){
						// 前面选择 后面没有选择
						menuvalue = pid;
					}else if( pid!=0 && sid !=0){
						menuvalue = sid;
					}
					
					$("#menuId").val(menuvalue);
					
					//如果表单验证成功
					if (flag) {
						var $form = $('#defaultForm');
						$.ajax({
							type : "POST",
							url : "${pageContext.request.contextPath }/role/edit",
							data : $form.serialize(),
							success : function(data) {
						    window.location.href = "/role/rolelist?u="
										+ Math.random();  
							}
						});
					}
				});

		// Validate the form manually
		$('#resetBtn').click(function() {
			$('#defaultForm').data('bootstrapValidator').resetForm(true);
		});
	</script>

</body>

</html>
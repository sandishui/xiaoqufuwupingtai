<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>增加菜单</title>
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
<body>

	<form id="defaultForm" class="form-horizontal" style="margin: 20px"
		method="post">

		<fieldset>
			<div id="legend" class="">
				<legend class="">增加菜单</legend>
			</div>
			<!-- 创建人 -->
			<input type="hidden" name="createId" value="${user.id }"/>
			
			<!--菜单图标 -->
			<div class="form-group">
				<label for="icon" class="col-sm-2 control-label">菜单图标：</label>
				<div class="col-sm-5">
					<input id="icon" class="form-control" name="icon" type="text"
						placeholder="请添加菜单图标">
				</div>
			</div>

			<!--菜单名称 -->
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">菜单名称：</label>
				<div class="col-sm-5">
					<input id="name" class="form-control" name="name" type="text"
						placeholder="请输入菜单名称">
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请输入菜单名称
					</p>
				</div>
			</div>


			<!--权限名称-->
			<div class="form-group">
				<label for="urlkey" class="col-sm-2 control-label">权限名称：</label>
				<div class="col-sm-5">

					<input id="urlkey" class="form-control" name="urlkey"
						placeholder="请输入权限名称">
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请输入权限名称
					</p>
				</div>
			</div>


			<!--菜单类型-->
			<div class="form-group">
				<label for="type" class="col-sm-2 control-label">菜单类型：</label>
				<div class="col-sm-5">

					<input id="type" class="form-control" name="type" type="type"
						placeholder="请输入菜单类型">
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请输入菜单类型
					</p>
				</div>
			</div>

			<!--状态-->
			<div class="form-group">
				<label class="col-sm-2 control-label">状态：</label>
				<div class="col-sm-5">
					<!-- Inline Radios -->
					<label> <input type="radio" value="1" name="status">
						显示
					</label> &nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
						value="2" name="status">隐藏
					</label> &nbsp;&nbsp;<span style="color: #ff0000">*</span>
				</div>
			</div>

			<!--上级菜单-->
			<div class="form-group">
				<label for="parentId" class="col-sm-2 control-label">上级菜单：</label>
				<div class="col-sm-5">
					<input id="parentId" name="parentId" class="form-control"
						type="text" placeholder="上级菜单" class="input-xlarge">
				</div>
			</div>


			<!--连接地址：-->
			<div class="form-group">
				<label for="url" class="col-sm-2 control-label">链接地址：</label>
				<div class="col-sm-5">
					<input id="url" name="url" class="form-control" type="text"
						placeholder="请输入链接地址" class="input-xlarge">
				</div>
			</div>

			<!--排序-->
			<div class="form-group">
				<label for="sort" class="col-sm-2 control-label">排序：</label>
				<div class="col-sm-5">
					<input id="sort" name="sort" class="form-control" type="text"
						placeholder="请输入排序">
				</div>
			</div>


			<!-- 按钮 -->
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>

				<!-- Button -->
				<div class="col-sm-5" style="margin-bottom: 10px;">
					<button id="addBtn" class="btn btn-success">增加</button>
					<button id="resetBtn" class="btn btn-success">重置</button>
				</div>
			</div>
			<br /> <br />
		</fieldset>
	</form>


	<script type="text/javascript">
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
															},
															remote : {
																url : '/menu/check/1',
																message : '该名称不可用'
															} 
														}
													},

													urlkey : {
														validators : {
															notEmpty : {
																message : '权限名称不能为空'
															},
															regexp : {
																regexp : /^[a-zA-Z0-9_]+$/
															} 
														}
													},
													type : {
														validators : {
															notEmpty : {
																message : '类型不能为空'
															}
														}
													},
													status : {
														validators : {
															notEmpty : {
																message : '请选择状态'
															}
														}
													}
												}
											}
									);
						}	
				
				);

		// 提交表单
		$('#addBtn').click(
				function() {
					
					var flag = $('#defaultForm').data("bootstrapValidator")
							.isValid();
					//如果表单验证成功
					if (flag) {
						var $form = $('#defaultForm');
			 
						$.ajax({
							type : "POST",
							url : "${pageContext.request.contextPath }/menu/add",
							data : $form.serialize(),
							success : function(data) {
						    window.location.href = "/menu/menulist?u="
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
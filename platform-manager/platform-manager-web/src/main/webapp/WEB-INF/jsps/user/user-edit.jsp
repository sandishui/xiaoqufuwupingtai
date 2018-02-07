<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑用户</title>
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

	<form id="defaultForm" 
		class="form-horizontal" style="margin: 20px" method="post">
		<fieldset>
			<div id="legend" class="">
				<legend class="">编辑用户</legend>
			</div>

			<!-- 隐藏域 -->
			<input type="hidden" name="id" value="${user.id }" />

			<!--管理员名称 -->
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">管理员名称：</label>
				<div class="col-sm-5">
					<input id="username" class="form-control" name="username"
						value="${user.username }" type="text" placeholder="请输入管理员名称">
					<p class="help-block">
						&nbsp;&nbsp; <span style="color: #ff0000">*</span>
						&nbsp;&nbsp;6~18个字符，字母、数字、下划线组成，需以字母开头
					</p>
				</div>
			</div>


			<!--初始密码-->
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-5">
					<input id="password" class="form-control" name="password" value=""
						type="password" placeholder="请输入密码">
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;
						6~16个字符，区分大小写
					</p>
				</div>
			</div>


			<!--确认密码-->
			<div class="form-group">
				<label for="password2" class="col-sm-2 control-label">确认密码：</label>
				<div class="col-sm-5">
					<input id="password2" name="password2" type="password"
						class="form-control" placeholder="请输入确认密码">
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请再次填写密码
					</p>
				</div>
			</div>

			<!--性别 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">性别：</label>
				<div class="col-sm-5">
					<!-- Inline Radios -->
					<label> <input type="radio" value="0" name="gender"
						<c:if test="${user.gender }" > checked="checked"  </c:if>>
						女
					</label> &nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
						value="1" name="gender"
						<c:if test="${user.gender }" > checked="checked"  </c:if>>
						男
					</label>
					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;请选择性别
					</p>
				</div>
			</div>

			<!--手机号-->
			<div class="form-group">
				<label for="tel" class="col-sm-2 control-label">手机号码：</label>
				<div class="col-sm-5">
					<input id="tel" name="tel" value="${user.tel }" type="text"
						placeholder="请输入手机号码" class="form-control">
					<p class="help-block">忘记密码时，可以通过该手机号码快速找回密码</p>
				</div>
			</div>


			<!--邮箱：-->
			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">邮箱：</label>
				<div class="col-sm-5">
					<input id="email" name="email" value="${user.email }" type="text"
						placeholder="请输入邮箱" class="form-control">
					<p class="help-block">可以通过邮箱找回密码</p>
				</div>
			</div>


			<!--角色-->
			<div class="form-group">
				<label for="roleId" class="col-sm-2 control-label">角色：</label>
				<div class="col-sm-5">
					<input id="roleId" name="roleId" value="${user.roleId }"
						type="text" placeholder="请输入角色" class="form-control">

					<p class="help-block">
						&nbsp;&nbsp;<span style="color: #ff0000">*</span>&nbsp;&nbsp;可以通过邮箱找回密码
					</p>
				</div>
			</div>


			<!--备注-->
			<div class="form-group">

				<!-- Textarea -->
				<label for="remark" class="col-sm-2 control-label">备注</label>
				<div class="col-sm-5">
					<div class="textarea">
						<textarea id="remark" name="remark" class="form-control" rows="3">${user.remark }</textarea>
					</div>
				</div>
			</div>

			<!-- 按钮 -->
			<div class="control-group">
				<label class="col-sm-2 control-label"></label>
				<!-- Button -->
				<div class="col-sm-5" style="margin-bottom: 10px;">
					<button id="editBtn" class="btn btn-success">修改</button>
				</div>
			</div>
			<br />
			<br />
			<br />
			<br />
		
		</fieldset>

	</form>

</body>
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
													username : {
														validators : {
															notEmpty : {
																message : '用户名不能为空'
															},
															regexp : {
																regexp : /^[a-zA-Z][a-zA-Z0-9_]{5,17}$/
															}
														}
													},

													password : {
														validators : {
															notEmpty : {
																message : '密码不能为空'
															},
															regexp : {
																regexp : /^\S{6,16}$/
															}
														}
													},
													password2 : {
														validators : {
															notEmpty : {
																message : '密码不能为空'
															},
															regexp : {
																regexp : /^\S{6,16}$/
															},
															identical : {
																field : 'password',
																message : '两次密码不一致'
															}
														}
													},
													gender : {
														validators : {
															notEmpty : {
																message : '请选择性别'
															}
														}
													},
													tel : {
														validators : {
															regexp : {
																regexp : /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/,
																message : '请输入正确的手机号'
															}
															
														}
													},
													email : {
														validators : {
															emailAddress : {
																message : '请输入正确的邮箱地址'
															}
														}
													},
													roleId : {
														validators : {
															notEmpty : {
																message : '角色不能为空'
															}
														}
													} 
												}
											});

						});

		// 提交表单
		$('#editBtn').click(
				function() {
				 	$('#defaultForm').bootstrapValidator('validate') ;
					var flag = $('#defaultForm').data("bootstrapValidator")
							.isValid();  
					//如果表单验证成功
					if (flag) {
						var $form = $('#defaultForm');
						$.ajax({
							type : "POST",
							url : "${pageContext.request.contextPath }/user/edit",
							data : $form.serialize(),
							success : function(data) {
						    window.location.href = "/user/userlist?u="
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

</html>
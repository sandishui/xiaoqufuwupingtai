<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户列表</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body>

	<form class="form-horizontal" style="margin: 20px">
		<fieldset>
			<div id="legend" class="">
				<legend class="">修改用户</legend>
			</div>
			<!--管理员名称 -->
			<div class="control-group">
				<label for="username" class="col-sm-2 control-label">管理员名称：</label>
				<div class="col-sm-10">
					<input id="username" type="text" placeholder="请输入管理员名称"
						class="input-xlarge">
					<p class="help-block">6~18个字符，可使用字母、数字、下划线，需以字母开头</p>
				</div>
			</div>


			<!--初始密码-->
			<div class="control-group">
				<label for="usepwd" class="col-sm-2 control-label">初始密码：</label>
				<div class="col-sm-10">
					<input id="usepwd" type="text" placeholder="请输入密码"
						class="input-xlarge">
					<p class="help-block">6~16个字符，区分大小写</p>
				</div>
			</div>


			<!--确认密码-->
			<div class="control-group">
				<label for="usepwd2" class="col-sm-2 control-label">确认密码：</label>
				<div class="col-sm-10">
					<input id="usepwd2" type="text" placeholder="请输入确认密码"
						class="input-xlarge">
					<p class="help-block">请再次填写密码</p>
				</div>
			</div>

			<!--性别 -->
			<div class="control-group">
				<label class="col-sm-2 control-label">性别：</label>
				<div class="col-sm-10">
					<!-- Inline Radios -->
					<label> <input type="radio" value="女" name="gender"
						checked="checked"> 女
					</label> &nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
						value="男" name="gender"> 男
					</label>
				</div>
			</div>

			<!--手机号-->
			<div class="control-group">
				<label for="telnum" class="col-sm-2 control-label">手机号码：</label>
				<div class="col-sm-10">
					<input id="telnum" type="text" placeholder="请输入手机号码"
						class="input-xlarge">
					<p class="help-block">忘记密码时，可以通过该手机号码快速找回密码</p>
				</div>
			</div>


			<!--邮箱：-->
			<div class="control-group">
				<label for="email" class="col-sm-2 control-label">邮箱：</label>
				<div class="col-sm-10">
					<input id="email" type="text" placeholder="请输入邮箱"
						class="input-xlarge">
					<p class="help-block">可以通过邮箱找回密码</p>
				</div>
			</div>

			<!--角色-->
			<div class="control-group">
				<label for="roler" class="col-sm-2 control-label">角色：</label>
				<div class="col-sm-10">
					<input id="roler" type="text" placeholder="请输入角色"
						class="input-xlarge">
					<p class="help-block">可以通过邮箱找回密码</p>
				</div>
			</div>


			<!--备注-->
			<div class="control-group">

				<!-- Textarea -->
				<label for="tag" class="col-sm-2 control-label">备注</label>
				<div class="col-sm-10">
					<div class="textarea">
						<textarea id="tag"
							style="margin: 0px; width: 182px; height: 44px;"> </textarea>
					</div>
				</div>
			</div>

			<!-- 按钮 -->
			<div class="control-group">
				<label class="col-sm-2 control-label"></label>

				<!-- Button -->
				<div class="col-sm-10" style="margin-top: 7px;">
					<button class="btn btn-success">增加</button>
					<button class="btn btn-success">重置</button>
				</div>
			</div>
		</fieldset>
	</form>

</body>
</html>
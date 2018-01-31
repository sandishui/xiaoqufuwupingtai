<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>增加用户</title>
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
<body>
	
<form action="${pageContext.request.contextPath }/user/add" class="form-horizontal" style="margin: 20px">
    <fieldset>
        <div id="legend" class="">
            <legend class="">增加用户</legend>
        </div>
   			<!--管理员名称 -->
			<div class="control-group">
				<label for="username" class="col-sm-2 control-label">管理员名称：</label>
				<div class="col-sm-10">
					<input id="username"  name="username" type="text" placeholder="请输入管理员名称"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span>
					<p class="help-block">6~18个字符，可使用字母、数字、下划线，需以字母开头</p>
				</div>
			</div>


			<!--初始密码-->
			<div class="control-group">
				<label for="password" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-10">
					<input id="password" name="password" type="password" placeholder="请输入密码"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span>
					<p class="help-block">6~16个字符，区分大小写</p>
				</div>
			</div>


			<!--确认密码-->
			<div class="control-group">
				<label for="password2" class="col-sm-2 control-label">确认密码：</label>
				<div class="col-sm-10">
					<input id="password2" name="password2" type="password" placeholder="请输入确认密码"
						class="input-xlarge">&nbsp; <span style="color: #ff0000">*</span>
					<p class="help-block">请再次填写密码</p>
				</div>
			</div>

        <!--性别 -->
        <div class="control-group">
            <label   class="col-sm-2 control-label">性别：</label>
            <div class="col-sm-9">
                <!-- Inline Radios -->
                <label  >
                    <input type="radio" value="0" name="gender" checked="checked"> 女
                </label> &nbsp;&nbsp;&nbsp;&nbsp;
                <label  >
                    <input type="radio" value="1" name="gender"> 男
                </label>
                <label class="col-sm-offset-1" style="color: #ff0000">
                  &nbsp; &nbsp;  &nbsp;  &nbsp;   *
                </label>
            </div>
        </div>

        <!--手机号-->
        <div class="control-group">
            <label for="tel" class="col-sm-2 control-label">手机号码：</label>
            <div class="col-sm-10">
                <input id="tel"  name="tel"type="text" placeholder="请输入手机号码" class="input-xlarge">
                <p class="help-block">忘记密码时，可以通过该手机号码快速找回密码</p>
            </div>
        </div>


        <!--邮箱：-->
        <div class="control-group">
            <label for="email" class="col-sm-2 control-label">邮箱：</label>
            <div class="col-sm-10">
                <input  id="email" name="email" type="text" placeholder="请输入邮箱" class="input-xlarge">
                <p class="help-block">可以通过邮箱找回密码</p>
            </div>
        </div>

        <!--角色-->
        <div class="control-group">
            <label for="roleId" class="col-sm-2 control-label">角色：</label>
            <div class="col-sm-10">
                <input id="roleId"  name="roleId" type="text" placeholder="请输入角色" class="input-xlarge">
                  &nbsp; <span style="color: #ff0000">*</span>
                <p class="help-block">可以通过邮箱找回密码</p>
              
            </div>
        </div>


        <!--备注-->
        <div class="control-group">

            <!-- Textarea -->
            <label for="remark" class="col-sm-2 control-label">备注</label>
            <div  class="col-sm-10">
                <div class="textarea">
                    <textarea id="remark"  name="remark" style="margin: 0px; width: 182px; height: 44px;" > 
                    </textarea>
                </div>
            </div>
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
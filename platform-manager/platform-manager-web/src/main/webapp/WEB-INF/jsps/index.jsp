<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>小区业主服务平台--管理首页</title>

<link
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<style>
/*body */
body {
	background: url("image/index_bg.jpg") top center no-repeat;
	background-size: cover;
}

/*web background*/
.container {
	display: table;
	height: 100%;
}

.container .row.row-centered {
	display: table-cell;
	vertical-align: middle;
}
/* centered columns styles */
.row-centered {
	text-align: center;
}

.col-centered {
	display: inline-block;
	float: none;
	text-align: left;
	margin-right: -4px;
}
</style>

<script type="text/javascript">

//刷新验证码
function change() {
	$("#code_image").attr("src", "createImage?date=" + new Date().getTime());
}
</script>
</head>
<body>
	<!-- header -->
	<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">小区业主服务平台后台管理系统</a>
			</div>
		</div>
	</nav>

	<!-- footer -->
	<div class="main_nav_bottom">
		<nav class="navbar navbar-default navbar-fixed-bottom">
			<div class="container" align="center" >
				<ul class="nav nav-tabs nav-tabs-justified">
					<div class="row">Copyright © 2018 蓝鸥lanou3g.com 版权所有</div>
				</ul>
			</div>
		</nav>
	</div>



	<!-- center -->
	<div class="container">
		<div class="row row-centered ">
			<div class="well col-md-4 col-centered">
	
				<h3 align="center">管理员登录</h3>
				<form action="/login" method="post" role="form">
					<div class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon ">用户名</i></span> <input type="text"
							class="form-control" id="username" name="username"
							placeholder="请输入用户名" />
					</div>
					<div class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon ">密&nbsp;码</i></span> <input type="password"
							class="form-control" id="password" name="password"
							placeholder="请输入密码" />
					</div>
					<div class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon ">验证码</i></span> <input type="text"
							class="form-control" id="imageCode" name="imageCode"
							placeholder="请输入验证码" /> <span class="input-group-addon"
							id="sizing-addon1"><i class="glyphicon"
							style="height: 20px; "><img  id="code_image"  style="width: 80px; height: 25px;"
								src="${pageContext.request.contextPath }/createImage"  onclick="change()"></i></span>
					</div>
					<!-- 用户名或密码错误 -->
					<c:if test="${not empty error }">
						<br />
						<div  align="center" style="color: red;font-size: 16px;">${error }</div>
					</c:if>
					 
					<br />
					
					<button type="submit" class="btn btn-success btn-block"  >登录</button>
				</form>
			</div>
		</div>
	</div>

 

</body>
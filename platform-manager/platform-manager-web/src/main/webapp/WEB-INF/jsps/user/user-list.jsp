<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<script type="text/javascript">

	/*带条件的分页查询 */
 	function jump(currentpage,rows,searchparam){
		// 判断
		if(currentpage<1 ){
			currentpage = 1;
		}
		if(currentpage > ${pageBean.pageCount}){
			currentpage = ${pageBean.pageCount};
		}
	
		// 定义访问路径
		var url = "/user/userlist?currentPage="+currentpage;
		
		// 获取到 页容量
	  	if( rows!== null && rows!== "" ){
			rows = $("#pagesize").val();
	  		url +="&rows="+rows;
		}    
		
		// 获取到搜索框中的内容
		searchparam = $("#searchparam").val();
		if( typeof(searchparam)!=="undefined" && searchparam!== null && searchparam!==""){
			url +="&searchparam="+searchparam;
		} 
	
		window.location.href= url +"&u="+Math.random(); 
 	}
 
	/*删除 */
	function delUser(){
 
		//定义一个空数组
		var ids = [];

		// 将获取到数据填充到数组中
		$("input[name='ids']:checked").each(function(i) {//把所有被选中的复选框的值存入数组
			ids[i] = $(this).val();
		});
		alert(ids.length);
		// ajax发送
		$.ajax({
			type : 'POST',
			url : "${pageContext.request.contextPath }/user/delete",
			data : { "ids[]" : ids },
			success : function(data) {
				window.location.reload();
			}
		});
	}
	
</script>

</head>
<body style="margin: 10px">
	<!-- top-->
	<nav class="navbar navbar-default ">
		<div class="container">
			<!--操作-->
			<span class="input-group col-md-3  navbar-left"
				style="margin-top: 7px; positon: relative;"> <span
				class="input-group-btn"> <a href="#" class="btn btn-info"
					role="button"  onclick="delUser();">删除</a> <a href="/main/user/user-add"
					class="btn btn-info" role="button" style="margin-left: 10px;">增加</a>
			</span>
			</span>

			<!--搜索-->
			<div class="navbar-collapse collapse ">

				<div class="input-group col-md-3  navbar-right"
					style="margin-top: 7px; positon: relative;">
					<input id="searchparam" name="searchparam" value="${searchparam }"
						type="text" class="form-control" placeholder="请输入用户名" /> <span
						class="input-group-btn">
						<button onclick="jump(${currentPage}, ${rows })" class="btn btn-info btn-search">查找</button>
					</span>
				</div>
			</div>
		</div>
		</div>
	</nav>
	<!--导航-->

	<!--table -->
	<table class="table  table-bordered  table-hover">
		<thead>
			<tr class="active">
				<td align="center"><input type="checkbox"></td>
				<th>登录名称</th>
				<th>手机号</th>
				<th>邮箱</th>
				<th>角色</th>
				<th>创建时间</th>
				<th>是否启用</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pageBean.rows }" var="sysuser">
				<tr>
					<td align="center"><input type="checkbox" name="ids"
						value="${sysuser.id }"></td>
					<td>${sysuser.username }</td>
					<td>${sysuser.tel }</td>
					<td>${sysuser.email }</td>
					<td>${sysuser.realname }</td>
					<td><fmt:formatDate value="${sysuser.createTime }"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td><c:choose>
							<c:when test="${sysuser.state==1 }">
							 启用
						 </c:when>
							<c:otherwise>
						 	停用
						 </c:otherwise>
						</c:choose></td>
					<td><a href="/user/predit?id=${sysuser.id  }">修改</a>  </td>
				</tr>
			</c:forEach>

		</tbody>

	</table>

	<!--分页数据 -->
	<div class="navbar ">
		从 <b>${pageBean.startIdx } </b> 到 <b> ${pageBean.endIdx } </b> 条记录
		总记录数为 <b>${pageBean.total } </b> 条 每页显示 
		<select id="pagesize"
			onchange="jump(${currentPage},this);">
			<option value="10" <c:if test="${rows ==10 }">selected </c:if>>10</option>
			<option value="20" <c:if test="${rows ==20 }">selected </c:if>>20</option>
		</select> 条记录 <span class="navbar-right"
			style="margin-right: 7px; positon: relative;"> <a
			href="javascript:void();" onclick="jump(${currentPage-1});">上一页</a>
			${currentPage } <a href="javascript:void();"
			onclick="jump(${currentPage+1});">下一页</a>

		</span>

	</div>
</body>
</html>



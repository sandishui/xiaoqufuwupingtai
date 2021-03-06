<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>角色列表</title>
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
		var url = "/role/rolelist?currentPage="+currentpage;
		
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
	function delRole(){
 
		//定义一个空数组
		var ids = [];

		// 将获取到数据填充到数组中
		$("input[name='ids']:checked").each(function(i) {//把所有被选中的复选框的值存入数组
			ids[i] = $(this).val();
		});
		 
		// ajax发送
		$.ajax({
			type : 'POST',
			url : "${pageContext.request.contextPath }/role/delete",
			data : { "ids[]" : ids },
			success : function(data) {
				window.location.reload();
			}
		});
	}
	

    //全选方法
    function change() {
        //获取checkbox按钮组
        var allpro = document.getElementsByName("ids");
        //获取全选按钮
        var all = document.getElementById("all");
        //全选按钮被选中时，遍历所有按钮
        if (all.checked) {
            for (var i = 0; i < allpro.length; i++) {
                if (allpro[i].type=="checkbox") {
                    allpro[i].checked=true;

                }
            }
            //全选按钮未被选中时
        }else{
            for (var i = 0; i < allpro.length; i++) {
                if (allpro[i].type=="checkbox") {
                    allpro[i].checked=false;
                }
            }
        }
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
				class="input-group-btn"> <a href="javascript:void();" class="btn btn-info"
					role="button"  onclick="delRole();">删除</a> <a href="/role/preadd"
					class="btn btn-info" role="button" style="margin-left: 10px;">增加</a>
			</span>
			</span>

			<!--搜索-->
			<div class="navbar-collapse collapse form-group ">
				<div class="input-group col-md-3  navbar-right"
					style="margin-top: 7px; positon: relative;">
					<input id="searchparam" name="searchparam" value="${searchparam }"
						type="text" class="form-control" placeholder="请输入名称" /> <span
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
				<td align="center"><input id="all" type="checkbox" onclick="change()"></td>
				<th>登录名称</th>
				<th>创建时间</th>
				<th>创建人</th>
				<th>排序</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pageBean.rows }" var="sysrole">
				<tr>
					<td align="center"><input type="checkbox" name="ids"
						value="${sysrole.id }"></td>
					<td>${sysrole.name}</td>
					<td><fmt:formatDate value="${sysrole.createTime }"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td>${sysrole.createId }</td>
					<td>${sysrole.sort }</td>
		 
					<td><c:choose>
							<c:when test="${sysrole.status==1 }">
							显示
						 </c:when>
							<c:otherwise>
						 	隐藏
						 </c:otherwise>
						</c:choose></td>
					<td><a href="/role/predit?id=${sysrole.id  }">修改</a>  </td>
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



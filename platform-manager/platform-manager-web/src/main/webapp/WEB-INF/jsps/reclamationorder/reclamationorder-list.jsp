<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>业主回收订单列表</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/changeByteOrString.js"></script>
<script type="text/javascript">

	/*带条件的分页查询 */
 	function jump(currentpage,rows,searchparam,updateTime){
		// 判断
		if(currentpage<1 ){
			currentpage = 1;
		}
		if(currentpage > ${pageBean.pageCount}){
			currentpage = ${pageBean.pageCount};
		}
	
		// 定义访问路径
		var url = "/owner/ownerlist?currentPage="+currentpage;
		
		// 获取到 页容量
	  	if( rows!== null && rows!== "" ){
			rows = $("#pagesize").val();
	  		url +="&rows="+rows;
		}    
		
		// 获取到搜索框中的内容
		searchparam = $("#searchparam").val();
		updateTime=$("#updateTime").val();
		
	
		/* 	<input type="text" id="hicurr" name="currentPage"/>
	  	<input type="text" id="hisearch" name="searchparam"/>
	  	<input type="text" id="hrows" name="rows"/>*/
	  	$("#hicurr").val(currentpage);
	  	$("#hisearch").val(searchparam);
	  	$("#hrows").val(rows);
		$("#hupdateTime").val(updateTime);
		$("form").submit();
		//window.location.href= url +"&u="+Math.random(); 
 	}
</script>

</head>
<body style="margin: 10px">
<form action="/reclamationorder/reclamationorderlist" method="post">
  	<input type="hidden" id="hicurr" name="currentPage"/>
  	<input type="hidden" id="hisearch" name="searchparam"/>
  	<input type="hidden" id="hupdateTime" name="updateTime"/>
  	<input type="hidden" id="hrows" name="rows"/>
</form>
	<!-- top-->
	<nav class="navbar navbar-default ">
		<div class="container">
			

			<!--搜索-->
			<div class="navbar-collapse collapse "> 
			<div class="input-group col-md-3  navbar-right"
					style="margin-top: 7px; positon: relative;">
					<input id="updateTime" name="updateTime" value="${updateTime }"
						type="date" class="form-control" placeholder="输入日期" />
						 <span
						class="input-group-btn">
						<button onclick="jump(${currentPage}, ${rows})" class="btn btn-info btn-search">查找</button>
					</span>
			
				</div>
				<div class="input-group col-md-3  navbar-right"
					style="margin-top: 7px; positon: relative;">
					 
					<input id="searchparam" name="searchparam" value="${searchparam }"
						type="text" class="form-control" placeholder="输入业主姓名" />
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
				 		<th>订单编号</th>
				 		<th>废品</th>  
				 		<th>业主</th> 
				 		<th>回收员</th> 
				 		<th>分检员</th>
				 		<th>回收数量</th> 
				 		<th>回收金额</th>
				 		<th>回收状态</th> 
				 		<th>分检状态</th>
				 		<th>修改时间</th> 
				 		<th>创建时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pageBean.rows }" var="order">
				<tr> 
					<td align="center">${order.orderNo}</td>
					<td >${order.scrapCode}</td>
					<td >${order.ownerId}</td>
					<td >${order.scId}</td>
					<td >${order.rdId}</td> 
					<td >${order.amount==null?0:order.amount}${order.unit}</td>
					<td >${order.money}</td>
					<td >${order.scStatus}</td>
					<td >${order.rdStatus}</td>
					<td ><fmt:formatDate value="${order.updateTime}"
							pattern="yyyy-MM-dd HH:mm:ss" /> </td> 
					<td ><fmt:formatDate value="${order.createTime}"
							pattern="yyyy-MM-dd HH:mm:ss" /> </td> 
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



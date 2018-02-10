<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>废品回收员</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/changeByteOrString.js"></script>
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
		var url = "/scrapCollector/scrapCollectorList?currentPage="+currentpage;
		
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
		/* 	<input type="text" id="hicurr" name="currentPage"/>
  	<input type="text" id="hisearch" name="searchparam"/>
  	<input type="text" id="hrows" name="rows"/>*/
  	$("#hicurr").val(currentpage);
  	$("#hisearch").val(searchparam);
  	$("#hrows").val(rows);
		
		 $("form").submit();
		//window.location.href= url +"&u="+Math.random(); 
 	}
 
	/*删除 */
	function delScrapCollector(){ 
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
			url : "${pageContext.request.contextPath }/scrapCollector/delete",
			data : { "ids[]" : ids },
			success : function(data) {
				window.location.reload();
			}
		});
	}
	
</script>

</head>
<body style="margin: 10px">
<form action="/scrapCollector/scrapCollectorList" method="post">
  	<input type="hidden" id="hicurr" name="currentPage"/>
  	<input type="hidden" id="hisearch" name="searchparam"/>
  	<input type="hidden" id="hrows" name="rows"/>
</form>
	<!-- top-->
	<nav class="navbar navbar-default ">
		<div class="container">
			<!--操作-->
			<span class="input-group col-md-3  navbar-left"
				style="margin-top: 7px; positon: relative;"> <span
				class="input-group-btn"> <a href="#" class="btn btn-info"
					role="button"  onclick="delScarpCollector();">删除</a> <a href="/main/scrapCollector/scrapCollector-add"
					class="btn btn-info" role="button" style="margin-left: 10px;">增加</a>
			</span>
			</span>

			<!--搜索-->
			<div class="navbar-collapse collapse "> 
				<div class="input-group col-md-3  navbar-right"
					style="margin-top: 7px; positon: relative;">
					<input id="searchparam" name="searchparam" value="${searchparam }"
						type="text" class="form-control" placeholder="内容名称" /> <span
						class="input-group-btn">
						<button onclick="jump(${currentPage}, ${rows})" class="btn btn-info btn-search">查找</button>
					</span>
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
				<th>姓名</th>
				<th>性别</th>
				<th>身份证号</th> 
				<th>电话</th>
				<th>所在小区</th>
				<th>微信号</th>
				<th>收入</th>
				<th>创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pageBean.rows}" var="scrapCollector">
				<tr> 
					<td align="center"><input type="checkbox" name="ids"
						value="${scrapCollector.id}"></td> 
						<td>${scrapCollector.name}</td>
						<td>${scrapCollector.sex}</td>
						<td>${scrapCollector.idcard}</td>
						<td>${scrapCollector.tel}</td>
						<td>${scrapCollector.housingEstateCode}</td>
						<td>${scrapCollector.openid}</td>
						<td>${scrapCollector.income}</td>
						<td><fmt:formatDate value="${scrapCollector.createTime}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td><a href="/scrapCollector/predit?id=${scrapCollector.id}">修改</a>  </td>
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



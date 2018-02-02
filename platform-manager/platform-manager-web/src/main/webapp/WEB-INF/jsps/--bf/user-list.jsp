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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body style="margin: 10px">
<!-- top-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">

        <a class="btn btn-default" href="#" role="button">删除</a>
        <a href="#" class="btn btn-primary  active" role="button">Primary link</a>
        <a href="#" class="btn btn-default active" role="button">Link</a>

    </div>
</nav>

<!--导航-->
<nav class="navbar navbar-default ">
    <div class="container">

        <!--操作-->
        <span class="input-group col-md-3  navbar-left" style="margin-top:7px; positon:relative;">

                    <span class="input-group-btn">
                        <a href="#" class="btn btn-info" role="button">删除</a>
                        <a href="#" class="btn btn-info" role="button" style="margin-left: 10px;">增加</a>
                    </span>

            </span>


        <!--搜索-->
        <div class="navbar-collapse collapse ">

            <div class="input-group col-md-3  navbar-right" style="margin-top:7px; positon:relative;">
                <input type="text" class="form-control" placeholder="请输入用户名"/>
                <span class="input-group-btn">
                        <button class="btn btn-info btn-search">查找</button>
                    </span>
            </div>

        </div>

    </div>


    <!--导航-->

    </div>
</nav>
<!--导航-->

<!--table -->
<table class="table  table-bordered  table-hover">
    <thead>
    <tr class="active">
        <td align="center">
            <input type="checkbox">
        </td>
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
    <tr>
        <td align="center">
            <input type="checkbox">
        </td>
        <td>王五</td>
        <td>13112345678</td>
        <td>ww@test.com</td>
        <td>管理员</td>
        <td>2018-01-11 12:33:44</td>
        <td>已启动</td>
        <td>修改 | 删除</td>
    </tr>
    <tr>
        <td align="center"><input type="checkbox"/></td>
        <td>王五</td>
        <td>13112345678</td>
        <td>ww@test.com</td>
        <td>管理员</td>
        <td>2018-01-11 12:33:44</td>
        <td>已启动</td>
        <td>修改 | 删除</td>
    </tr>
    <tr>
        <td align="center"><input type="checkbox"/></td>
        <td>王五</td>
        <td>13112345678</td>
        <td>ww@test.com</td>
        <td>管理员</td>
        <td>2018-01-11 12:33:44</td>
        <td>已启动</td>
        <td>修改 | 删除</td>
    </tr>
    <tr>
        <td align="center"><input type="checkbox"/></td>
        <td>王五</td>
        <td>13112345678</td>
        <td>ww@test.com</td>
        <td>管理员</td>
        <td>2018-01-11 12:33:44</td>
        <td>已启动</td>
        <td>修改 | 删除</td>
    </tr>
    </tbody>

</table>

<!--分页数据 -->
<div class="navbar ">
    从 1 到 3 条记录 总记录数为 3 条 每页显示 <select>
    <option>10</option>
    <option>20</option>
</select> 条记录
    <span class="navbar-right" style="margin-right:7px; positon:relative;">
           上一页  1  下一页
    </span>

</div>


</body>
</html>
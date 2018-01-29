<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>小区服务平台后台管理系统-首页</title>
    <link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/css/bootstrap.min.css" >
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">

    <script>

        $(document).ready(function(){
            var path=window.location.pathname;
            var regExp=/[\/\.\?]+/;
            str=path.split(regExp);
            var node=str.slice(-2,-1);
            $('#'+node+' a').addClass('at');
            $('#'+node).parent().parent().parent().addClass('in');
        })
    </script>
</head>
<body>


<!--导航    -->
<nav class="navbar navbar-default navbar-fixed-top"  role="navigation">

    <div class="container">
        <!--小屏幕导航按钮和logo-->
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse"  data-target=".navbar-collapse" >
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>
            <a href="#" class="navbar-brand">小区业主服务平台--后台管理</a>
        </div>

        <!--导航内容-->
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        admin
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dLabel">
                        <li><a href="#"> 个人信息 </a></li>
                    </ul>
                </li>
                <li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp; 退出 </a></li>

            </ul>
        </div>
    </div>
</nav>



    <!--footer-->
    <div class="main_nav_bottom">
        <nav class="navbar navbar-default navbar-fixed-bottom">
            <div class="container" align="center">
                <ul class="nav nav-tabs nav-tabs-justified">
                    <div class="row" >
                        Copyright © 2018  蓝鸥lanou3g.com 版权所有
                    </div>
                </ul>
            </div>
        </nav>
    </div>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                <li class="active">
                    <a href="#">
                        <i class="glyphicon glyphicon-th-large"></i>
                        后台管理系统
                    </a>
                </li>
                <li>
                    <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        权限管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>用户管理</a>
                        </li>
                        <li><a href="http://www.ifeng.com" target="frame">
                            <i class="glyphicon glyphicon-th-list"></i>菜单管理</a>
                        </li>
                        <li><a href="http://www.163.com" target="frame">
                            <i class="glyphicon glyphicon-asterisk"></i>角色管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#scrapManager" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        废品管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="scrapManager" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>  废品管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#scraperManager" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        废品回收员管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="scraperManager" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>废品回收员管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#ownerManager" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        业主管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="ownerManager" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>业主管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#villageManager" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        小区管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="villageManager" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>小区管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#sysManager" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        系统管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="sysManager" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>系统设置</a>
                        </li>
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>数据字典</a>
                        </li>
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>屏蔽词</a>
                        </li>
                        <li><a href="http://www.baidu.com" target="frame">
                            <i class="glyphicon glyphicon-user"></i>系统日志</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <!--右侧-->
        <div class="col-md-10">
            <iframe id="iframe" name="frame"  src="http://www.baidu.com"  width="100%" height="100%"
                    frameborder="no" border="0" marginwidth="0" marginheight="0"  allowtransparency="yes">
            </iframe>
        </div>
    </div>
</div>


</body>
</html>
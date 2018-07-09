<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-layout layui-layout-admin custom-fix-top">
    <div class="layui-header">
        <div class="layui-logo">在线试题库</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/home.do">首页</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/practice.do">题库</a></li>
            <li class="layui-nav-item"><a href="">笔记</a></li>
            <li class="layui-nav-item"><a href="">上传试题</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">后台管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="">用户管理</a></dd>
                    <dd><a href="">角色授权</a></dd>
                    <dd><a href="">权限分配</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right custom-padding-right-200">
            <li class="layui-nav-item"><a href="">搜索</a></li>
            <li class="layui-nav-item"><a href="">消息</a></li>
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <a href="" class="layui-btn layui-btn-radius layui-btn-danger">登录/注册</a>
                </c:when>
                <c:otherwise>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <img src="../../images/you.jpg" class="layui-nav-img">
                            ${sessionScope.user.username}
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="/personal/mine.do">个人主页</a></dd>
                            <dd><a href="/personal/mine.do">我的成就</a></dd>
                            <dd><a href="/user/logout.do">退出登录</a></dd>
                        </dl>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</div>
<div class="custom-right-nav">
    <a class="custom-right-nav-item" id="back_to_top"><img src="../../images/backToTop.png" class="custom-nav-right-img"></a>
    <a class="custom-right-nav-item"><img src="../../images/feedback.png" class="custom-nav-right-img"></a>
    <a class="custom-right-nav-item"><img src="../../images/weChat.png" class="custom-nav-right-img"></a>
    <a class="custom-right-nav-item"><img src="../../images/APP.png" class="custom-nav-right-img"></a>
</div>

<script src="../../js/custom.js"></script>
<script>
    //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element','layer','form'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var form = layui.form;
    });
</script>

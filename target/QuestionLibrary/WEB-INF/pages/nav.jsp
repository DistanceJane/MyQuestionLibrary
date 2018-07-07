<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<div class="layui-layout layui-layout-admin custom-fix-top">
    <div class="layui-header">
        <div class="layui-logo">在线试题库</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">首页</a></li>
            <li class="layui-nav-item"><a href="">题库</a></li>
            <li class="layui-nav-item"><a href="">笔记</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">后台管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="">用户管理</a></dd>
                    <dd><a href="">角色授权</a></dd>
                    <dd><a href="">权限分配</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="">搜索</a></li>
            <li class="layui-nav-item"><a href="">消息</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    可乐
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">个人主页</a></dd>
                    <dd><a href="">账号设置</a></dd>
                    <dd><a href="">我的成就</a></dd>
                    <dd><a href="">退出登录</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">注销</a></li>
            <a href="" class="layui-btn layui-btn-radius layui-btn-danger">登录/注册</a>
        </ul>
    </div>
</div>
<div class="custom-right-nav">
    <a class="custom-right-nav-item" id="back_to_top"><img src="${pageContext.request.contextPath}/images/backToTop.png" class="custom-nav-right-img"></a>
    <a class="custom-right-nav-item"><img src="${pageContext.request.contextPath}/images/feedback.png" class="custom-nav-right-img"></a>
    <a class="custom-right-nav-item"><img src="${pageContext.request.contextPath}/images/weChat.png" class="custom-nav-right-img"></a>
    <a class="custom-right-nav-item"><img src="${pageContext.request.contextPath}/images/APP.png" class="custom-nav-right-img"></a>
</div>

<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap-icheck/square/green.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-icheck/js/icheck.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>我的主页</title>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="custom-body">
    <div class="custom-container">
        <div class="custom-panel">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="custom-my-info">
                        <div class="layui-row">
                            <div class="layui-col-md2 text-center">
                                <img src="${pageContext.request.contextPath}/images/you.jpg" class="custom-my-info-photo img-circle">
                            </div>
                            <div class="layui-col-md4">
                                <div>
                                    <a data-toggle="tooltip" title="小居居">${sessionScope.user.username}</a>
                                </div>

                                <h5>${sessionScope.user.school}</h5>
                            </div>
                            <div class="layui-col-md4"><p>孤独是人生该有的觉悟。</p></div>
                            <div class="layui-col-md2 text-center">
                                <div class="layui-form-item">
                                    <a href="#info" class=" layui-btn layui-btn-lg" id="myInfo">个人详情</a>
                                </div>
                                <div class="layui-form-item">
                                    <a href="#setInfo" class=" layui-btn layui-btn-lg" id="setInfo">编辑资料</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-row">
            <div class="layui-col-md3">
                <div class="layui-row">
                    <div class="custom-panel">
                        <div class="layui-card">
                            <div class="layui-card-header">
                                <a id="menu-home" href="#home" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/home.png">成就
                                </a>
                            </div>
                            <div class="layui-card-header">
                                <a id="menu-library" href="#library" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/lib.png">题库
                                </a>
                            </div>
                            <div class="layui-card-header">
                                <a id="menu-exercise" href="#exercise" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/icon_exercise.png">刷题
                                </a>
                            </div>
                            <div class="layui-card-header">
                                <a  id="menu-failure" href="#failure" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/unpassed.png">错题
                                </a>
                            </div>
                            <div class="layui-card-header" >
                                <a id="menu-paper" href="#paper" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/icon_paper.png">试卷
                                </a>

                            </div>
                            <div class="layui-card-header">
                                <a id="menu-note" href="#note" style="text-decoration: none" >
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/icon_note.png">笔记
                                </a>
                            </div>
                            <div class="layui-card-header">
                                <a id="menu-info" href="#info" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/icon_info.png">基本资料
                                </a>

                            </div>
                            <div class="layui-card-header">
                                <a id="menu-setting" href="#setting" style="text-decoration: none">
                                    <img class="custom-left-menu-img" src="${pageContext.request.contextPath}/images/icon_setting.png">设置
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="layui-col-md9">
                <div id="container" class="custom-panel">
                    <%---------------------------------------------------------------------------------%>
                    <%---------------------------------------------------------------------------------%>
                    <%-------------------------------加载的内容出现在这里------------------------------%>
                    <%---------------------------------------------------------------------------------%>
                    <%---------------------------------------------------------------------------------%>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>

</body>
<script>
    $(document).ready(function () {
        $("#container").load("${pageContext.request.contextPath}/personal/recorder.do");
        initMenu();
    });

    function  initMenu() {
        $("#menu-home").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/recorder.do");
        });

        $("#menu-library").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/library.do");
        });

        $("#menu-exercise").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/exercise.do");
        });

        $("#menu-failure").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/failure.do");
        });

        $("#menu-paper").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/paper.do");
        });

        $("#menu-note").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/note.do");
        });

        $("#menu-info").click(function () {
            $("#container").load("${pageContext.request.contextPath}/personal/info.do");
        });

        $("#menu-setting").click(function (){
            $("#container").load("${pageContext.request.contextPath}/personal/setting.do");
        });

        $("#myInfo").click(function (){
            $("#container").load("${pageContext.request.contextPath}/personal/info.do");
        });

        $("#setInfo").click(function (){
            $("#container").load("${pageContext.request.contextPath}/personal/setInfo.do");
        });
    }
</script>
</html>

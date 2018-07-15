<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:36
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
    <script src="${pageContext.request.contextPath}/bootstrap-icheck/js/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>试卷练习</title>
</head>
<body>

<%@include file="nav.jsp"%>
<div class="custom-body">
<div class="custom-container">
    <div class="layui-row">
        <div class="layui-col-md9">
            <div>
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <img src="${pageContext.request.contextPath}/images/face.png" class="custom-question-type-img">
                            <span class="custom-question-type"><strong>[单选题]</strong></span>
                        </div>
                        <div class="layui-card-body">
                            <p>${question.title}</p>
                            <c:forEach items="${question.options}" var="option">
                                <p>${option.header}、${option.content}</p>
                            </c:forEach>
                        </div>
                        <div class="layui-card-header">
                            <div class="layui-row">
                                <div class="layui-col-md4">
                                    正确答案
                                    <c:forEach items="${question.options}" var="opt">
                                        <c:if test="${opt.correct == 1}">
                                            ${opt.header}、
                                        </c:if>
                                    </c:forEach>
                                </div>
                                <div class="layui-col-md4">
                                    你的答案${userAnswer}
                                </div>
                                <div class="layui-col-md4">
                                    <button class="layui-btn">添加笔记</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <img src="${pageContext.request.contextPath}/images/question_notes.png" class="custom-question-type-img">
                            <span class="custom-question-type"><strong>3条笔记</strong></span>
                        </div>
                        <div class="layui-card-body">
                            <div class="custom-speaker-panel">
                                <c:forEach items="${notes}" var="note">
                                    <div class="layui-row">
                                        <div class="custom-speaker">
                                            <img class="custom-speaker-img" src="${pageContext.request.contextPath}/images/you.jpg">
                                            <h6 class="custom-text-center">${note.user.username}</h6>
                                        </div>
                                        <div class="custom-speaker-text">
                                            <img src="${pageContext.request.contextPath}/images/like.png" class="custom-speaker-like">
                                            <span>(${note.like})</span>
                                            <p>
                                                    ${note.content}
                                            </p>
                                            <span class="custom-note-datetime"><strong>发布于${note.time}</strong></span>
                                        </div>

                                    </div>
                                </c:forEach>
                                <div class="custom-horizon-box">
                                    <div class="custom-horizon-center">
                                        <div id="page"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="custom-panel">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <textarea id="share_notes" style="display: none;"></textarea>
                        <div class="layui-row"><button class="layui-btn custom-note-submit">分享提交</button></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-md3">
            <div class="custom-panel">
                <div class="layui-card">
                    <div class="layui-card-header">问题信息</div>
                    <div class="layui-card-body">
                        <div>
                            <span class="custom-upload-label">知识点：</span><span
                                class="custom-home-username">${question.chapter.chapterName}</span>
                        </div>
                        <div>
                            <span class="custom-upload-label">上传者：</span><span class="custom-home-username">${question.user.username}</span>
                        </div>
                        <div>
                            <span class="custom-upload-label">难度：</span><span class="custom-home-username">${question.level}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<%@include file="footer.jsp"%>
</body>
<script>
    //注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
    layui.use(['element','laypage','layedit'], function () {
        var element = layui.element;
        var laypage = layui.laypage;
        var layedit = layui.layedit;

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: 50 //数据总数，从服务端得到
        });

        layedit.build('share_notes',{
            height: 140
        }); //建立编辑器
    });

    $(document).ready(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
            increaseArea: '20%' // optional
        });
    });
</script>
</html>

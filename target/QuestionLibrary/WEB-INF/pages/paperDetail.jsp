<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/17
  Time: 3:02
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
<%@include file="nav.jsp" %>
<div class="custom-body">
    <div class="custom-container">
        <div class="custom-panel">
            <div class="layui-card">
                <%--=========================================================================--%>
                <c:forEach items="${choiceQuestions}" var="cq">
                    <div class="layui-card-header">
                        <div class="layui-row">
                            <img src="${pageContext.request.contextPath}/images/face.png"
                                 class="custom-question-type-img">
                            <span class="custom-question-type"><strong>[选择题]&nbsp;&nbsp;(${cq.score}分)</strong></span>
                        </div>
                    </div>
                    <div class="layui-card-body">
                        <div class="layui-row">
                            <p>${cq.choice.title}</p>
                            <c:forEach items="${cq.choice.options}" var="option">
                                <p>${option.header}、${option.content}</p>
                            </c:forEach>
                            <div class="layui-card-header">
                                <div class="layui-row">
                                    <div class="layui-col-md4">
                                        正确答案
                                        <c:forEach items="${cq.choice.options}" var="opt">
                                            <c:if test="${opt.correct == 1}">
                                                ${opt.header}、
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="layui-col-md4">
                                        你的答案${cq.myAnswer}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--选择题--%>
                </c:forEach>
                <c:forEach items="${judgementQuestions}" var="jq">
                    <div class="layui-card-header">
                        <div class="layui-row">
                            <img src="${pageContext.request.contextPath}/images/face.png"
                                 class="custom-question-type-img">
                            <span class="custom-question-type"><strong>[判断题]&nbsp;&nbsp;(${jq.score}分)</strong></span>
                        </div>
                    </div>
                    <div class="layui-card-body">
                        <div class="layui-row">
                                <%--判断题--%>
                            <p>${jq.judgement.title}</p>
                            <div class="layui-card-header">
                                <div class="layui-row">
                                    <div class="layui-col-md4">
                                        正确答案
                                        <c:choose>
                                            <c:when test="${jq.judgement.answer == 1}">[正确]</c:when>
                                            <c:otherwise>[错误]</c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="layui-col-md4">
                                        你的答案
                                        <c:choose>
                                            <c:when test="${jq.myAnswer == 1}">
                                                [正确]
                                            </c:when>
                                            <c:otherwise>[错误]</c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                                <%--判断题--%>
                        </div>
                    </div>
                </c:forEach>
                <c:forEach items="${shorterQuestions}" var="sq">
                    <div class="layui-card-header">
                        <div class="layui-row">
                            <img src="${pageContext.request.contextPath}/images/face.png"
                                 class="custom-question-type-img">
                            <span class="custom-question-type"><strong>[判断题]&nbsp;&nbsp;(${sq.score}分)</strong></span>
                        </div>
                    </div>
                    <div class="layui-card-body">
                        <div class="layui-row">
                            <p>${sq.shorter.title}</p>
                            <div class="layui-row">
                                <p>[参考答案]&nbsp;&nbsp;&nbsp;&nbsp;
                                        ${sq.shorter.answer}</p>
                            </div>
                            <div class="layui-row">
                                <p>[你的答案]&nbsp;&nbsp;&nbsp;&nbsp;
                                        ${sq.myAnswer}
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <%--==================================================================================--%>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
<script>

</script>
</html>

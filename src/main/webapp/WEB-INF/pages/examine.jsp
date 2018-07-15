<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:31
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
            <div class="layui-col-md3">
                <div class="custom-bg-dark">
                    <p class="custom-paper-title">${sessionScope.subject}练习试卷</p>
                </div>
            </div>
            <div class="layui-col-md9">
                <div class="custom-bg-black">
                    <div class="custom-shift-down-15">
                        <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                            <div class="layui-progress-bar layui-bg-green" lay-percent="${questionNo}/${count}"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-card">
            <div class="layui-card-header">
                <img src="${pageContext.request.contextPath}/images/face.png" class="custom-question-type-img">
                <span class="custom-question-type"><strong>[
                    <c:choose>
                        <c:when test="${type == 1}">
                            <c:choose>
                                <c:when test="${choice.multiple == 0}">
                                    单选题
                                </c:when>
                                <c:otherwise>
                                    多选题
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                        <c:when test="${type == 2}">
                                    判断题
                        </c:when>
                        <c:when test="${type == 3}">
                                    简答题
                        </c:when>
                    </c:choose>
                ]</strong></span></div>
            <div class="layui-card-body">
                <c:choose>
                    <c:when test="${type == 1}">
                        <c:choose>
                            <c:when test="${choice.multiple == 1}">
                                <%--多项选择题的答题面板 start--%>
                                <form action="${pageContext.request.contextPath}/paper/commitChoice.do" method="post">
                                    <input type="hidden" name="questionNo" value="${questionNo}">
                                    <input type="hidden" name="questionId" value="${choice.id}">
                                    <p>${choice.title}</p>
                                    <c:forEach items="${choice.options}" var="option">
                                        <div class="custom-question-option">
                                            <input type="checkbox" name="optionId" value="${option.id}"><span
                                                class="custom-question-option-text">${option.header}、${option.content}</span>
                                        </div>
                                    </c:forEach>
                                    <div class="custom-super-divider"></div>
                                    <div class="row">
                                        <div class="layui-col-md6">
                                            <p class="custom-text-padding">答题卡</p>
                                        </div>
                                        <div class="layui-col-md3 layui-col-md-offset3">
                                            <c:choose>
                                                <c:when test="${questionNo < count}">
                                                    <button class="layui-btn layui-btn-danger">马上交卷</button>
                                                    <button class="layui-btn" type="submit">下一题</button>
                                                </c:when>
                                                <c:otherwise>
                                                    <button class="layui-btn layui-btn-danger" type="submit">交卷</button>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </form>
                                <%--多项选择题的答题面板 end--%>
                            </c:when>
                            <c:otherwise>
                                <%--单向选择题的答题面板 start--%>
                                <form action="${pageContext.request.contextPath}/paper/commitChoice.do" method="post">
                                    <input type="hidden" name="questionNo" value="${questionNo}">
                                    <input type="hidden" name="questionId" value="${choice.id}">
                                    <p>${choice.title}</p>
                                    <c:forEach items="${choice.options}" var="option">
                                        <div class="custom-question-option">
                                            <input type="radio" name="optionId" value="${option.id}"><span
                                                class="custom-question-option-text">${option.header}、${option.content}</span>
                                        </div>
                                    </c:forEach>
                                    <div class="custom-super-divider"></div>
                                    <div class="row">
                                        <div class="layui-col-md6">
                                            <p class="custom-text-padding">答题卡</p>
                                        </div>
                                        <div class="layui-col-md3 layui-col-md-offset3">
                                            <c:choose>
                                                <c:when test="${questionNo < count}">
                                                    <button class="layui-btn layui-btn-danger">马上交卷</button>
                                                    <button class="layui-btn" type="submit">下一题</button>
                                                </c:when>
                                                <c:otherwise>
                                                    <button class="layui-btn layui-btn-danger" type="submit">交卷</button>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </form>
                                <%--单向选择题的答题面板 end--%>
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                    <c:when test="${type == 2}">
                        <%--判断题的答案面板 start--%>
                        <form action="${pageContext.request.contextPath}/paper/commitJudgement.do" method="post">
                            <input type="hidden" name="questionNo" value="${questionNo}">
                            <input type="hidden" name="questionId" value="${judgement.id}">
                            <p>${judgement.title}</p>
                            <div class="custom-question-option">
                                <input type="radio" name="myAnswer" value="1"><span
                                    class="custom-question-option-text">正确</span>
                            </div>
                            <div class="custom-question-option">
                                <input type="radio" name="myAnswer" value="0"><span
                                    class="custom-question-option-text">错误</span>
                            </div>
                            <div class="custom-super-divider"></div>
                            <div class="row">
                                <div class="layui-col-md6">
                                    <p class="custom-text-padding">答题卡</p>
                                </div>
                                <div class="layui-col-md3 layui-col-md-offset3">
                                    <c:choose>
                                        <c:when test="${questionNo < count}">
                                            <button class="layui-btn layui-btn-danger">马上交卷</button>
                                            <button class="layui-btn" type="submit">下一题</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="layui-btn layui-btn-danger" type="submit">交卷</button>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </form>
                        <%--判断题的答案面板 end--%>
                    </c:when>
                    <c:when test="${type == 3}">
                        <%--简答题的答题面板 start--%>
                        <form action="${pageContext.request.contextPath}/paper/commitShorter.do" method="post">
                            <input type="hidden" name="questionNo" value="${questionNo}">
                            <input type="hidden" name="questionId" value="${shorter.id}">
                            <p>${shorter.title}</p>
                            <div class="custom-question-option">
                                <textarea class="layui-textarea" name="myAnswer"></textarea>
                            </div>
                                <%--简答的答题面板 end--%>
                            <div class="custom-super-divider"></div>
                            <div class="row">
                                <div class="layui-col-md6">
                                    <p class="custom-text-padding">答题卡</p>
                                </div>
                                <div class="layui-col-md3 layui-col-md-offset3">
                                    <c:choose>
                                        <c:when test="${questionNo < count}">
                                            <button class="layui-btn layui-btn-danger">马上交卷</button>
                                            <button class="layui-btn" type="submit">下一题</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="layui-btn layui-btn-danger" type="submit">交卷</button>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </form>
                    </c:when>
                </c:choose>

                <%--答题卡面板 start--%>
                <div class="layui-row">
                    <c:forEach begin="1" end="${count}" var="i">
                        <div class="custom-cube"><a style="text-decoration: none;color: #5e5e5e;" href="${pageContext.request.contextPath}/paper/test.do?questionNo=${i}">${i}</a></div>
                    </c:forEach>
                </div>
                <%--答题卡面板end--%>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
<script>
    //注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
    layui.use('element', function () {
        var element = layui.element;
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

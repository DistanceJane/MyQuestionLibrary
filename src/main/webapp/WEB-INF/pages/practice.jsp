<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/10
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="../../layui/layui.css" rel="stylesheet">
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap-icheck/square/green.css" rel="stylesheet">
    <link href="../../css/custom.css" rel="stylesheet">
    <script src="../../jquery/jquery.min.js"></script>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-icheck/js/icheck.js"></script>
    <script src="../../layui/layui.js"></script>
    <title>练习</title>
</head>
<body>

<%@include file="nav.jsp"%>

<div class="custom-body">
    <div class="custom-container">
        <div class="layui-card">
            <div class="layui-card-header">
                <img src="../../images/question_notes.png" class="custom-question-type-img">
                <span class="custom-question-type"><strong>题库练习</strong></span>
            </div>
            <div class="layui-card-body">
                <c:forEach items="${libraries}" var="library">
                    <div class="custom-panel-box">
                        <div class="custom-panel-box-header">
                            <div class="layui-row">
                                <div class="layui-col-md3"><h4><strong>${library.subject.subjectName}</strong></h4></div>
                                <div class="layui-col-md1 layui-col-md-offset8"><input type="checkbox"><span
                                        class="custom-check-text">全选</span></div>
                            </div>
                        </div>
                        <div class="custom-panel-box-body">
                            <div class="layui-row">
                                <c:forEach items="${library.subject.chapters}" var="chapter">
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox">
                                                    <span class="custom-check-text"><strong><div class="custom-text-ellipsis-sm">${chapter.chapterName}</div></strong>
                                        </span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="15/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    <div class="custom-text-center">36&nbsp;/&nbsp;378</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="custom-margin-side">
                <form action="#" method="post">
                    <div class="custom-padding-sm">
                        <span class="custom-check-text-sm custom-margin-side-sm">难度系数</span>
                        <span class="custom-check-text-sm"><div id="level"></div></span>
                    </div>
                    <div class="custom-padding-sm">
                        <span class="custom-check-text-sm custom-margin-side-sm">出题来源</span>
                        <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                          name="question_from"
                                                                                          value="nan">只出错题</span>
                        <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                          name="question_from"
                                                                                          value="nan">只出新题</span>
                        <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                          name="question_from"
                                                                                          value="nan">来源不限</span>
                    </div>
                    <div class="custom-padding-sm">
                        <span class="custom-check-text-sm custom-margin-side-sm">题目数量</span>
                        <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                          name="question_number"
                                                                                          value="nan">10道题</span>
                        <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                          name="question_number"
                                                                                          value="nan">20道题</span>
                        <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                          name="question_number"
                                                                                          value="nan">30道题</span>
                    </div>
                    <div class="custom-bg-default">
                        <div class="layui-row">
                            <div class="layui-col-md10">

                                <span style="line-height: 60px">已选择:</span>
                                <span class="layui-breadcrumb" lay-separator="|">
                                                    <a href="">编程语言</a>
                                                    <a href="">三星难度</a>
                                                    <a href="">错题+新题</a>
                                                    <a href="">30道题</a>
                                        </span>
                            </div>
                            <div class="layui-col-md2">
                                <button class="layui-btn custom-vertical-button-center" style="margin-top: 10px">
                                    生成试卷
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'form', 'laypage', 'rate'], function () {
        var element = layui.element;
        var form = layui.form;
        var laypage = layui.laypage;
        var rate = layui.rate;
        element.render();

        //…

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            , count: 50 //数据总数，从服务端得到
            , limit: 8
        });

        //渲染一个rate
        var ins1 = rate.render({
            elem: '#level'  //绑定元素
        });

        ins1.render();
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

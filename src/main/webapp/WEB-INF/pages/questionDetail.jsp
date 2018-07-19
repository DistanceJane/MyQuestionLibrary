<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/15
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="custom-panel">
    <div class="layui-card">
        <%--=========================================================================--%>
            <div class="layui-card-header">
                <div class="layui-row">
                    <img src="${pageContext.request.contextPath}/images/face.png" class="custom-question-type-img">
                    <span class="custom-question-type"><strong>[
                <c:choose>
                    <c:when test="${type == 1}">
                        <c:choose>
                            <c:when test="${choice.multiple == 1}">
                                多选题
                            </c:when>
                            <c:otherwise>
                                单选题
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
            }</strong></span>
                </div>
            </div>
            <%--==================================================================================--%>
            <div class="layui-card-body">
                <div class="layui-row">
                    <c:choose>
                        <%--选择题--%>
                        <c:when test="${type == 1}">
                            <p>${choice.title}</p>
                            <c:forEach items="${choice.options}" var="option">
                                <p>${option.header}、${option.content}</p>
                            </c:forEach>
                            <div class="layui-card-header">
                                <div class="layui-row">
                                    <div class="layui-col-md4">
                                        正确答案
                                        <c:forEach items="${choice.options}" var="opt">
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
                        </c:when>
                        <%--选择题--%>

                        <%--判断题--%>
                        <c:when test="${type == 2}">
                            <p>${judgement.title}</p>
                            <div class="layui-card-header">
                                <div class="layui-row">
                                    <div class="layui-col-md4">
                                        正确答案
                                        <c:choose>
                                            <c:when test="${judgement.answer == 1}">[正确]</c:when>
                                            <c:otherwise>[错误]</c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="layui-col-md4">
                                        你的答案
                                        <c:choose>
                                            <c:when test="${userAnswer == 1}">
                                                [正确]
                                            </c:when>
                                            <c:otherwise>[错误]</c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="layui-col-md4">
                                        <button class="layui-btn">添加笔记</button>
                                    </div>
                                </div>
                            </div>
                        </c:when>
                        <%--判断题--%>

                        <%--简答题--%>
                        <c:when test="${type == 3}">
                            <p>${shorter.title}</p>
                            <div class="layui-row">
                                <p>[参考答案]&nbsp;&nbsp;&nbsp;&nbsp;
                                        ${shorter.answer}</p>
                            </div>
                            <div class="layui-row">
                                <p>[你的答案]&nbsp;&nbsp;&nbsp;&nbsp;
                                        ${userAnswer}
                                </p>
                            </div>
                        </c:when>
                        <%--简答题--%>
                    </c:choose>
                </div>
            </div>
    </div>
</div>

<div class="custom-panel">
    <div class="layui-card">
        <div class="layui-card-header">
            <img src="${pageContext.request.contextPath}/images/question_notes.png" class="custom-question-type-img">
            <span class="custom-question-type"><strong>${noteCount}条笔记</strong></span>
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
                            <p>${note.content}</p>
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

<div class="custom-panel">
    <div class="layui-card">
        <div class="layui-card-body">
            <textarea id="share_notes" style="display: none;"></textarea>
            <div class="layui-row">
                <button class="layui-btn custom-note-submit">分享提交</button>
            </div>
        </div>
    </div>
</div>

<script>
    //注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
    layui.use(['element', 'laypage', 'layedit'], function () {
        var element = layui.element;
        var laypage = layui.laypage;
        var layedit = layui.layedit;

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            , count: 50 //数据总数，从服务端得到
        });

        layedit.build('share_notes', {
            height: 140
        }); //建立编辑器
    });

    $(document).ready(function () {

    });
</script>
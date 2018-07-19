<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-card">
    <div class="layui-card-body">
        <div class="layui-row">
            <div class="layui-col-md2 text-center">
                <a href="#" class="custom-tab-library-li" style="text-decoration: none">我的试卷</a>
            </div>
            <hr class="layui-bg-green custom-divider">
        </div>
        <div class="layui-row">
            <div class="layui-col-md3">
                <span class="custom-text-sm-left">练习的试卷(${paperCount})</span>
            </div>
            <div class="layui-col-md3 layui-col-md-offset6">
                <form class="layui-form">
                    <div class="layui-form-item pull-right">
                        <label class="layui-form-label" for="read" style="width: 100px">只看已完成</label>
                        <input type="checkbox" name="zzz" id="read" lay-skin="switch" lay-text="on|off">
                    </div>
                </form>
            </div>
        </div>
        <div class="layui-row">

            <c:forEach items="${papers}" var="paper">
                <div class="layui-col-md3">
                    <div class="layui-card custom-panel-border">
                        <div class="layui-card-header">
                            <p class="custom-text-sm custom-text-center">${paper.library.subject.subjectName}</p>
                        </div>
                        <div class="layui-card-body">
                            <div class="custom-img">
                                <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                            </div>
                            <div class="custom-padding-box">
                                <div class="custom-text-xs custom-text-center"><i
                                        class="layui-icon layui-icon-log"
                                        style="font-size: 16px"></i>创建时间:${paper.createTime}
                                </div>
                                <c:choose>
                                <c:when test="${paper.state == 1}">
                                    <div class="custom-text-xs custom-text-center"><i
                                            class="layui-icon layui-icon-flag"
                                            style="font-size: 16px"></i>得分:${paper.score}
                                    </div>
                                    <div class="custom-horizon-box">
                                        <div class="custom-horizon-center">
                                        <span class="layui-breadcrumb custom-show" lay-separator="|">
                                            <form method="post" action="${pageContext.request.contextPath}/paper/detail.do">
                                                <input type="hidden" name="paperId" value="${paper.id}">
                                                <button type="submit" class="layui-btn layui-btn-xs">查看试卷</button>
                                            </form>

                                        </span>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                <div class="custom-horizon-box">
                                    <div class="custom-horizon-center">
                                        <span class="layui-breadcrumb custom-show" lay-separator="|">
                                            <form method="post" action="${pageContext.request.contextPath}/paper/continue.do">
                                                <input type="hidden" name="paperId" value="${paper.id}">
                                                <button type="submit" class="layui-btn layui-btn-xs layui-btn-danger">继续完成</button>
                                            </form>
                                        </span>
                                    </div>
                                </div>
                            </c:otherwise>
                            </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>
        <div class="custom-super-divider"></div>
        <div class="custom-horizon-box">
            <div class="custom-horizon-center" id="page">

            </div>
        </div>
    </div>
</div>


<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'form', 'laypage'], function () {
        var laypage = layui.laypage;
        var element = layui.element;
        var form = layui.form;

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            , count: 50 //数据总数，从服务端得到
            , limit: 8
        });
    });
</script>

<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/16
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-collapse" lay-accordion lay-filter="allLib" style="background-color: #ffffff">
    <c:forEach items="${subjects}" var="subject">
        <div class="layui-colla-item">
            <h2 class="layui-colla-title"><span>${subject.subjectName}</span>
                <c:if test="${subject.export == 1}">
                    <span class="layui-badge layui-bg-black" style="margin-right:50px ">已添加</span>
                </c:if>
            </h2>
            <div class="layui-colla-content">
                <table class="table">
                    <thead>
                    <tr>
                        <th>章节</th>
                        <th>题数</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${subject.chapters}" var="chapter">
                        <tr>
                            <td>${chapter.chapterName}</td>
                            <td>${chapter.sumQuestion}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="layui-row">
                    <c:if test="${subject.export == 0}">
                        <form action="#" method="post" class="layui-form">
                            <input type="hidden" name="subjectId" value="${subject.id}" class="layui-input">
                            <button class="layui-btn layui-btn-xs pull-right" lay-submit lay-filter="importLib">
                                <i class="layui-icon">&#xe640;</i>导入题库
                            </button>
                        </form>
                    </c:if>
                </div>
            </div>
        </div>
    </c:forEach>
</div>


<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element','layer','form'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var form = layui.form;
        element.init();

        form.on('submit(importLib)', function (data) {
            layer.msg(JSON.stringify(data.field));
            $.ajax({
                async : false,
                url : "${pageContext.request.contextPath}/library/import.do",
                data : data.field,
                success : function (value) {
                    layer.msg(value.msg);
                }
            });
        })
    });
</script>

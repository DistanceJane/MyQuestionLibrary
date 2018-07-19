<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/16
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-collapse" lay-accordion lay-filter="myLib" style="background-color: #ffffff">
    <c:forEach items="${libraries}" var="library">
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">${library.subject.subjectName}</h2>
            <div class="layui-colla-content">
                <table class="table">
                    <thead>
                    <tr>
                        <th>章节</th>
                        <th>题数</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${library.subject.chapters}" var="chapter">
                        <tr>
                            <td>${chapter.chapterName}</td>
                            <td>${chapter.sumQuestion}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="layui-row">
                    <form action="${pageContext.request.contextPath}/library/remove.do" method="post" class="layui-form">
                        <input type="hidden" name="libraryId" value="${library.id}">
                        <button class="layui-btn layui-btn-xs pull-right" lay-submit lay-filter="removeLib">
                            <i class="layui-icon">&#xe640;</i>移除试题库
                        </button>
                    </form>

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

        form.on('submit(removeLib)',function (data) {
            $.ajax({
                async : false,
                url : "${pageContext.request.contextPath}/library/remove.do",
                data : data.field,
                success : function (value) {
                    layer.msg(value.msg);
                }
            });
            return true;
        });
    });


</script>
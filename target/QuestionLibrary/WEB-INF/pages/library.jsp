<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-card">
    <div class="layui-card-body">
        <div class="layui-row">
            <div class="layui-col-md2 text-center">
                <a href="#" class="custom-tab-library-li" style="text-decoration: none">我的试题库</a>
            </div>
            <div class="layui-col-md2 text-center">
                <a href="#" class="custom-tab-library-li" style="text-decoration: none">所有试题库</a>
            </div>
            <hr class="layui-bg-green custom-divider">
        </div>
        <div class="layui-row">
            <div class="layui-card">
                <div class="layui-card-body">

                </div>
            </div>
        </div>
    </div>
</div>

<div class="panel-group" id="accordion_mine">
    <c:forEach items="${libraries}" var="library">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion_mine"
                       href="#accordion_mine_${library.id}" style="text-decoration: none">
                            ${library.subject.subjectName}
                    </a>
                </h4>
            </div>
            <div id="accordion_mine_${library.id}" class="panel-collapse collapse">
                <div class="panel-body">
                    <div class="layui-row">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>章节</th>
                                <th>通过数/总题数</th>
                                <th>正确率</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${library.subject.chapters}" var="chapter">
                                <tr>
                                    <td>${chapter.chapterName}</td>
                                    <td>35/35</td>
                                    <td>68%</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="layui-row">
                        <button class="layui-btn layui-btn-xs pull-right">
                            <i class="layui-icon">&#xe640;</i>移除本学科
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });
</script>


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

                            <%--<tr>--%>
                                <%--<td>数组</td>--%>
                                <%--<td>56/80</td>--%>
                                <%--<td>60%</td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td>方法</td>--%>
                                <%--<td>92/198</td>--%>
                                <%--<td>78%</td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td>集合</td>--%>
                                <%--<td>98/200</td>--%>
                                <%--<td>58%</td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td>泛型</td>--%>
                                <%--<td>134/134</td>--%>
                                <%--<td>50%</td>--%>
                            <%--</tr>--%>
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






    <%--<div class="panel panel-success">--%>
        <%--<div class="panel-heading">--%>
            <%--<h4 class="panel-title">--%>
                <%--<a data-toggle="collapse" data-parent="#accordion"--%>
                   <%--href="#collapseTwo" style="text-decoration: none">--%>
                    <%--计算机网络--%>
                <%--</a>--%>
            <%--</h4>--%>
        <%--</div>--%>
        <%--<div id="collapseTwo" class="panel-collapse collapse">--%>
            <%--<div class="panel-body">--%>
                <%--<div class="layui-row">--%>
                    <%--<table class="table">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                            <%--<th>章节</th>--%>
                            <%--<th>通过数/总题数</th>--%>
                            <%--<th>正确率</th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--<tr>--%>
                            <%--<td>物理层</td>--%>
                            <%--<td>35/35</td>--%>
                            <%--<td>68%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>数据链路层</td>--%>
                            <%--<td>56/80</td>--%>
                            <%--<td>60%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>网络层</td>--%>
                            <%--<td>92/198</td>--%>
                            <%--<td>78%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>运输层</td>--%>
                            <%--<td>98/200</td>--%>
                            <%--<td>58%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>应用层</td>--%>
                            <%--<td>134/134</td>--%>
                            <%--<td>50%</td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>
                    <%--</table>--%>
                <%--</div>--%>
                <%--<div class="layui-row">--%>
                    <%--<button class="layui-btn layui-btn-xs pull-right">--%>
                        <%--<i class="layui-icon">&#xe640;</i>移除本学科--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="panel panel-success">--%>
        <%--<div class="panel-heading">--%>
            <%--<h4 class="panel-title">--%>
                <%--<a data-toggle="collapse" data-parent="#accordion"--%>
                   <%--href="#collapseThree" style="text-decoration: none">--%>
                    <%--计算机操作系统--%>
                <%--</a>--%>
            <%--</h4>--%>
        <%--</div>--%>
        <%--<div id="collapseThree" class="panel-collapse collapse">--%>
            <%--<div class="panel-body">--%>
                <%--<div class="layui-row">--%>
                    <%--<table class="table">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                            <%--<th>章节</th>--%>
                            <%--<th>通过数/总题数</th>--%>
                            <%--<th>正确率</th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--<tr>--%>
                            <%--<td>操作系统引论</td>--%>
                            <%--<td>35/35</td>--%>
                            <%--<td>68%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>进程的描述与控制</td>--%>
                            <%--<td>56/80</td>--%>
                            <%--<td>60%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>处理机调度与死锁</td>--%>
                            <%--<td>92/198</td>--%>
                            <%--<td>78%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>存储器管理</td>--%>
                            <%--<td>98/200</td>--%>
                            <%--<td>58%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>虚拟存储器</td>--%>
                            <%--<td>134/134</td>--%>
                            <%--<td>50%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>输入输出系统</td>--%>
                            <%--<td>87/114</td>--%>
                            <%--<td>50%</td>--%>
                        <%--</tr>--%>
                        <%--<tr>--%>
                            <%--<td>文件管理</td>--%>
                            <%--<td>12/184</td>--%>
                            <%--<td>50%</td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>
                    <%--</table>--%>
                <%--</div>--%>
                <%--<div class="layui-row">--%>
                    <%--<button class="layui-btn layui-btn-xs pull-right">--%>
                        <%--<i class="layui-icon">&#xe640;</i>移除本学科--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
</div>

<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>


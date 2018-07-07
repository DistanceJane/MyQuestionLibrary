<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/layui/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>题库</title>
</head>
<body>
<div class="custom-container">
    <div class="layui-row">
        <div class="custom-panel">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="custom-my-info">
                        <div class="layui-row">
                            <div class="layui-col-md2 text-center">
                                <img src="${pageContext.request.contextPath}/images/you.jpg" class="custom-my-info-photo img-circle">
                            </div>
                            <div class="layui-col-md4">
                                <div>
                                    <a data-toggle="tooltip" title="小居居">可乐会飞</a>
                                </div>

                                <h5>长沙理工大学</h5>
                            </div>
                            <div class="layui-col-md4"><p>孤独是人生该有的觉悟。</p></div>
                            <div class="layui-col-md2 text-center">
                                <div class="layui-form-item">
                                    <button class=" layui-btn layui-btn-lg">个人详情</button>
                                </div>
                                <div class="layui-form-item">
                                    <button class=" layui-btn layui-btn-lg">编辑资料</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="layui-row">
        <div class="layui-col-md3">
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header"><i class="layui-icon layui-icon-home" style="color: #faa4a4"></i>首页
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-template-1"
                                                          style="color: #acd661"></i>题库
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-edit" style="color: #91ccfa"></i>刷题
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-survey"
                                                          style="color: #cc91fa"></i>错题
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-form" style="color: #fc8443"></i>试卷
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-note" style="color: #e0edf7"></i>笔记
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-username"
                                                          style="color: #f4b621"></i>基本资料
                        </div>
                        <div class="layui-card-header"><i class="layui-icon layui-icon-set" style="color: #83cdbf"></i>设置
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-md9">
            <div class="custom-panel">
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
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-success">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapseOne" style="text-decoration: none">
                                                        Java语言程序设计
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse">
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
                                                            <tr>
                                                                <td>字符串</td>
                                                                <td>35/35</td>
                                                                <td>68%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>数组</td>
                                                                <td>56/80</td>
                                                                <td>60%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>方法</td>
                                                                <td>92/198</td>
                                                                <td>78%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>集合</td>
                                                                <td>98/200</td>
                                                                <td>58%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>泛型</td>
                                                                <td>134/134</td>
                                                                <td>50%</td>
                                                            </tr>
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
                                        <div class="panel panel-success">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapseTwo" style="text-decoration: none">
                                                        计算机网络
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse">
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
                                                            <tr>
                                                                <td>物理层</td>
                                                                <td>35/35</td>
                                                                <td>68%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>数据链路层</td>
                                                                <td>56/80</td>
                                                                <td>60%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>网络层</td>
                                                                <td>92/198</td>
                                                                <td>78%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>运输层</td>
                                                                <td>98/200</td>
                                                                <td>58%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>应用层</td>
                                                                <td>134/134</td>
                                                                <td>50%</td>
                                                            </tr>
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
                                        <div class="panel panel-success">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapseThree" style="text-decoration: none">
                                                        计算机操作系统
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse">
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
                                                            <tr>
                                                                <td>操作系统引论</td>
                                                                <td>35/35</td>
                                                                <td>68%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>进程的描述与控制</td>
                                                                <td>56/80</td>
                                                                <td>60%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>处理机调度与死锁</td>
                                                                <td>92/198</td>
                                                                <td>78%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>存储器管理</td>
                                                                <td>98/200</td>
                                                                <td>58%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>虚拟存储器</td>
                                                                <td>134/134</td>
                                                                <td>50%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>输入输出系统</td>
                                                                <td>87/114</td>
                                                                <td>50%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>文件管理</td>
                                                                <td>12/184</td>
                                                                <td>50%</td>
                                                            </tr>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
</html>

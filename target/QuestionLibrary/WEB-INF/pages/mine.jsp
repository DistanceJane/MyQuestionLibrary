<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:27
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
    <title>我的主页</title>
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
                    <div class="layui-card-header">成就</div>
                    <div class="layui-card-body">
                        <div class="layui-row">
                            <div class="layui-col-md3">
                                <div class="layui-card">
                                    <div class="layui-card-header">
                                        <div class="custom-text-lg">98</div>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-text">条笔记</div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <div class="layui-card">
                                    <div class="layui-card-header">
                                        <div class="custom-text-lg">12</div>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-text">次获赞</div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <div class="layui-card">
                                    <div class="layui-card-header">
                                        <div class="custom-text-lg">128</div>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-text">题正确</div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md3">
                                <div class="layui-card">
                                    <div class="layui-card-header">
                                        <div class="custom-text-lg">200</div>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-text">道题目</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="layui-bg-black custom-divider">
                        <div class="layui-row">
                            <ul class="layui-timeline">
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                                    <div class="layui-timeline-content layui-text">
                                        <h3 class="layui-timeline-title">8月18日</h3>
                                        <p>达成200题成就</p>
                                    </div>
                                </li>
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                                    <div class="layui-timeline-content layui-text">
                                        <h3 class="layui-timeline-title">8月16日</h3>
                                        <p>获得100次点赞</p>
                                    </div>
                                </li>
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                                    <div class="layui-timeline-content layui-text">
                                        <h3 class="layui-timeline-title">8月15日</h3>
                                        <p>
                                            记录了50条笔记
                                        </p>
                                    </div>
                                </li>
                                <li class="layui-timeline-item">
                                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                                    <div class="layui-timeline-content layui-text">
                                        <div class="layui-timeline-title">6月25日</div>
                                        <p>开启刷题之旅</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:28
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
    <title>我的试卷</title>
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
                                <a href="#" class="custom-tab-library-li" style="text-decoration: none">我的试卷</a>
                            </div>
                            <hr class="layui-bg-green custom-divider">
                        </div>
                        <div class="layui-row">
                            <div class="layui-col-md3">
                                <span class="custom-text-sm-left">练习的试卷(52)</span>
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
                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="layui-col-md3">
                                <div class="layui-card custom-panel-border">
                                    <div class="layui-card-header">
                                        <p class="custom-text-sm custom-text-center">计算机网络练习试卷</p>
                                    </div>
                                    <div class="layui-card-body">
                                        <div class="custom-img">
                                            <img src="${pageContext.request.contextPath}/images/paper.png" class="custom-home-img">
                                        </div>
                                        <div class="custom-padding-box">
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-log" style="font-size: 16px"></i>创建时间:2018-06-01
                                            </div>
                                            <div class="custom-text-xs custom-text-center"><i
                                                    class="layui-icon layui-icon-flag" style="font-size: 16px"></i>得分:80
                                            </div>
                                            <div class="custom-super-divider"></div>
                                            <div class="custom-text-center">
                                               <span class="layui-breadcrumb" lay-separator="---">
                                                    <a href="#">完成</a>
                                                    <a href="#">再做一次</a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="custom-super-divider"></div>
                        <div class="custom-horizon-box">
                            <div class="custom-horizon-center" id="page">

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
    layui.use(['element', 'form','laypage'], function () {
        var element = layui.element;
        var form = layui.form;
        var laypage = layui.laypage;
        //…

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: 50 //数据总数，从服务端得到
            ,limit:8
        });
    });
</script>
</html>
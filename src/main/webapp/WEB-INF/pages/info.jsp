<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:23
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
    <title>我的资料</title>
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
                    <div class="layui-card-header">基本信息

                    </div>
                    <div class="layui-card-body">
                        <form class="layui-form" action="">
                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">姓名</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="title" required lay-verify="required" placeholder="请输入姓名"
                                           autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">学校</label>
                                <div class="layui-input-inline">
                                    <select name="city" lay-verify="required">
                                        <option value=""></option>
                                        <option value="0">清华大学</option>
                                        <option value="1">北京大学</option>
                                        <option value="2">浙江大学</option>
                                        <option value="3">复旦大学</option>
                                        <option value="4">长沙理工大学</option>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">学院</label>
                                <div class="layui-input-inline">
                                    <select name="city" lay-verify="required">
                                        <option value=""></option>
                                        <option value="0">计算机与通信工程学院</option>
                                        <option value="1">土木与建筑学院</option>
                                        <option value="2">经济与管理学院</option>
                                        <option value="3">物理与电子信息学院</option>
                                        <option value="4">外国语学院</option>
                                    </select>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">专业</label>
                                <div class="layui-input-inline">
                                    <select name="city" lay-verify="required">
                                        <option value=""></option>
                                        <option value="0">软件工程</option>
                                        <option value="1">网络工程</option>
                                        <option value="2">通信工程</option>
                                        <option value="3">计算机科学与技术</option>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">单选框</label>
                                <div class="layui-input-inline">
                                    <input type="radio" name="sex" value="nan" title="男" checked>
                                    <input type="radio" name="sex" value="nv" title="女">
                                </div>
                            </div>
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label custom-label">个性签名</label>
                                <div class="layui-input-block">
                                    <textarea name="desc" placeholder="快来试试吧！" class="layui-textarea"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn pull-left" lay-submit lay-filter="formDemo">保存</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
<script>
    //Demo
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</html>

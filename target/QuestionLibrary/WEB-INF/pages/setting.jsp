<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:32
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
    <title>设置</title>
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
                    <div class="layui-card-header">
                        更换绑定手机
                    </div>
                    <div class="layui-card-body">
                        <form class="layui-form" action="">
                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">原手机</label>
                                <div class="layui-form-mid layui-word-aux">18274946314</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">新手机</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="phone" required lay-verify="required"
                                           placeholder="请输入新手机号码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">验证码</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="checkedCode" required lay-verify="required"
                                           placeholder="请输入验证码" autocomplete="off" class="layui-input">
                                </div>
                                <div><button class="layui-btn layui-btn-sm">获取验证码</button></div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label"></label>
                                <div class="layui-input-inline">
                                    <input type="button" class="layui-btn btn-block" lay-submit lay-filter="formDemo" value="保存">
                                </div>
                            </div>
                        </form>
                    </div>




                    <div class="layui-card-header">
                        更换绑定邮箱
                    </div>
                    <div class="layui-card-body">
                        <form class="layui-form" action="">
                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">原邮箱</label>
                                <div class="layui-form-mid layui-word-aux">543903836@qq.com</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">新邮箱</label>
                                <div class="layui-input-inline">
                                    <input type="eamil" name="phone" required lay-verify="required"
                                           placeholder="请输入电子邮箱地址" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">验证码</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="checkedCode" required lay-verify="required"
                                           placeholder="请输入验证码" autocomplete="off" class="layui-input">
                                </div>
                                <div><button class="layui-btn layui-btn-sm">获取验证码</button></div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label"></label>
                                <div class="layui-input-inline">
                                    <input type="button" class="layui-btn btn-block" lay-submit lay-filter="formDemo" value="保存">
                                </div>
                            </div>
                        </form>
                    </div>




                    <div class="layui-card-header">
                        更改登录密码
                    </div>
                    <div class="layui-card-body">
                        <form class="layui-form" action="">
                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">原密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" name="phone" required lay-verify="required"
                                           placeholder="请输入原密码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">新密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" name="phone" required lay-verify="required"
                                           placeholder="请输入新密码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label">确认新密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" name="checkedCode" required lay-verify="required"
                                           placeholder="请再次输入新密码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label custom-label"></label>
                                <div class="layui-input-inline">
                                    <input type="button" class="layui-btn btn-block" lay-submit lay-filter="formDemo" value="保存">
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

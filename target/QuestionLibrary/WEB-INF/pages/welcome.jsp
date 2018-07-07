<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/custom.css" rel="stylesheet">
    <link href="../../layui/layui.css" rel="stylesheet">
    <script src="../../jquery/jquery.min.js"></script>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <script src="../../layui/layui.js"></script>
    <title>欢迎登陆-试题库系统</title>
</head>
<body class="custom-body">
<div class="form-pane">
    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li class="custom-tab-li layui-this">登录</li>
            <li class="custom-tab-li">注册</li>
        </ul>
        <div class="layui-tab-content">
            <!--登录模块-->
            <div class="layui-tab-item layui-show custom-tab-item">
                <div class="layui-row">
                    <div class="layui-col-md5 layui-col-md-offset1">
                        <form class="layui-form" action="">
                            <div class="layui-form-item custom-horizon-box">
                                <img src="../../images/you.jpg" class="custom-home-img img-circle">
                            </div>
                            <div class="layui-form-item custom-horizon-box">
                                <label class="layui-form-label custom-label-width-normal" >用户名</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="user.username" required lay-verify="required"
                                           placeholder="请输入账号" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item custom-horizon-box">
                                <label class="layui-form-label custom-label-width-normal">密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" name="user.password" required lay-verify="required"
                                           placeholder="请输入密码" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item custom-horizon-box">
                                <a href="#">忘记密码？</a>
                            </div>
                            <div class="layui-form-item custom-horizon-box">
                                <button class="layui-btn custom-width-half" lay-submit lay-filter="formDemo">登录</button>
                            </div>
                        </form>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">QQ账号登录</div>
                        </div>
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">微博账号登录</div>
                        </div>
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">微信账号登录</div>
                        </div>
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">更多三方账号</div>
                        </div>

                    </div>
                </div>

            </div>

            <!--注册模块-->

            <div class="layui-tab-item custom-tab-item">
                <div class="layui-row">
                    <div class="layui-col-md5 layui-col-md-offset1">
                        <form class="layui-form" action="">
                            <div class="layui-form-item">
                                <div class="layui-col-md2">
                                    <label class="layui-form-label">账号</label>
                                </div>
                                <div class="layui-input-inline">
                                    <input type="text" name="user.username" required lay-verify="required"
                                           placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-col-md2">
                                    <label class="layui-form-label">密码</label>
                                </div>
                                <div class="layui-input-inline">
                                    <input type="password" name="user.password" required lay-verify="required"
                                           placeholder="请输入密码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-col-md2">
                                    <label class="layui-form-label">确认</label>
                                </div>
                                <div class="layui-input-inline">
                                    <input type="password" name="confirmPassword" required lay-verify="required"
                                           placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-col-md2">
                                    <label class="layui-form-label">邮箱</label>
                                </div>
                                <div class="layui-input-inline">
                                    <input type="email" name="user.email" required lay-verify="required"
                                           placeholder="请输入电子邮箱地址" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">辅助文字</div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-col-md2">
                                    <label class="layui-form-label">口令</label>
                                </div>
                                <div class="layui-input-inline">
                                    <input type="text" name="checkedCode" required lay-verify="required"
                                           placeholder="请输入验证码" autocomplete="off" class="layui-input">

                                </div>
                                <div><button class="layui-btn layui-btn-sm">获取验证码</button></div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-input-inline layui-col-lg-offset2">
                                    <button class="layui-btn custom-width-max" lay-submit lay-filter="formDemo">立即注册
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">QQ账号登录</div>
                        </div>
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">微博账号登录</div>
                        </div>
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">微信账号登录</div>
                        </div>
                        <div class="layui-form-item custom-horizon-box">
                            <div class="layui-btn layui-btn-primary custom-width-half">更多三方账号</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'form'], function () {
        var element = layui.element;
        var form = layui.form;

        //…
    });
</script>
</body>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
</html>

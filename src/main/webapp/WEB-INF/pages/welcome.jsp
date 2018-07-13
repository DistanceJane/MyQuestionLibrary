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
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>欢迎登陆-试题库系统</title>
</head>
<body>
<%--nav start--%>
<%@include file="nav.jsp"%>
<%--nav start--%>

<div class="custom-body">
    <div class="form-pane">
        <div class="layui-tab layui-tab-brief">
            <ul class="layui-tab-title">
                <li class="custom-tab-li layui-this">登录</li>
                <li class="custom-tab-li">注册</li>
            </ul>
            <div class="layui-tab-content">
                <!--登录模块  start-->
                <div class="layui-tab-item layui-show custom-tab-item">
                    <div class="layui-row">
                        <div class="layui-col-md5 layui-col-md-offset1">
                            <form id="form-login" class="layui-form" action="${pageContext.request.contextPath}/user/login.do" method="post">
                                <div class="layui-form-item custom-horizon-box">
                                    <img src="${pageContext.request.contextPath}/images/you.jpg" class="custom-home-img img-circle">
                                </div>
                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal" >用户名</label>
                                    <div class="layui-input-inline">
                                        <input type="text" id="login-username" name="username" required lay-verify="required"
                                               placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal">密码</label>
                                    <div class="layui-input-inline">
                                        <input id="login-password" type="password" name="password" required lay-verify="required"
                                               placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item custom-horizon-box">
                                    <a href="#">忘记密码？</a>
                                </div>
                                <div class="layui-form-item custom-horizon-box">
                                    <button class="layui-btn custom-width-half" lay-submit lay-filter="login">登录</button>
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

                <!--登录模块  end-->

                <!--注册模块  start-->

                <div class="layui-tab-item custom-tab-item">
                    <div class="layui-row">
                        <div class="layui-col-md6">
                            <form class="layui-form" action="${pageContext.request.contextPath}/user/register.do" method="post" >
                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal">用户名</label>
                                    <div class="layui-input-inline">
                                        <input id="register-username" type="text" name="username" required lay-verify="required"
                                               placeholder="请输入用户名" autocomplete="off" class="layui-input" onblur="verifyUsername(this.value)">
                                    </div>
                                    <span id="username-msg" class="custom-help-text"></span>
                                </div>
                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal">密码</label>
                                    <div class="layui-input-inline">
                                        <input id="register-password" type="password" name="password" required lay-verify="required"
                                               placeholder="请输入密码" autocomplete="off" class="layui-input" onblur="verifyPassword(this.value)">
                                    </div>
                                    <div id="password-msg" class="custom-help-text"></div>
                                </div>

                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal">确认密码</label>
                                    <div class="layui-input-inline">
                                        <input id="register-confirmPassword" type="password" name="confirmPassword" required lay-verify="required"
                                               placeholder="请再次输入密码" autocomplete="off" class="layui-input" onblur="verifyConfirmPassword(this.value)">
                                    </div>
                                    <div id="confirmPassword-msg" class="custom-help-text"></div>
                                </div>

                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal">邮箱</label>
                                    <div class="layui-input-inline">
                                        <input id="register-email" type="email" name="email" required lay-verify="required"
                                               placeholder="请输入电子邮箱地址" autocomplete="off" class="layui-input" onblur="verifyEmail(this.value)">
                                    </div>
                                    <div id="email-msg" class="custom-help-text"></div>
                                </div>

                                <div class="layui-form-item custom-horizon-box">
                                    <label class="layui-form-label custom-label-width-normal">验证码</label>
                                    <div class="layui-input-inline">
                                            <input id="register-checkedCode" type="text" name="checkedCode"
                                                   placeholder="验证码" autocomplete="off" class="layui-input">
                                    </div>
                                    <button class="layui-btn">获取验证码</button>
                                </div>

                                <div class="layui-form-item custom-horizon-box">
                                    <button id="register-submit" class="layui-btn custom-width-half" lay-submit lay-filter="register">立即注册</button>
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
                <!--注册模块  end-->
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>

</body>
<script>

    layui.use('form', function(){
        var form = layui.form;


        // 监听登录表单的提交
        form.on('submit(login)', function(data){
            var login = false;
            $.ajax({
                async: false,
                url : "user/verify.do",
                data : data.field,
                success: function (value) {
                    var json = eval("(" + value + ")");
                    login = json.verify ;
                    if(login == false){
                        layer.msg("用户名或密码错误");
                    }
                }
            });
            return login;
        });

    });

    // 验证用户名是否已经存在
    function verifyUsername(value) {
        $.ajax({
            async: false,
            url : "user/verifyUsername.do",
            data : {
                username : value
            },
            success: function (data) {
                var json = eval("(" + data + ")");
                if(json.exist == true){
                    $("#username-msg").empty().addClass("custom-text-red").removeClass("custom-text-green").append("用户名已存在");
                    $("#register-submit").attr('disabled',true);
                }else{
                    $("#username-msg").empty().addClass("custom-text-green").removeClass("custom-text-red").append("用户名可注册");
                    $("#register-submit").attr('disabled',false);
                }
            }
        });
    }

    // 验证密码是否合格
    function verifyPassword(value) {
        if(value.search(/^\w{6,16}$/) == -1){
            $("#password-msg").empty().addClass("custom-text-red").removeClass("custom-text-green").append("密码不合格");
            $("#register-submit").attr('disabled',true);
        }else{
            $("#password-msg").empty().addClass("custom-text-green").removeClass("custom-text-red").append("密码合格");
            $("#register-submit").attr('disabled',false);
        }
    }

    //确认密码
    function verifyConfirmPassword(value) {
        var password = $("#register-password").val();
        if(value != password ){
            $("#confirmPassword-msg").empty().addClass("custom-text-red").removeClass("custom-text-green").append("密码不一致");
            $("#register-submit").attr('disabled',true);
        }else{
            $("#confirmPassword-msg").empty().addClass("custom-text-green").removeClass("custom-text-red").append("密码一致");
            $("#register-submit").attr('disabled',false);
        }
    }

    //验证邮箱
    function verifyEmail(value) {
        if(value.search( /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/) == -1){
            $("#email-msg").empty().addClass("custom-text-red").removeClass("custom-text-green").append("非法电子邮箱");
            $("#register-submit").attr('disabled',true);
        }else{
            $("#email-msg").empty().addClass("custom-text-green").removeClass("custom-text-red").append("合法电子邮箱");
            $("#register-submit").attr('disabled',false);
        }
    }

</script>
</html>

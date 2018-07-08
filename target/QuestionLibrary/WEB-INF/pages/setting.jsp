<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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


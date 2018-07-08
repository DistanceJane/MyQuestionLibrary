<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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


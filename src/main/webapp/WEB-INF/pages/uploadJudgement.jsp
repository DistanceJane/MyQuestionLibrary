<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/13
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>Title</title>
</head>
<body>
<div class="custom-body">
    <div class="custom-container">
        <div class="layui-card">
            <div class="layui-card-header">
                <img src="${pageContext.request.contextPath}/images/question_notes.png" class="custom-question-type-img">
                <span class="custom-question-type"><strong>上传试题</strong></span>
            </div>
            <form class="layui-form" action="${pageContext.request.contextPath}/question/saveJudgement.do" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">学科</label>
                    <div class="layui-input-inline">
                        <select name="subjectId" lay-verify="required">
                            <option value=""></option>
                            <option value="1">计算机网络</option>
                            <option value="2">Java语言基础设计</option>
                            <option value="3">设计模式</option>
                            <option value="4">操作系统</option>
                        </select>
                    </div>
                    <label class="layui-form-label">章节</label>
                    <div class="layui-input-inline">
                        <select name="chapterId" lay-verify="required">
                            <option value=""></option>
                            <option value="1">字符串</option>
                            <option value="2">数组</option>
                            <option value="3">方法</option>
                            <option value="4">集合</option>
                            <option value="5">泛型</option>
                        </select>
                    </div>

                    <label class="layui-form-label">难度</label>
                    <div class="layui-input-inline">
                        <select name="level" lay-verify="required" lay-filter="question_type">
                            <option value=""></option>
                            <option value="1">入门</option>
                            <option value="2">简单</option>
                            <option value="3">一般</option>
                            <option value="4">较难</option>
                            <option value="5">极难</option>
                        </select>
                    </div>
                </div>

                <!--所有题型的题目框 start-->
                <div class="layui-card-body">
                    <div class="custom-upload-question-title">题目</div>
                    <textarea name="title" placeholder="请输入题目" class="layui-textarea"></textarea>
                </div>
                <!--所有题型的题目框 end-->

                <!--判断题的答案编辑框 start-->
                <div class="layui-form-item">
                    <label class="layui-form-label">答案</label>
                    <div class="layui-input-block">
                        <input type="radio" name="answer" value="1" ><span><img src="${pageContext.request.contextPath}/images/ok.png" class="custom-left-menu-img">正确</span>
                    </div>
                    <div class="layui-input-block">
                        <input type="radio" name="answer" value="0" ><span><img src="${pageContext.request.contextPath}/images/no.png" class="custom-left-menu-img">错误</span>
                    </div>
                </div>
                <!--判断题的答案编辑框 end-->

                <div class="layui-form-item">
                    <button type="button" class="layui-btn custom-upload-question-picture" id="picture">
                        <i class="layui-icon">&#xe67c;</i>上传图片
                    </button>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn custom-upload-question-btn" lay-submit lay-filter="uploadJudgement">保存题目</button>
                        <button class="layui-btn layui-btn-danger custom-upload-question-btn">取消</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script>

    /**
     * 注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
     */
    layui.use(['element','form', 'upload'], function () {
        var element = layui.element;
        var form = layui.form;
        var upload = layui.upload;
        form.render();


        /**
         * 初始化
         */
        $(document).ready(function() {
        })

        /**
         *表单监听,提交表单
         */

        form.on('submit(uploadJudgement)', function (data) {
            layer.msg(JSON.stringify(data.field));
            layer.msg("试题录入成功！");
        });


        /**
         * 图片上传实例
         */
        var uploadInst = upload.render({
            elem: '#picture' //绑定元素
            ,url: '#' //上传接口
            ,done: function(res){
                //上传完毕回调
            }
            ,error: function(){
                //请求异常回调
            }
        });
    });
</script>
</html>

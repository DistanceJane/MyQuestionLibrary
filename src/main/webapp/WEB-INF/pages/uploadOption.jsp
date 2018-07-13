<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/12
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/9
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap-icheck/square/green.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-icheck/js/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>上传试题</title>
</head>
<body>
<div class="custom-body">
    <div class="custom-container">
        <div class="layui-card">
            <div class="layui-card-header">
                <img src="${pageContext.request.contextPath}/images/question_notes.png" class="custom-question-type-img">
                <span class="custom-question-type"><strong>上传试题</strong></span>
            </div>
            <form action="${pageContext.request.contextPath}/question/saveOption.do" method="post" onsubmit="return initCheckBox()">
                <input value="${questionId}" type="hidden" name="questionId">
                <!--选择题的答案编辑框 start-->
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">选项</label>
                        <div class="layui-input-inline" style="width: 40px;">
                            <input type="text" name="header" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 500px;">
                            <input type="text" name="content" placeholder="请输入选项内容" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="checkbox" name="correct" value="1">正确
                        </div>
                    </div>
                </div>
                <!--选择题的答案编辑框 end-->

                <!--选择题的答案编辑框 start-->
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">选项</label>
                        <div class="layui-input-inline" style="width: 40px;">
                            <input type="text" name="header" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 500px;">
                            <input type="text" name="content" placeholder="请输入选项内容" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="checkbox" name="correct" value="1">正确
                        </div>
                    </div>
                </div>
                <!--选择题的答案编辑框 end-->

                <!--选择题的答案编辑框 start-->
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">选项</label>
                        <div class="layui-input-inline" style="width: 40px;">
                            <input type="text" name="header" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 500px;">
                            <input type="text" name="content" placeholder="请输入选项内容" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="checkbox" name="correct" value="1">正确
                        </div>
                    </div>
                </div>
                <!--选择题的答案编辑框 end-->

                <!--选择题的答案编辑框 start-->
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">选项</label>
                        <div class="layui-input-inline" style="width: 40px;">
                            <input type="text" name="header" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 500px;">
                            <input type="text" name="content" placeholder="请输入选项内容" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="checkbox" name="correct" value="1">正确
                        </div>
                    </div>
                </div>
                <!--选择题的答案编辑框 end-->

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="submit" class="layui-btn custom-upload-question-btn" lay-filter="uploadOption">保存答案</button>
                        <button class="layui-btn layui-btn-danger custom-upload-question-btn">增加选项</button>
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
    layui.use(['element','form'], function () {
        var element = layui.element;
        var form = layui.form;
        form.render();

        /**
         *表单监听,提交表单
         */
        form.on('submit(uploadOption)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });

        $(document).ready(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
                increaseArea: '20%' // optional
            });

        })

    });

    function initCheckBox() {
        var correct = document.getElementsByName("correct");
        for(var i=0; i<correct.length; i++)
        {
                if(!(correct[i].checked))
                {
                    correct[i].checked = true;
                    correct[i].value = "0";
                }
        }
        return true;
    }
</script>
</html>


<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="layui/layui.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-icheck/square/green.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap-icheck/js/icheck.min.js"></script>
    <script src="layui/layui.js"></script>
    <title>试卷练习</title>
</head>
<body>
<div class="custom-container">


    <div class="layui-row">
        <div class="layui-col-md3">
            <div class="custom-bg-dark">
                <p class="custom-paper-title">计算机网络练习试卷</p>
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="custom-bg-black">
                <div class="custom-shift-down-15">
                    <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                        <div class="layui-progress-bar layui-bg-green" lay-percent="1/3"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-card">
        <div class="layui-card-header">
            <img src="${pageContext.request.contextPath}/images/face.png" class="custom-question-type-img">
            <span class="custom-question-type"><strong>[单选题]</strong></span></div>
        <div class="layui-card-body">
            <p>
                在Spring框架中获取连接池可以有哪些方式？
            </p>
            <div class="custom-question-option">
                <input type="radio" name="question_from" value="nan"><span class="custom-question-option-text">C3P0数据源</span>
            </div>

            <div class="custom-question-option">
                <input type="radio" name="question_from" value="nan"><span class="custom-question-option-text">Spring的数据源实现类(DriverManagerDataSource)</span>
            </div>

            <div class="custom-question-option">
                <input type="radio" name="question_from" value="nan"><span class="custom-question-option-text">Spring的数据源实现类(DriverManagerDataSource)</span>
            </div>

            <div class="custom-question-option">
                <input type="radio" name="question_from" value="nan"><span class="custom-question-option-text">获取JNDI数据源</span>
            </div>
            <div class="custom-super-divider"></div>
            <div class="row">
                <div class="layui-col-md6">
                    <p class="custom-text-padding">收起答题卡</p>
                </div>
                <div class="layui-col-md3 layui-col-md-offset3">
                    <button class="layui-btn layui-btn-danger">马上交卷</button>
                    <button class="layui-btn">下一题</button>
                </div>
            </div>

            <div class="layui-row">
                <div class="custom-cube">1</div>
                <div class="custom-cube">2</div>
                <div class="custom-cube">3</div>
                <div class="custom-cube">4</div>
                <div class="custom-cube">5</div>
                <div class="custom-cube">6</div>
                <div class="custom-cube">7</div>
                <div class="custom-cube">8</div>
                <div class="custom-cube">9</div>
                <div class="custom-cube">10</div>
                <div class="custom-cube">11</div>
                <div class="custom-cube">12</div>
            </div>
            <div>

            </div>
        </div>
    </div>
</div>
</div>
</body>
<script>
    //注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });

    $(document).ready(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
            increaseArea: '20%' // optional
        });
    });
</script>
</html>

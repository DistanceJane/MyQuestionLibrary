<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/layui/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap-icheck/square/green.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-icheck/js/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>刷题</title>
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
                        <div class="layui-row">
                            <div class="layui-col-md2 text-center">
                                <a href="#" class="custom-tab-library-li" style="text-decoration: none">试题练习</a>
                            </div>
                            <hr class="layui-bg-green custom-divider">
                        </div>
                    </div>
                    <div class="layui-card-body">
                        <div class="custom-panel-box">
                            <div class="custom-panel-box-header">
                                <div class="layui-row">
                                    <div class="layui-col-md3"><h4><strong>编程语言</strong></h4></div>
                                    <div class="layui-col-md1 layui-col-md-offset8"><input type="checkbox"><span
                                            class="custom-check-text">全选</span></div>
                                </div>
                            </div>
                            <div class="custom-panel-box-body">
                                <div class="layui-row">
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>C/C++</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="1/3"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>Java</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="15/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>Php</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="23/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>SQL</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="24/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>C#</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="16/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>Go</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="73/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="custom-panel-box">
                            <div class="custom-panel-box-header">
                                <div class="layui-row">
                                    <div class="layui-col-md3"><h4><strong>Java语言程序设计</strong></h4></div>
                                    <div class="layui-col-md1 layui-col-md-offset8"><input type="checkbox"><span
                                            class="custom-check-text">全选</span></div>
                                </div>
                            </div>
                            <div class="custom-panel-box-body">
                                <div class="layui-row">
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>变量</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="1/3"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>数组</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="15/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>字符串</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="23/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>方法</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="24/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>集合</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress ">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="16/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="layui-col-md4">
                                        <div class="custom-check-box">
                                            <div class="layui-row">
                                                <div class="layui-col-md4">
                                                    <input type="checkbox"><span
                                                        class="custom-check-text"><strong>泛型</strong></span>
                                                </div>
                                                <div class="layui-col-md5">
                                                    <div class="custom-shift-down-process">
                                                        <div class="layui-progress">
                                                            <div class="layui-progress-bar layui-bg-red"
                                                                 lay-percent="73/100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-col-md3">
                                                    36/2873
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="custom-margin-side">
                        <form action="#" method="post">
                            <div class="custom-padding-sm">
                                <span class="custom-check-text-sm custom-margin-side-sm">难度系数</span>
                                <span class="custom-check-text-sm">五个小星星</span>
                            </div>
                            <div class="custom-padding-sm">
                                <span class="custom-check-text-sm custom-margin-side-sm">出题来源</span>
                                <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                                  name="question_from"
                                                                                                  value="nan">只出错题</span>
                                <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                                  name="question_from"
                                                                                                  value="nan">只出新题</span>
                                <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                                  name="question_from"
                                                                                                  value="nan">来源不限</span>
                            </div>
                            <div class="custom-padding-sm">
                                <span class="custom-check-text-sm custom-margin-side-sm">题目数量</span>
                                <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                                  name="question_number"
                                                                                                  value="nan">10道题</span>
                                <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                                  name="question_number"
                                                                                                  value="nan">20道题</span>
                                <span class="custom-check-text-sm custom-span-margin-side"><input type="radio"
                                                                                                  name="question_number"
                                                                                                  value="nan">30道题</span>
                            </div>
                            <div class="custom-bg-default">
                                <div class="layui-row">
                                    <div class="layui-col-md10">

                                        <span style="line-height: 60px">已选择:</span>
                                        <span class="layui-breadcrumb" lay-separator="|">
                                                    <a href="">编程语言</a>
                                                    <a href="">三星难度</a>
                                                    <a href="">错题+新题</a>
                                                    <a href="">30道题</a>
                                        </span>
                                    </div>
                                    <div class="layui-col-md2">
                                        <button class="layui-btn custom-vertical-button-center" style="margin-top: 10px">
                                            生成试卷
                                        </button>

                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        </form>

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
    layui.use(['element', 'form', 'laypage', 'rate'], function () {
        var element = layui.element;
        var form = layui.form;
        var laypage = layui.laypage;
        var rate = layui.rate;
        //…

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            , count: 50 //数据总数，从服务端得到
            , limit: 8
        });

        // //渲染一个rate
        // var ins1 = rate.render({
        //     elem: '#rate'  //绑定元素
        // });
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

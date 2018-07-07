<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/layui/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>首页</title>
</head>
<body>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md8">
            <div class="layui-row">
                <div class="layui-col-md3">
                    <div class="custom-panel">
                        <div class="layui-card">
                            <div class="layui-card-header">
                                <p class="custom-text-sm custom-text-center">我的题库</p>
                            </div>
                            <div class="layui-card-body">
                                <div class="custom-img">
                                    <img src="${pageContext.request.contextPath}/images/library.png" class="custom-home-img" alt="试题库">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md3">
                    <div class="custom-panel">
                        <div class="layui-card">
                            <div class="layui-card-header">
                                <p class="custom-text-sm custom-text-center">我的错题</p></div>
                            <div class="layui-card-body">
                                <div class="custom-img">
                                    <img src="${pageContext.request.contextPath}/images/wrognlib.png" class="custom-home-img" alt="错题集">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md3">
                    <div class="custom-panel">
                        <div class="layui-card">
                            <div class="layui-card-header">
                                <p class="custom-text-sm custom-text-center">我的笔记</p></div>
                            <div class="layui-card-body">
                                <div class="custom-img">
                                    <img src="${pageContext.request.contextPath}/images/notes.png" class="custom-home-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md3">
                    <div class="custom-panel">
                        <div class="layui-card">
                            <div class="layui-card-header"><p class="custom-text-center custom-text-sm">我的成就</p></div>
                            <div class="layui-card-body">
                                <div class="custom-img">
                                    <img src="${pageContext.request.contextPath}/images/honor.png" class="custom-home-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">我的试题</div>
                        <div class="layui-card-body">
                            <div class="layui-row">
                                <div class="layui-col-md4"><span class="custom-text-sm">总共做题:</span><span class="custom-text-recorder-done">1208题</span></div>
                                <div class="layui-col-md4"><span class="custom-text-sm">通过题目:</span><span class="custom-text-recorder-pass">897题</span></div>
                                <div class="layui-col-md4"><span class="custom-text-sm">题目总数</span><span class="custom-text-recorder-sum">4698题</span></div>
                            </div>

                            <div class="custom-bg-gray custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-4">学科</div>
                                    <div class="col-md-4">通过题数/题目总数</div>
                                    <div class="col-md-4">进度</div>
                                </div>
                            </div>
                            <div class=" custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-4">Java语言程序设计</div>
                                    <div class="col-md-4">890/890</div>
                                    <div class="col-md-4"><span class="custom-text-green">100%</span></div>
                                </div>
                            </div>
                            <div class="custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-4">计算机网络</div>
                                    <div class="col-md-4">460/1120</div>
                                    <div class="col-md-4"><span class="custom-text-red">40%</span></div>
                                </div>
                            </div>
                            <div class="custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-4">设计模式</div>
                                    <div class="col-md-4">124/328</div>
                                    <div class="col-md-4"><span class="custom-text-red">38%</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">最近试卷</div>
                        <div class="layui-card-body">
                            <div class="layui-row">
                                <div class="layui-col-md4"><span class="custom-text-sm">创建试卷:</span><span class="custom-text-recorder-done">48套</span></div>
                                <div class="layui-col-md4"><span class="custom-text-sm">完成试卷:</span><span class="custom-text-recorder-pass">40套</span></div>
                            </div>

                            <div class="custom-bg-gray custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-3">学科</div>
                                    <div class="col-md-3">状态</div>
                                    <div class="col-md-3">创建时间</div>
                                    <div class="col-md-3"></div>
                                </div>
                            </div>
                            <div class=" custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-3">Java语言程序设计</div>
                                    <div class="col-md-3"><span class="custom-text-green">完成</span></div>
                                    <div class="col-md-3">2018-06-31 18:56</div>
                                    <div class="col-md-3"><a style="text-decoration: none">再做一次</a></div>
                                </div>
                            </div>
                            <div class="custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-3">计算机网络</div>
                                    <div class="col-md-3"><span class="custom-text-red">未完成</span></div>
                                    <div class="col-md-3">2018-06-28 09:10</div>
                                    <div class="col-md-3"><a style="text-decoration: none">继续完成</a></div>
                                </div>
                            </div>
                            <div class="custom-subject-item">
                                <div class="layui-row">
                                    <div class="col-md-3">设计模式</div>
                                    <div class="col-md-3"><span class="custom-text-green">完成</span></div>
                                    <div class="col-md-3">2018-06-28 14:00</div>
                                    <div class="col-md-3"><a style="text-decoration: none">再做一次</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">热门笔记</div>
                        <div class="layui-card-body">
                            <div class="custom-note-panel">
                                <div class="layui-row">
                                    <div class="custom-note-hot">
                                        <span class="custom-note-title">《Spring》</span>
                                        <img src="${pageContext.request.contextPath}/images/like.png" class="custom-note-like">
                                        <span>(30)</span>
                                        <p>
                                            Bean的创建时会提到Spring的单例模式，就是说默认情况下Spring中定义的Bean是以单例模式创建的。如果以前了解设计模式中的单例模式的话很容易对这种说法产生先入为主的印象。事实上，Spring中的单例模式还有许多需要注意的地方。
                                            在GoF中的单例模式是指一个ClassLoader中只存在类一个实例。
                                            而在Spring中的单例实际上更确切的说应该是：
                                            1.每个Spring Container中定义的Bean只存在一个实例
                                            2.每个Bean定义只存在一个实例。
                                        </p>
                                        <span class="custom-note-hot-datetime"><strong>发布于2018-06-30 17:25</strong></span>
                                        <span class="custom-note-detail"><a style="text-decoration: none">查看详情</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="custom-note-panel">
                                <div class="layui-row">
                                    <div class="custom-note-hot">
                                        <span class="custom-note-title">《Spring》</span>
                                        <img src="${pageContext.request.contextPath}/images/like.png" class="custom-note-like">
                                        <span>(30)</span>
                                        <p>
                                            Bean的创建时会提到Spring的单例模式，就是说默认情况下Spring中定义的Bean是以单例模式创建的。如果以前了解设计模式中的单例模式的话很容易对这种说法产生先入为主的印象。事实上，Spring中的单例模式还有许多需要注意的地方。
                                            在GoF中的单例模式是指一个ClassLoader中只存在类一个实例。
                                            而在Spring中的单例实际上更确切的说应该是：
                                            1.每个Spring Container中定义的Bean只存在一个实例
                                            2.每个Bean定义只存在一个实例。
                                        </p>
                                        <span class="custom-note-hot-datetime"><strong>发布于2018-06-30 17:25</strong></span>
                                        <span class="custom-note-detail"><a style="text-decoration: none">查看详情</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="custom-note-panel">
                                <div class="layui-row">
                                    <div class="custom-note-hot">
                                        <span class="custom-note-title">《Spring》</span>
                                        <img src="${pageContext.request.contextPath}/images/like.png" class="custom-note-like">
                                        <span>(30)</span>
                                        <p>
                                            Bean的创建时会提到Spring的单例模式，就是说默认情况下Spring中定义的Bean是以单例模式创建的。如果以前了解设计模式中的单例模式的话很容易对这种说法产生先入为主的印象。事实上，Spring中的单例模式还有许多需要注意的地方。
                                            在GoF中的单例模式是指一个ClassLoader中只存在类一个实例。
                                            而在Spring中的单例实际上更确切的说应该是：
                                            1.每个Spring Container中定义的Bean只存在一个实例
                                            2.每个Bean定义只存在一个实例。
                                        </p>
                                        <span class="custom-note-hot-datetime"><strong>发布于2018-06-30 17:25</strong></span>
                                        <span class="custom-note-detail"><a style="text-decoration: none">查看详情</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-body">
                            <div class="layui-row">
                                <div class="layui-col-md3">
                                    <p class="custom-text-lg-left"><strong>周六</strong></p>
                                    <p class="custom-text-left">06-30</p>
                                </div>
                                <div class="layui-col-md6">
                                    <p class="custom-text-sm-left">欢迎回来!</p>
                                    <p>上次登录时间:06-29</p>
                                </div>
                                <div class="layui-col-md3">
                                    <div class="custom-box">
                                        <button class="layui-btn custom-vertical-center">
                                            登录日志
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--个人信息展示面板 start-->
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">个人信息</div>
                        <div class="layui-card-body">
                            <div class="layui-row">
                                <div class="custom-img">
                                    <img src="${pageContext.request.contextPath}/images/you.jpg" class="custom-home-photo img-circle">
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="custom-horizon-box">
                                    <div class="custom-horizon-center">
                                        <span class="custom-home-username"><strong>你个小居居</strong></span><img
                                            src="${pageContext.request.contextPath}/images/boy.png" class="custom-home-gender">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="custom-horizon-box">
                                    <div class="custom-horizon-center">
                                        <span class="layui-breadcrumb" lay-separator="|">
                                        <a href="">长沙理工大学</a>
                                        <a href="">计算机与通信工程学院</a>
                                        <a href="">软件工程</a>
                                    </span>
                                    </div>
                                </div>
                            </div>
                            <div class="custom-padding">
                                <div class="layui-row">
                                    <div class="layui-col-md3">
                                        <p class="text-center">刷题</p>
                                        <p class="text-center">10086</p>
                                    </div>
                                    <div class="layui-col-md3">
                                        <p class="text-center">通过</p>
                                        <p class="text-center">8888</p>
                                    </div>
                                    <div class="layui-col-md3">
                                        <p class="text-center">笔记</p>
                                        <p class="text-center">188</p>
                                    </div>
                                    <div class="layui-col-md3">
                                        <p class="text-center">获赞</p>
                                        <p class="text-center">25535</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--个人信息展示面板 end-->

            <!--系统公告 start-->
            <div class="layui-row">
                <div class="custom-panel">
                    <div class="layui-card">
                        <div class="layui-card-header">系统公告</div>
                        <div class="layui-card-body">在线试题库系统更新啦</div>
                        <div class="layui-card-body">在线试题库系统更新啦</div>
                        <div class="layui-card-body">在线试题库系统更新啦</div>
                    </div>
                </div>
            </div>
            <!--系统公告 end-->
        </div>
    </div>
</div>
</div>
</body>
<script>
    //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</html>

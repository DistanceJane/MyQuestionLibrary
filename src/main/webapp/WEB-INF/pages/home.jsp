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
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>首页</title>
</head>
<body>
<%@include file="nav.jsp" %>
<div class="custom-body">
    <div class="custom-container">
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
                                <div class="layui-card-header"><p class="custom-text-center custom-text-sm">我的成就</p>
                                </div>
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
                            <div class="layui-card-header">我的题库</div>
                            <div class="layui-card-body">
                                <div class="layui-row">
                                    <div class="layui-col-md4"><span class="custom-text-sm">总共做题:</span><span
                                            class="custom-text-recorder-done">${countLibrary.doneQuantity}题</span></div>
                                    <div class="layui-col-md4"><span class="custom-text-sm">通过题目:</span><span
                                            class="custom-text-recorder-pass">${countLibrary.passQuantity}题</span></div>
                                    <div class="layui-col-md4"><span class="custom-text-sm">题目总数</span><span
                                            class="custom-text-recorder-sum">${countLibrary.questionQuantity}题</span></div>
                                </div>

                                <div class="custom-bg-gray custom-subject-item">
                                    <div class="layui-row">
                                        <div class="col-md-4">学科</div>
                                        <div class="col-md-4">通过题数/题目总数</div>
                                        <div class="col-md-4">进度</div>
                                    </div>
                                </div>
                                <c:forEach items="${libraries}" var="library">
                                    <div class=" custom-subject-item">
                                        <div class="layui-row">
                                            <div class="col-md-4">${library.subject.subjectName}</div>
                                            <div class="col-md-4">${library.passQuantity}/${library.questionQuantity}</div>
                                            <c:choose>
                                                <c:when test="${library.progress == 0}">
                                                    <div class="col-md-4"><span class="custom-text-red">${library.progress}%</span></div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="col-md-4"><span class="custom-text-green">${library.progress}%</span></div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </c:forEach>
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
                                    <div class="layui-col-md4"><span class="custom-text-sm">创建试卷:</span><span
                                            class="custom-text-recorder-done">${paperCount}套</span></div>
                                    <div class="layui-col-md4"><span class="custom-text-sm">完成试卷:</span><span
                                            class="custom-text-recorder-pass">${finishPaperCount}套</span></div>
                                </div>

                                <div class="custom-bg-gray custom-subject-item">
                                    <div class="layui-row">
                                        <div class="col-md-3">学科</div>
                                        <div class="col-md-3">状态</div>
                                        <div class="col-md-3">创建时间</div>
                                        <div class="col-md-3">得分</div>
                                    </div>
                                </div>


                                <c:forEach items="${papers}" var="paper">
                                    <div class=" custom-subject-item">
                                        <div class="layui-row">
                                            <div class="col-md-3">${paper.library.subject.subjectName}</div>
                                            <c:choose>
                                                <c:when test="${paper.state == 1}">
                                                    <div class="col-md-3"><span class="custom-text-green">完成</span></div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="col-md-3"><span class="custom-text-red">未完成</span></div>
                                                </c:otherwise>
                                            </c:choose>
                                            <div class="col-md-3">${paper.createTime}</div>
                                            <c:choose>
                                                <c:when test="${paper.state == 1}">
                                                    <div class="col-md-3">${paper.score}</div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="col-md-3"><a style="text-decoration: none">继续完成</a></div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="custom-panel">
                        <div class="layui-card">
                            <div class="layui-card-header">热门笔记</div>
                            <div class="layui-card-body">

                                <c:forEach items="${notes}" var="note">
                                    <div class="custom-note-panel">
                                        <div class="layui-row">
                                            <div class="custom-note-hot">
                                                <span class="custom-note-title">${note.chapter.chapterName}</span>
                                                <img src="../../images/like.png" class="custom-note-like">
                                                <span>(${note.like})</span>
                                                <p>
                                                    ${note.content}
                                                </p>
                                                <span class="custom-note-hot-datetime"><strong>${note.time}</strong></span>
                                                <span class="custom-note-detail"><a href="${pageContext.request.contextPath}/question/detail.do"
                                                        style="text-decoration: none">查看详情</a></span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
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
                                        <p class="custom-text-lg-left"><strong>周二</strong></p>
                                        <p class="custom-text-left">07-17</p>
                                    </div>
                                    <div class="layui-col-md6">
                                        <p class="custom-text-sm-left">欢迎回来!</p>
                                        <p>上次登录时间:07-17</p>
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
                                            <span class="custom-home-username"><strong>${sessionScope.user.username}</strong></span><img
                                                src="${pageContext.request.contextPath}/images/boy.png" class="custom-home-gender">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="custom-horizon-box">
                                        <div class="custom-horizon-center">
                                        <span class="layui-breadcrumb" lay-separator="|">
                                        <a href="">${sessionScope.user.school}</a>
                                        <a href="">${sessionScope.user.department}</a>
                                        <a href="">${sessionScope.user.major}</a>
                                    </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="custom-padding">
                                    <div class="layui-row">
                                        <div class="layui-col-md3">
                                            <p class="text-center">刷题</p>
                                            <p class="text-center">${countLibrary.doneQuantity}</p>
                                        </div>
                                        <div class="layui-col-md3">
                                            <p class="text-center">通过</p>
                                            <p class="text-center">${countLibrary.passQuantity}</p>
                                        </div>
                                        <div class="layui-col-md3">
                                            <p class="text-center">笔记</p>
                                            <p class="text-center">10</p>
                                        </div>
                                        <div class="layui-col-md3">
                                            <p class="text-center">获赞</p>
                                            <p class="text-center">28</p>
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
<%@include file="footer.jsp"%>
</body>
<script>
    //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</html>

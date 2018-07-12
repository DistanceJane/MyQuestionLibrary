<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="layui-card">
    <div class="layui-card-body">
        <div class="layui-row">
            <div class="layui-col-md2 text-center">
                <a href="#" class="custom-tab-library-li" style="text-decoration: none">我的错题集</a>
            </div>
            <hr class="layui-bg-green custom-divider">
        </div>
        <div class="layui-row">
            <div class="layui-col-md3">
                <span class="custom-text-sm-left">历史总错题数(${failSum})</span>
            </div>
            <div class="layui-col-md3">
                <span class="custom-text-sm-left">未通过错题总数(${failCount})</span>
            </div>
            <div class="layui-col-md3 layui-col-md-offset3">
                <button class="layui-btn pull-right">错题组卷练习</button>
            </div>
        </div>
        <div class="layui-row">
            <div class="custom-checked-list-box">
                <form class="layui-form">
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="字符串">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="数据结构">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="编程基础">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="软件工程">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="树">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="Linux">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="Windows">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="排序">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="高级算法">
                    </div>
                    <div class="custom-checkbox-box">
                        <input type="checkbox" name="" title="C/C++">
                    </div>
                </form>
            </div>
        </div>
        <div class="custom-list">
            <div class="custom-list-item">
                <div class="layui-row">
                    <div class="layui-col-md5">题目</div>
                    <div class="layui-col-md2"><p class="custom-text-center">知识点</p></div>
                    <div class="layui-col-md2"><p class="custom-text-center">来源</p></div>
                    <div class="layui-col-md3">
                        <form class="layui-form">
                            <div class="layui-form-item custom-shift-top pull-right">
                                <label class="layui-form-label custom-form-label" for="read">只看未通过</label>
                                <input type="checkbox" name="zzz" id="read" lay-skin="switch" lay-text="on|off">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <c:forEach items="${questions}" var="question">
                <div class="custom-list-item">
                    <div class="custom-text-center-all">
                        <div class="layui-row">
                            <div class="layui-col-md5">
                                <p class="custom-text-center">${question.title}
                                </p>
                            </div>
                            <div class="layui-col-md2">
                                <p class="custom-text-center">${question.chapter.chapterName}</p>
                            </div>
                            <div class="layui-col-md2">
                                <p class="custom-text-center">${question.subject.subjectName}</p>
                            </div>
                            <div class="layui-col-md3">
                                <a href="${pageContext.request.contextPath}/question/${question.typeId}/${question.id}/detail.do" class="layui-btn layui-btn-sm pull-right">查看详情</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        <div class="custom-super-divider"></div>
        <div class="custom-horizon-box">
            <div class="custom-horizon-center" id="page">
                <%--=====================================--%>
                <%--===================分页栏============--%>
                <%--======================================--%>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'form', 'laypage'], function () {
        var element = layui.element;
        var form = layui.form;
        var laypage = layui.laypage;
        //…

        //执行一个laypage实例
        laypage.render({
            elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
            , count: 50 //数据总数，从服务端得到
            , limit: 8
        });
    });
</script>

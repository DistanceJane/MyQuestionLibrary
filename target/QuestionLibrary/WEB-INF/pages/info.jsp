<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-card">
    <div class="layui-card-header">基本信息
    </div>
    <div class="layui-card-body">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label custom-label">用户名</label>
                    <label class="layui-form-label" style="width:120px;float: left">${user.username}</label>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label custom-label">学校</label>
                    <label class="layui-form-label" style="width:120px;float: left">${user.school}</label>

            </div>
            <div class="layui-form-item">
                <label class="layui-form-label custom-label">学院</label>

                    <label class="layui-form-label" style="width:120px;float: left">${user.department}</label>

            </div>

            <div class="layui-form-item">
                <label class="layui-form-label custom-label">专业</label>

                    <label class="layui-form-label" style="width:120px;float: left">${user.major}</label>

            </div>
            <div class="layui-form-item">
                <label class="layui-form-label custom-label">性别</label>

                    <label class="layui-form-label"  style="width:120px;float: left">
                    <c:choose>
                        <c:when test="${user.gender == 1}">
                            男
                        </c:when>
                        <c:otherwise>
                            女
                        </c:otherwise>
                    </c:choose>
                    </label>

            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label custom-label">个性签名</label>

                    <label class="layui-form-label" style="width:120px;float: left">略略略...</label>

            </div>
        </form>
    </div>
</div>

<script>
    //Demo
    layui.use('form', function () {
        var form = layui.form;
        form.render();
    });
</script>


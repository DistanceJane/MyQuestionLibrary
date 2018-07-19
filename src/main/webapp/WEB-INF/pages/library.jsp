<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/7
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-card">
    <div class="layui-card-body">
        <div class="layui-row">
            <div class="layui-col-md2 text-center">
                <a href="#" class="custom-tab-library-li" style="text-decoration: none" onclick="showLibrary(1)">我的试题库</a>
            </div>
            <div class="layui-col-md2 text-center">
                <a href="#" class="custom-tab-library-li" style="text-decoration: none" onclick="showLibrary(2)">所有试题库</a>
            </div>
            <hr class="layui-bg-green custom-divider">
        </div>
        <div class="layui-row">
            <div class="layui-card">
                <div class="layui-card-body" id="library_panel">
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
        element.init();
    });


    $(document).ready(function () {
       showLibrary(1);
    });

    function showLibrary(value) {
        if(value == 1){
            $("#library_panel").load("${pageContext.request.contextPath}/library/myLibrary.do");
        }else{
            $("#library_panel").load("${pageContext.request.contextPath}/library/all.do");
        }
    }
</script>


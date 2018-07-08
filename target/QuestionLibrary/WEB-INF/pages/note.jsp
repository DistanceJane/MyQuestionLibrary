<%--
  Created by IntelliJ IDEA.
  User: gmcc
  Date: 2018/7/8
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-card">
    <div class="layui-card-header">
        <img src="${pageContext.request.contextPath}/images/question_notes.png" class="custom-question-type-img">
        <span class="custom-question-type"><strong>3条笔记</strong></span>
    </div>
    <div class="layui-card-body">
        <div class="custom-speaker-panel">
            <div class="layui-row">
                <div class="custom-speaker">
                    <img class="custom-speaker-img" src="../../images/you.jpg">
                    <h6 class="custom-text-center">小居居</h6>
                </div>
                <div class="custom-speaker-text">
                    <img src="${pageContext.request.contextPath}/images/like.png" class="custom-speaker-like">
                    <span>(30)</span>
                    <p>
                        Bean的创建时会提到Spring的单例模式，就是说默认情况下Spring中定义的Bean是以单例模式创建的。如果以前了解设计模式中的单例模式的话很容易对这种说法产生先入为主的印象。事实上，Spring中的单例模式还有许多需要注意的地方。
                        在GoF中的单例模式是指一个ClassLoader中只存在类一个实例。
                        而在Spring中的单例实际上更确切的说应该是：
                        1.每个Spring Container中定义的Bean只存在一个实例
                        2.每个Bean定义只存在一个实例。
                    </p>
                    <span class="custom-note-datetime"><strong>发布于2018-06-30 17:25</strong></span>
                </div>

            </div>

            <div class="layui-row">
                <div class="custom-speaker">
                    <img class="custom-speaker-img" src="${pageContext.request.contextPath}/images/you.jpg">
                    <h6 class="custom-text-center">小居居</h6>
                </div>
                <div class="custom-speaker-text">
                    <img src="${pageContext.request.contextPath}/images/like.png" class="custom-speaker-like">
                    <span>(30)</span>
                    <p>
                        Bean的创建时会提到Spring的单例模式，就是说默认情况下Spring中定义的Bean是以单例模式创建的。如果以前了解设计模式中的单例模式的话很容易对这种说法产生先入为主的印象。事实上，Spring中的单例模式还有许多需要注意的地方。
                        在GoF中的单例模式是指一个ClassLoader中只存在类一个实例。
                        而在Spring中的单例实际上更确切的说应该是：
                        1.每个Spring Container中定义的Bean只存在一个实例
                        2.每个Bean定义只存在一个实例。
                    </p>
                    <span class="custom-note-datetime"><strong>发布于2018-06-30 17:25</strong></span>
                </div>

            </div>

            <div class="layui-row">
                <div class="custom-speaker">
                    <img class="custom-speaker-img" src="${pageContext.request.contextPath}/images/you.jpg">
                    <h6 class="custom-text-center">小居居</h6>
                </div>
                <div class="custom-speaker-text">
                    <img src="${pageContext.request.contextPath}/images/like.png" class="custom-speaker-like">
                    <span>(30)</span>
                    <p>
                        Bean的创建时会提到Spring的单例模式，就是说默认情况下Spring中定义的Bean是以单例模式创建的。如果以前了解设计模式中的单例模式的话很容易对这种说法产生先入为主的印象。事实上，Spring中的单例模式还有许多需要注意的地方。
                        在GoF中的单例模式是指一个ClassLoader中只存在类一个实例。
                        而在Spring中的单例实际上更确切的说应该是：
                        1.每个Spring Container中定义的Bean只存在一个实例
                        2.每个Bean定义只存在一个实例。
                    </p>
                    <span class="custom-note-datetime"><strong>发布于2018-06-30 17:25</strong></span>
                </div>

            </div>
            <div class="custom-horizon-box">
                <div class="custom-horizon-center">
                    <div id="page"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>课程列表 —— 显示所有课程</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/toAddCourse">新增</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>课程图片</th>
                    <th>课程id</th>
                    <th>课程名</th>
                    <th>课时数</th>
                    <th>课程所属学院id</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="course" items="${requestScope.get('course')}">
                    <tr>
                        <td>
                            <img src="${pageContext.request.contextPath}/image/${course.getImage()}" style="width: 160px;height: 100px;border-radius: 5px;">
                        </td>
                        <td>${course.getId()}</td>
                        <td>${course.getName()}</td>
                        <td>${course.getHours()}</td>
                        <td>${course.getSid()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/course/toUpdateCourse?id=${course.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/course/del/${course.getId()}">删除</a>
                        </td>


                    </tr>
                </c:forEach>
                </tbody>

                <body>
                <li>用户：${USER_SESSION.email}</li>
                <li><a href="${pageContext.request.contextPath}/logout">退出</a></li>
                </body>

            </table>
        </div>
    </div>
</div>

</body>
</html>
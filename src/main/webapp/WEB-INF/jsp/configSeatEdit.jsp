<%--
  Created by IntelliJ IDEA.
  User: 950618
  Date: 2018/12/7
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <link href="../../css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="../../js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <script src="../../js/webJs/seat.js"></script>
    <title>佳利达抽奖系统</title>
</head>
<style>
    body {
        font-size: 15px;
    }
    .setting > li > a {
        width: 100px;
        height: 40px;
        font-size: 20px;
        margin: 10px;
    }
    ul li{
        list-style: none;
    }
    .new {
        width: 100px;
        height: 40px;
        font-size: 20px;
        margin: 10px;
    }
</style>
<body>

<div id="add">
    <table class="table table-bordered">
        <thead>
            <th class="text-center">桌号</th>
            <th class="text-center">座号</th>
            <th class="text-center">部门</th>
            <th class="text-center">姓名</th>
        </thead>
        <tbody>
        <tr id="clone" class="myclass">
            <td><input type="number" class="form-control" value="${seat.tableId}"></td>
            <td><input type="number" class="form-control" value="${seat.locationId}"></td>
            <td><input type="text" class="form-control" value="${seat.department}"></td>
            <td><input type="text" class="form-control" value="${seat.name}"></td>
            <%--隐藏--%>
            <td class="hidden">${seat.id}</td>
        </tr>
        </tbody>
    </table>
    <div>
        <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="adjustConfirm()">
            修改
        </button>
        <button type="button" class="btn btn-danger" onclick="window.location.href='/seat';">
            返回
        </button>
    </div>
</div>

</body>
</html>
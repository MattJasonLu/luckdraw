<%--
  Created by IntelliJ IDEA.
  User: wuhanxue
  Date: 2018/12/6
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>中奖者名单</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <link href="../../css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="../../js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body onload="loadWinnerList()">
<table style="width: 60%;height: 600px;border: 0" cellpadding="0" cellspacing="0" align="center">
    <thead>
    <!--几等奖，动态-->
    <tr>
        <td class="text-center" colspan="2" style="height: 85px"><span></span>等奖 中奖名单</td>
    </tr>
    </thead>
    <tbody id="tBody">
    <tr>
        <td style="height: 100px">
            <p><span class="number"></span>&nbsp;&nbsp;桌号【<span class="tableNumber"></span>】&nbsp;&nbsp;号码【<span class="personNumber"></span>】</p>
        </td>
    </tr>
    </tbody>
</table>
<div class="text-center">
    <a class="btn btn-success" id="begin" style="width: 100px;height: 55px;font-size: 30px"
       href="luckDraw.jsp">再抽一次</a>
    <a class="btn btn-danger" id="list" href="luckDraw.jsp" style="width: 100px;height: 55px;font-size: 30px">下一奖项</a>
</div>
</body>
<script>
    /**
     * 显示中奖者名单
     */
    function loadWinnerList(){
        var winnerList = JSON.parse(localStorage.getItem('seatList'));
        if(winnerList != null){
            for(i in winnerList){
                if(i%2 === 0){
                    var tr = "<tr>\n" +
                        "</tr>";
                    $("#tBody").append(tr);
                }
                var td = " <td style=\"height: 100px\">\n" +
                    "            <p><span class=\"number\"></span>&nbsp;&nbsp;桌号【<span id='tableId"+winnerList[i].tableId+"'>" +
                    "</span>】&nbsp;&nbsp;座位号【<span class='locationId"+winnerList[i].locationId+"'></span>】</p>\n" +
                    "        </td>";
                $("#tBody").find("tr:last").append(td);   // 将td 插入到最新的tr中
            }
        }
    }

</script>
</html>

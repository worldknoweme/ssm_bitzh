<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/28 0028
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>div+css餐饮模糊查询代码 </title>

    <link href="${pageContext.request.contextPath}/css/reseta.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/gbstylea.css" rel="stylesheet">


    <style type="text/css">
        table.mt {
            width: 950px;
            border-spacing: 0px;
            border-right:1px solid #aaa;
            border-bottom:1px solid #aaa;
        }
        table.mt td {
            border-left:1px solid #aaa;
            border-top:1px solid #aaa;
            padding:10px;
        }
        table.mt thead tr {
            background: orangered;
            color: #fff;
        }
        table.mt tbody tr:nth-child(even) {
            background: #eee;
        }
        table.mt tbody tr:hover {
            background: #ccc;
            color: #fff;
        }

    </style>

</head>
<body style="background:#f4f4f4;">
<!-- header begin -->
<div class="gbhead1">
    <div class="gbhedcontain">
        <p><img src="${pageContext.request.contextPath}/images/xgbicon.png">饿得慌堂食系统</p>
        <ul class="gbhdconul1">
            <li class="gbfl gbhdzs"><a href="#" title="" target="_blank">食材精选</a></li>
            <li class="gbfl">　｜　</li>
            <li class="gbfl"><a href="#" title="" target="_blank">手机上菜</a></li>
            <li class="gbfl">　｜　</li>
            <li class="gbfl wxewmli">
                <a href="#" title="" target="_blank">微信</a>
                <div class="wxewm"><img src="${pageContext.request.contextPath}/images/xdd.jpg" alt=""></div>
            </li>
            <li class="gbfl">　｜　</li>
            <li class="gbfl"><a href="#" title="" target="_self">联系我们</a></li>
        </ul>
    </div>
</div>
<div class="gbhead2">
    <div class="gbhdcon">
        <!---<div class="gblogo gbfl"><a href="#" title="K18餐饮加盟网"><img src="i/logo.png" alt=""></a></div>--->
        <div class="gbsecdivaa">
            <div class="gbsearch">
                <form id="form1" name="form1" action="${pageContext.request.contextPath}/caete/findName" method="post">
                    <input type="text" class="inp_text"  placeholder="请输入菜品名称.." name="cName" >
                    <input type="hidden" name="sid" value="">
                    <input type="submit" value="搜索" class="inp_sub log100_listen">
                </form>
            </div>
            <p class="gbssp">


            </p>
        </div>
        <div class="gbhykh gbfr">
            <div class="out outl5">
                <ul class="img imgl5">
                    <li style="display: list-item;"><a href="${pageContext.request.contextPath}/caete/selectShopping" title="" ><img src="${pageContext.request.contextPath}/images/201902131628142713058_meitu_1.jpg" alt=""></a></li>
                    <li style="display: none;"><a href="#" title="" target="_blank"><img src="${pageContext.request.contextPath}/images/201902131628542718111.jpg" alt=""></a></li>
                    <li style="display: none;"><a href="#" title="" target="_blank"><img src="${pageContext.request.contextPath}/images/201902281659422718293.jpg" alt=""></a></li>
                </ul>
                <ul class="num numl5"></ul>
                <div class="left btn"></div>
                <div class="right btn"></div>
            </div>
        </div>
    </div>
    <div class="gbnav">
        <div class="gbsjfl">
            <span><i></i>饿得慌餐厅简介</span>
            <ul>
                <!-- 选中给a添加check类名-->
                <li>
                    <p class="sxf1">热门菜</p>

                    <a href="#" title="" target="_blank">酸菜鱼</a>
                    <a href="#" title="" target="_blank">鱼香肉丝</a>
                    <a href="#" title="" target="_blank">回锅肉</a>
                    <a href="#" title="" target="_blank">宫保鸡丁</a>
                    <a href="#" title="" target="_blank">北京烤鸭</a>

                </li>
                <li>
                    <p class="sxf2">店面规模</p>

                    <a href="#" title="" target="_blank" class="check">中型餐馆</a>
                    <a href="#" title="" target="_blank">使用面积300m²</a>
                    <a href="#" title="" target="_blank">就餐座位150座</a>

                </li>

            </ul>
        </div>
        <ul class="nav_ul">
            <li><a href="${pageContext.request.contextPath}/caete/findFruits">新鲜水果<i></i></a></li>
            <li><a href="${pageContext.request.contextPath}/caete/findMeat">鲜美荤菜<i></i></a></li>
            <li><a href="${pageContext.request.contextPath}/caete/findDrinks">清凉冰饮<i></i></a></li>
            <li><a href="${pageContext.request.contextPath}/caete/findVegetable">爽口素菜<i></i></a></li>
            <li><a href="${pageContext.request.contextPath}/caete/findOthers">其他食品<i></i></a></li>
            <li><a href="#">敬请期待</a></li>
            <li><a href="#">敬请期待</a></li>
            <li><a href="#">敬请期待</a></li>
            <li><a href="#">敬请期待</a></li>
        </ul>
    </div>
</div>
<!-- header end -->

<div class="gbcont1" style="margin-left: 400px;">

    <!-- 动态遍历模糊查询输出需要找到的菜品-->
    <%if (request.getAttribute("findNameList")!=null){%>
    <table class="mt" >
        <thead>
        <tr>
            <td>菜品编号</td>
            <td>菜品名称</td>
            <td>菜品价格</td>
            <td>菜品数量</td>
            <td>菜品分量</td>
            <td>菜品种类</td>
            <td>加入购物车</td>
        </tr>
        </thead>
        <c:forEach items="${requestScope.findNameList}" var="caeteList1">
            <tbody>
            <tr>
                <td>${caeteList1.cId}</td>
                <td>${caeteList1.cName}</td>&nbsp;&nbsp;
                <td>${caeteList1.cPrice}</td>&nbsp;&nbsp;
                <td>${caeteList1.cCount}</td>&nbsp;&nbsp;
                <td>${caeteList1.cWeight}</td>&nbsp;&nbsp;
                <td>${caeteList1.cType}</td>
                <td><a href="${pageContext.request.contextPath}/caete/addShopping6?cId=${caeteList1.cId}">添加购物车</a></td>

            </tr>
            </tbody>
        </c:forEach>
    </table>
    <%}%>


</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: tpf
  Date: 11/16/17
  Time: 12:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>领取会员卡</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0,viewport-fit=cover">
    <link rel="stylesheet" href="plugins/weui/dist/style/weui.css"/>
    <link rel="stylesheet" href="plugins/weui/dist/example/example.css"/>
    <style type="text/css">
        .CardBtn {
            position: relative;
            display: block;
            margin-left: auto;
            margin-right: auto;
            padding-left: 14px;
            padding-right: 14px;
            box-sizing: border-box;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            color: #FFFFFF;
            line-height: 2.55555556;
            border-radius: 0px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            overflow: hidden;
        }
        .CardCells {
            margin-top: 0em;
            background-color: #FFFFFF;
            line-height: 1.47058824;
            font-size: 17px;
            overflow: hidden;
            position: relative;
            padding-top: 1.17647059em;
        }
        .page, body {
            background-color: #f8f8f8;
            overflow: hidden;
        }
    </style>
</head>
<body>
    <div class="page__hd">
        <h1 class="page__title"></h1>
        <%--<p class="page__desc"></p>--%>
    </div>
    <%-- <div class="weui-cells__title">领取会员卡</div> --%>
    <div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">卡号</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" type="number" pattern="[0-9]*" placeholder="请输入会员卡帐号"/>
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">密码</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" type="password" pattern="[0-9]*" placeholder="不少于6位"/>
            </div>
        </div>
    </div>
    <div class="weui-cells weui-cells_form">
        <a class="weui-btn weui-btn_primary CardBtn" href="javascript:" id="showTooltips">领取会员卡</a>
    </div>
</body>
<!-- 引入WeUI前端UI框架 -->
<script src="plugins/weui/dist/example/zepto.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
<script src="plugins/weui/dist/example/example.js"></script>
<script type="application/javascript">

</script>
</html>

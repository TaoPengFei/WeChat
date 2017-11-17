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
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=0.35,  user-scalable=no">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is Card Login Page">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0,viewport-fit=cover">

    <link rel="stylesheet" href="plugins/weui/dist/style/weui.css"/>
    <link rel="stylesheet" href="plugins/weui/dist/example/example.css"/>
    <script src="plugins/jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
    <style type="text/css">
        .page, body {
            background-color: #f8f8f8;
            overflow: hidden;
        }
    </style>
</head>
<body ontouchstart>
    <div class="weui-toptips weui-toptips_warn js_tooltips">错误提示</div>
    <div class="container" id="container"></div>
    <script type="text/html" id="tpl_home">
        <div class="page">
            <div class="page__hd"></div>
            <div class="page__bd page__bd_spacing">
                <ul>
                    <li>
                        <div class="weui-cell">
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
                        </div>
                    </li>
                    <li>
                        <div class="weui-cells weui-cells_form">
                            <a class="weui-btn weui-btn_primary" href="javascript:" id="showTooltips">领取会员卡</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </script>
</body><!-- 引入WeUI前端UI框架 -->
<script src="plugins/weui/dist/example/zepto.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
<script src="plugins/weui/dist/example/example.js"></script>
<script type="text/javascript">
    $(function(){
        var $tooltips = $('.js_tooltips');

        $('#showTooltips').on('click', function(){
            console.log('会员卡');
            $.ajax({
                url : "./Signature/getSignature.do",
                dataType : 'json',
                async: false,
                type : 'post',
                success : function(data) {
                    console.log(data);
                    var signature = data.signature;
                    var timestamp = data.timestamp;
                    var nonceStr = data.nonceStr;
                    // 通过config接口注入权限验证配置
                    wx.config({
                        debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
                        appId: 'wx929901e3e44556d6', // 必填，公众号的唯一标识
                        timestamp: timestamp , // 必填，生成签名的时间戳
                        nonceStr: nonceStr, // 必填，生成签名的随机串
                        signature: signature,// 必填，签名，见附录1
                        jsApiList: [
                            'addCard'
                        ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
                    });
                    // 通过ready接口处理成功验证
                    wx.ready(function(){
                        wx.addCard({
                            cardList: [{
                                cardId: 'pvZO5t5E6SrbXx3Ya_rx4778eJ9o',
                                cardExt: {
                                    code: '12121212',
                                    timestamp: timestamp,
                                    signature: signature
                                }
                            }], // 需要添加的卡券列表
                            success: function (res) {
                                var cardList = res.cardList; // 添加的卡券列表信息
                                console.log('------------- success ---------');
                                console.log(cardList);
                            },
                            fail: function (res) {
                                //var cardList = res.cardList; // 添加的卡券列表信息
                                console.log('------------- fail ---------');
                                console.log(res);
                            }
                        });
                    });
                    wx.error(function(res){
                        // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
                        console.log(res);
                        alert(res);
                    });
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log('------------- $.ajax()调用失败 ---------');
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });
            /*if ($tooltips.css('display') != 'none') return;

            // toptips的fixed, 如果有`animation`, `position: fixed`不生效
            $('.page.cell').removeClass('slideIn');

            $tooltips.css('display', 'block');*/
            /*setTimeout(function () {
                $tooltips.css('display', 'none');
            }, 2000);*/
        });
    });
</script>
</html>

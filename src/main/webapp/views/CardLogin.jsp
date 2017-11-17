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
    <div class="container" id="container">
        <div class="page home_js_show">
            <div class="page__bd page__bd_spacing">
                <ul>
                    <li>
                        <div class="weui-flex js_category">
                            <p class="weui-flex__item">表单</p>
                            <img src="./images/icon_nav_form.png" alt="">
                        </div>
                        <div class="page__category js_categoryInner">
                            <div class="weui-cell__hd"><label class="weui-label">会员卡号</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="number" pattern="[0-9]*" placeholder="请输入卡号"/>
                            </div>
                        </div>
                        <div class="weui-cells page__category-content">
                            <div class="weui-cell">
                                <a class="weui-cell weui-cell_access js_item" data-id="button" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Button</p>

                                    </div>

                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="input" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Input</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="list" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>List</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="slider" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Slider</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="uploader" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Uploader</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weui-flex js_category">
                            <p class="weui-flex__item">基础组件</p>
                            <img src="./images/icon_nav_layout.png" alt="">
                        </div>
                        <div class="page__category js_categoryInner">
                            <div class="weui-cells page__category-content">
                                <a class="weui-cell weui-cell_access js_item" data-id="article" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Article</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="badge" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Badge</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="flex" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Flex</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="footer" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Footer</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="gallery" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Gallery</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="grid" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Grid</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="icons" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Icons</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="loadmore" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Loadmore</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="panel" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Panel</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="preview" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Preview</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="progress" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Progress</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weui-flex js_category">
                            <p class="weui-flex__item">操作反馈</p>
                            <img src="./images/icon_nav_feedback.png" alt="">
                        </div>
                        <div class="page__category js_categoryInner">
                            <div class="weui-cells page__category-content">
                                <a class="weui-cell weui-cell_access js_item" data-id="actionsheet" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Actionsheet</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="dialog" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Dialog</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="msg" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Msg</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="picker" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Picker</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="toast" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Toast</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weui-flex js_category">
                            <p class="weui-flex__item">导航相关</p>
                            <img src="./images/icon_nav_nav.png" alt="">
                        </div>
                        <div class="page__category js_categoryInner">
                            <div class="weui-cells page__category-content">
                                <a class="weui-cell weui-cell_access js_item" data-id="navbar" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Navbar</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access js_item" data-id="tabbar" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Tabbar</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weui-flex js_category">
                            <p class="weui-flex__item">搜索相关</p>
                            <img src="./images/icon_nav_search.png" alt="">
                        </div>
                        <div class="page__category js_categoryInner">
                            <div class="weui-cells page__category-content">
                                <a class="weui-cell weui-cell_access js_item" data-id="searchbar" href="javascript:;">
                                    <div class="weui-cell__bd">
                                        <p>Search Bar</p>
                                    </div>
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="weui-flex js_item" data-id="layers">
                            <p class="weui-flex__item">层级规范</p>
                            <img src="./images/icon_nav_z-index.png" alt="">
                        </div>
                    </li>
                </ul>
            </div>
            <%--<div class="page_bd page_bd_spacing">
                <ui>
                    <li class="js_show">
                        <div class="weui-flex js_category"></div>
                        <div class="page__category js_categoryInner">
                            <div class="weui-cell_hd">
                                <label class="weui-label">卡号</label>
                            </div>
                            <div class="weui-cellbd">
                                <input class="weui-input" type="number" pattern="[0-9]*" placeholder="请输入会员卡帐号"/>
                            </div>
                        </div>
                        <div class="weui-cells page__category-content"></div>
                    </li>
                </ui>
            </div>--%>
        </div>

    </div>


    <!--
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
    -->
</body>
<!-- 引入WeUI前端UI框架 -->
<script src="plugins/weui/dist/example/zepto.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
<script src="plugins/weui/dist/example/example.js"></script>

<script type="application/javascript">

</script>
</html>

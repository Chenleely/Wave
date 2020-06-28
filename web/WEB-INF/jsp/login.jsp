<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="zxx">
<!--[endif]-->

<!--[if !IE]><!-->
<html lang="zxx">
<!--[endif]-->

<head>
    <meta charset="utf-8"/>
    <title>free music</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="description" content="Tunein,music,song"/>
    <meta name="keywords" content="Tunein,music,song"/>
    <meta name="author" content=""/>
    <meta name="MobileOptimized" content="320"/>
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/flaticon.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nice-select.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/swiper.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dark_theme.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/responsive.css"/>
</head>
<body>
    <script>
        if (!${empty user}){
            alert("不能重复登录!");
            window.location.href="${pageContext.request.contextPath }/index.jsp";
        }
    </script>
<div>
    <!-- login register  modal section -->
    <div class="modal fade lang_ms_banner" id="login_modal" role="dialog"
         style="display: block!important;opacity: 1!important;">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" onclick="javascript:window.history.back(-1);">
                    &times;
                </button>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">

                        <div class="m24_language_box ms_cover">
                            <h1>登录/注册</h1>
                            <p>畅享无限的音乐及个性化体验</p>
                        </div>
                        <div class="login_form_wrapper">

                            <div class="icon_form comments_form">

                                <input id="zh" type="text" class="form-control" name="full_name" placeholder="邮箱地址*">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="icon_form comments_form">

                                <input id="mm" type="password" class="form-control" placeholder="密码 *">
                                <i class="fas fa-lock"></i>
                            </div>
                            <div class="login_remember_box">
                                <label class="control control--checkbox">使我保持登录
                                    <input type="checkbox">
                                    <span class="control__indicator"></span>
                                </label>
                                <a href="#" class="forget_password">
                                    忘记密码 ?
                                </a>
                            </div>

                        </div>
                        <div class="lang_apply_btn_wrapper ms_cover">
                            <div class="lang_apply_btn">

                                <a href="#" id="btn">登录</a>

                            </div>
                            <div class="cancel_wrapper">
                                <a href="#" class="" data-dismiss="modal" onclick="javascript:window.history.back(-1);">取消</a>
                            </div>
                            <div class="dont_have_account ms_cover">
                                <p>没有账户 ? <a href="${pageContext.request.contextPath}/register.jsp" data-toggle="modal">在这里注册</a></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
    a = document.getElementById('zh');
    b = document.getElementById('mm');
    btn = document.getElementById('btn');
    btn.onclick = function () {
        if (a.value == '' || b.value == '') {
            alert('账号或密码不能为空！');
            return;
        }
        // if (a.value.length > 6 || b.value.length > 6) {
        //     alert('账号或密码长度不能超过6位！');
        //     return;
        // }
        var list = [];
        list.push(a.value);
        list.push(b.value);
        $.ajax({
            url:'${pageContext.request.contextPath }/user/logincheck',
            type:'POST',
            traditional:true,
            // contentType:'application/json;charset=utf-8',
            data:{list:list},
            // dataType:'String',
            success:function (data) {
                // alert("查询成功");
                if(data==='success'){
                    alert("登录成功");
                    window.location.href="${pageContext.request.contextPath}/index.jsp";
                }
                else{
                    alert("用户名或密码错误，请重新登录");
                }
            }
        })
        // alert('登录成功！');
        // window.history.go(-1);
    }
</script>
</body>
</html>

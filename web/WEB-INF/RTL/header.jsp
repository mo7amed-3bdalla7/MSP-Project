<%--
  Created by IntelliJ IDEA.
  User: m7md
  Date: 4/25/16
  Time: 11:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<%@ page errorPage="page_404.jsp" %>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html dir="rtl" lang="en"> <!--<![endif]-->

<!-- Cloned by RabinsXP.com-->
<head>
    <title><c:if test="${title == null}">الرئسيه</c:if>${title}</title>

    <!-- JS Global Compulsory -->
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>


    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="RTL/favicon.png">
    <!--<link rel="shortcut icon" href="favicon.png">-->

    <!-- Web Fonts
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>
<link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Oswald'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700'>-->

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap-rtl.min.css">
    <link rel="stylesheet" href="assets/css/css-rtl/style-rtl.css">


    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="assets/css/css-rtl/headers/header-default-rtl.css">
    <link rel="stylesheet" href="assets/css/css-rtl/footers/footer-v1-rtl.css">

    <link rel="stylesheet" href="../assets/plugins/animate.css">
    <link rel="stylesheet" href="../assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="../assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" href="../assets/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css"
          media="screen">
    <link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/css/sky-forms-rtl.css">
    <link rel="stylesheet" href="assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms-rtl.css">

    <!-- Style Switcher -->
    <link rel="stylesheet" href="../assets/css/plugins/style-switcher.css">

    <!-- CSS Theme -->
    <link rel="stylesheet" href="assets/css/css-rtl/theme-colors/default.css" id="style_color">
    <link rel="stylesheet" href="assets/css/css-rtl/theme-skins/dark.css">

    <!-- RTL Customization -->
    <link rel="stylesheet" href="assets/css/css-rtl/rtl.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/css-rtl/custom-rtl.css">

    <!-- my css Customization -->
    <link rel="stylesheet" href="assets/css/myStyles/myStyles.css">

    <!-- google font-->
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/droidarabickufi.css"/>


    <script type="text/javascript">
        // makes sure the whole site is loaded
        jQuery(window).load(function () {
            // will first fade out the loading animation
            jQuery("#status").delay(1000).fadeOut();
            // will fade out the whole DIV that covers the website.
            jQuery("#preloader").delay(1000).fadeOut("slow");
        })
    </script>
    <style type="text/css">


        .red {
            color: #ff3357;
        }

        #preloader {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: #ECF0F1;
            z-index: 9999;
            height: 100%;
            width: 100%;
        }

        #status {
            width: 920px;
            height: 532px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin: -266px 0 0 -460px;
            background: url(assets/carregar.gif) center no-repeat;
        }

        body, li, a, p, span, ul, input, label, h1, h2, h3, h4, h5, h6, div {
            font-family: 'Droid Arabic Kufi', serf !important;
        }

        ul.navbar-nav li a.navItem {
            font-size: 20px !important;
        }

    </style>


</head>

<body>

<div id="preloader" style="z-index: 100000000000">
    <div id="status"></div>
</div>

<!--=== Style Switcher ===-->
<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
<div class="style-switcher animated fadeInRight">
    <div class="style-swticher-header">
        <div class="style-switcher-heading">Style Switcher</div>
        <div class="theme-close"><i class="icon-close"></i></div>
    </div>

    <div class="style-swticher-body">
        <!-- Theme Colors -->
        <div class="style-switcher-heading">Theme Colors</div>
        <ul class="list-unstyled">
            <li class="theme-default last theme-active" data-style="default" data-header="light"></li>
            <li class="theme-blue" data-style="blue" data-header="light"></li>
            <li class="theme-orange" data-style="orange" data-header="light"></li>
            <li class="theme-red" data-style="red" data-header="light"></li>
            <li class="theme-dark-red" data-style="dark-red" data-header="light"></li>
            <li class="theme-teal" data-style="teal" data-header="light"></li>
        </ul>

        <!-- Theme Skins -->
        <div class="style-switcher-heading">Theme Skins</div>
        <div class="row no-col-space margin-bottom-20 skins-section">
            <div class="col-xs-6">
                <button data-skins="default"
                        class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn handle-skins-btn">Light
                </button>
            </div>
            <div class="col-xs-6">
                <button data-skins="dark" class="btn-u btn-u-xs btn-u-dark btn-block skins-btn">Dark</button>
            </div>
        </div>

        <hr>

        <!-- Layout Styles -->
        <div class="style-switcher-heading">Layout Styles</div>
        <div class="row no-col-space margin-bottom-20">
            <div class="col-xs-6">
                <a href="javascript:void(0);"
                   class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn wide-layout-btn">Wide</a>
            </div>
            <div class="col-xs-6">
                <a href="javascript:void(0);" class="btn-u btn-u-xs btn-u-dark btn-block boxed-layout-btn">Boxed</a>
            </div>
        </div>
        <hr>
    </div>
</div><!--/style-switcher-->
<!--=== End Style Switcher ===-->

<div class="wrapper">
    <!--=== Header ===-->
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="/">
                <img src="assets/img/msp2.png" alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">
                    <li class="hoverSelector">
                        <i class="fa fa-globe"></i>
                        <a>اﻟﻠﻐﺎﺕ</a>
                        <!-- <a>Languages</a> -->
                        <ul class="languages hoverSelectorBlock">
                            <li class="active">
                                <a href="#">اﻟﻌﺮﺑﻴﺔ <i class="fa fa-check"></i></a>
                            </li>
                            <li><a href="#">English</a></li>
                        </ul>
                    </li>
                    <li class="topbar-devider"></li>
                    <!--
                                        <li><a href="page_faq.html">Help</a></li>la
                                        <li class="topbar-devider"></li>
                    -->
                    <!--<li><a href="page_login.html">Login</a></li>-->


                    <c:choose>
                        <c:when test="${ user==null ||user.id==-1}">
                            <li><a href="login">ﺗﺴﺠﻴﻞ اﻟﺪﺧﻮﻝ</a></li>
                        </c:when>
                        <c:otherwise>

                            <li><a href="logout">ﺗﺴﺠﻴﻞ اﻟخروج</a></li>
                        </c:otherwise>
                    </c:choose>


                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div><!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                    <!-- Home -->
                    <li>
                        <a class="navItem" href="/" style="font-family: PF DIN Text Arabic; font-size: 23px;">
                            اﻟﺮﺋﻴﺴﻴﺔ
                        </a>
                    </li>
                    <!-- End Home -->
                    <!-- Pages -->
                    <li>
                        <a class="navItem" href="RTL/page_about1.html"
                           style="font-family: PF DIN Text Arabic; font-size: 23px;">
                            ﻋﻦ اﻟﻜﻠﻴﺔ
                        </a>
                        <!--                                <a href="page_about1.html" style=" font-family:PF DIN Text Arabic;
                                                           font-size:23px;">
                                                            ﻋﻦ اﻟﻜﻠﻴﺔ
                                                        </a>-->

                    </li>
                    <!-- End Pages -->

                    <!-- Blog -->
                    <li class="dropdown">
                        <a class="navItem" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                           style="font-family: PF DIN Text Arabic; font-size: 23px;">
                            اﻟﺒﺮاﻣﺞ اﻻﻛﺎﺩﻳﻤﻴﺔ
                        </a>
                        <ul class="dropdown-menu">

                            <li><a href="RTL/table.html"><strong>ﻣﺮﺣﻠﺔ اﻟﺒﻜﺎﻟﺮﻳﻮﺱ</strong></a></li>
                            <li><a href="#"><strong>ﻣﺮﺣﻠﺔ اﻟﺪﺭاﺳﺎﺕ اﻟﻌﻠﻴﺎ</strong></a></li>
                            <li><a href="#"><strong>ﻣﺮﺣﻠﺔ اﻟﻤﺎﺟﺴﺘﻴﺮ</strong></a></li>
                            <li><a href="#"><strong>ﻣﺮﺣﻠﺔ اﻟﺪﻛﺘﻮﺭاﻩ</strong></a></li>
                        </ul>
                    </li>
                    <!-- End Blog -->

                    <!-- Portfolio -->
                    <li>
                        <a class="navItem" href="RTL/news.html"
                           style="font-family: PF DIN Text Arabic; font-size: 23px;">
                            اﻷﺧﺒﺎﺭ
                        </a>
                    </li>
                    <!-- End Portfolio -->

                    <!-- Features -->
                    <li class="dropdown">
                        <a class="navItem" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                           style="font-family: PF DIN Text Arabic; font-size: 23px;">
                            اﻟﺘﺨﺼﺼﺎﺕ
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="RTL/cs.html"><strong>ﻋﻠﻮﻡ اﻟﺤﺎﺳﺐ </strong></a></li>
                            <li><a href="RTL/it.html"><strong>ﺗﻜﻨﻮﻟﻮﺟﻴﺎ اﻟﻤﻌﻠﻮﻣﺎﺕ</strong></a></li>
                            <li><a href="RTL/is.html"><strong>ﻧﻈﻢ اﻟﻤﻌﻠﻮﻣﺎﺕ</strong></a></li>
                            <li><a href="RTL/or.html"><strong>ﺑﺤﻮﺙ اﻟﻌﻤﻠﻴﺎﺕ </strong></a></li>
                        </ul>
                    </li>
                    <!-- End Features -->

                    <!-- Shortcodes -->
                    <li class="dropdown">
                        <a class="navItem" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                           style="font-family: PF DIN Text Arabic; font-size: 23px;">
                            اﻷﻧﺸﻄﺔ
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="RTL/sport.html"><strong>اﻟﻨﺸﺎﻁ اﻟﺮﻳﺎﺿﻰ </strong></a></li>
                            <li><a href="RTL/art.html"><strong>اﻟﻨﺸﺎﻁ اﻟﻔﻨﻰ</strong></a></li>
                            <li><a href="RTL/cultural.html"><strong>اﻟﻨﺸﺎﻁ اﻟﺜﻘﺎﻓﻰ</strong></a></li>
                            <li><a href="RTL/science.html"><strong>اﻟﺸﺎﻁ اﻟﻌﻠﻤﻰ ﻭ اﻟﺘﻜﻨﻮﻟﻮﺟﻰ </strong></a></li>
                            <li><a href="RTL/social.html"><strong>اﻟﻨﺸﺎﻁ اﻹﺟﺘﻤﺎﻋﻰ</strong></a></li>
                            <li><a href="RTL/gwala.html"><strong>اﻟﺠﻮاﻟﺔ ﻭ اﻟﺨﺪﻣﺔ اﻟﻌﺎﻣﺔ</strong></a></li>
                            <li><a href="RTL/jurney.html"><strong>اﻷﺳﺮ ﻭ اﻟﺮﺣﻼﺕ</strong></a></li>
                        </ul>
                    </li>
                    <c:if test="${user.type==3}">
                        <li class="dropdown">
                            <a id="navItem3" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                               style="font-family: PF DIN Text Arabic; font-size: 23px;">
                                الطالب
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/terms"><strong>اﻟمواد </strong></a></li>

                            </ul>
                        </li>

                    </c:if>


                    <c:if test="${user.type==2}">
                        <li class="dropdown">
                            <a id="navItem" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                               style="font-family: PF DIN Text Arabic; font-size: 23px;">
                                الدكتور
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/terms"><strong>اﻟمواد </strong></a></li>
                                <li><a href="/upload"><strong>رفع محاضره </strong></a></li>

                            </ul>
                        </li>

                    </c:if>

                    <c:if test="${user.type==1}">
                        <li class="dropdown">
                            <a class="navItem" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                               style="font-family: PF DIN Text Arabic; font-size: 23px;">
                                المسئول
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/signup"><strong>تسجيل مستخدم جديد </strong></a></li>

                            </ul>
                        </li>

                    </c:if>


                    <!-- Search Block -->
                    <li>
                        <i class="search fa fa-search search-btn"></i>
                        <div class="search-open">
                            <div class="input-group animated fadeInDown">
                                <input type="text" class="form-control" placeholder="Search">
                                        <span class="input-group-btn">
                                            <button class="btn-u" type="button">Go</button>
                                        </span>
                            </div>
                        </div>
                    </li>
                    <!-- End Search Block -->
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=== End Header ===-->
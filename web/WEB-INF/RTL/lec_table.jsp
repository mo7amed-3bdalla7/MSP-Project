<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@include file="header.jsp" %>
<c:if test="${user.id<0}">
    <c:redirect url="/"/>
</c:if>


<!--=== Header v7 Left ===-->
<div class="header-v7 header-left-v7">
    <nav class="navbar navbar-default mCustomScrollbar" role="navigation" data-mcs-theme="minimal-dark">

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-responsive-collapse">
            <div class="menu-container">
                <ul id="matrial" class="nav navbar-nav">
                    <!-- Home -->
                    <li class="">
                        <a href="/subject/${Materials.get(0).subjectId}">
                            الصفحة الرئيسية
                        </a>
                    </li>
                    <!-- End Home -->

                    <!-- About Pages -->
                    <li class="active">
                        <a href="#">
                            المحاضرات
                        </a>

                    </li>


                </ul>

            </div>
        </div>
        <!-- End Navbar Collapse -->
    </nav>
</div>
<!--=== End Header v7 Left ===-->

<!--///////////////////////////////////////////////////////////////////////////////////////////-->


<center>
    <div id="contentTable" class="row">
        <!--Striped Rows-->
        <div class="col-md-12">
            <div class="panel panel-sea margin-bottom-40">
                <div class="panel-heading">
                    <h2 class="panel-title" style="font-size: x-large"><i class="fa fa-edit"></i> محاضرات ماده هندسة
                        البرمجيات
                    </h2>
                </div>


                <table class="table table-bordered">
                    <thead style="font-size: medium">
                    <tr>
                        <th>اسم المحاضره</th>
                        <th class="hidden-sm">تحميل المحاضره</th>

                    </tr>
                    </thead>
                    <tbody>


                    <c:forEach items="${Materials}" var="item">
                        <tr>
                            <td>${item.name}</td>

                            <td class="hidden-sm"><a download
                                                     href="
   <c:choose>
    <c:when test='${item.url.contains("http")}'>
       ${item.url}
    </c:when>
    <c:otherwise>
    /uploads/${item.url}
    </c:otherwise>
</c:choose>"
                                                     class="btn-u btn-u-aqua"
                                                     type="button"><i class="fa fa-cloud-download"></i> تحميل</a>

                                <a
                                                     href="
   <c:choose>
    <c:when test='${item.url.contains("http")}'>
       ${item.url}
    </c:when>
    <c:otherwise>
    /uploads/${item.url}
    </c:otherwise>
</c:choose>"
                                                     class="btn-u btn-u-aqua"
                                                     type="button"><i class="fa fa-eye"></i> معاينه</a></td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!--End Striped Rows-->

    </div>
</center>


<!--////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<!--=== Footer Version 1 ===-->
<div class="footer-v1">
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- About -->
                <div class="col-md-3 md-margin-bottom-40">
                    <!--                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="../assets/img/logo2-default.png" alt=""></a> -->
                    <a href="index.html"><img id="logo-footer" class="footer-logo" src="../assets/img/msp2.png"
                                              alt=""></a>
                    <p style="font-size:16px;font-family:alHor;">
                        &ldquo;ﻟﻘﺪ ﻛﺎﻥ ﺣﻠﻤﺎ اﻥ ﺗﻜﻮﻥ ﺑﺠﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﻭ ﺗﺤﻘﻖ ﺑﻔﻀﻞ اﻟﻠﻪ ﻭ
                        ﺑﻔﻀﻞ اﻟﻌﻠﻤﺎء ﻭ اﻷﺳﺎﺗﺬﺓ اﻷﻓﺎﺿﻞ اﻟﺬﻳﻦ ﻗﺎﺩﻭا ﻫﺬﻩ اﻟﺠﺎﻣﻌﺔ ﺑﻜﻞ اﺧﻼﺹ ﺣﺘﻰ اﺻﺒﺢ ﺣﻠﻤﻨﺎ ﺣﻘﻴﻘﺔ ﻭاﻗﻌﺔ
                        ﺑﻌﺪ ﺗﺨﺮﺝ ﻋﺪﺓ ﺩﻓﻌﺎﺕ ﻣﻦ اﻟﻜﻠﻴﺔ ﺣﺘﻰ اﻵﻥ اﻧﺘﺸﺮﻭا ﻓﻰ اﻟﻌﻤﻞ ﺑﻤﺨﺘﻠﻒ اﻟﺸﺮﻛﺎﺕ ﻭ اﻟﻤﺼﺎﻧﻊ&ldquo;
                    </p>
                </div><!--/col-md-3-->
                <!-- End About -->

                <!-- Latest -->
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="posts">
                        <div class="headline"><h2>ﺃﺧﺮ اﻹﺿﺎﻓﺎﺕ</h2></div>
                        <ul class="list-unstyled latest-list">
                            <li>
                                <a href="news.html">اﻻﺧﺒﺎﺭ</a>
                                <small>May 8, 2016</small>
                            </li>
                            <li>
                                <a href="#latestShot">اﺧﺮ اﻟﻠﻘﻄﺎﺕ</a>
                                <small>June 23, 2016</small>
                            </li>
                            <li>
                                <a href="news.html">اﻟﻨﺪﻭاﺕ</a>
                                <small>September 15, 2016</small>
                            </li>
                        </ul>
                    </div>
                </div><!--/col-md-3-->
                <!-- End Latest -->

                <!-- Link List -->
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="headline"><h2>ﺭﻭاﺑﻂ ﻣﻬﻤﺔ</h2></div>
                    <ul class="list-unstyled link-list">
                        <li><a href="index.html">اﻟﺮﺋﻴﺴﻴﺔ</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="page_about1.html">ﻋﻦ اﻟﻜﻠﻴﺔ</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="page_about1.html">اﻟﺘﻘﺪﻳﻢ ﻭ اﻟﻘﺒﻮﻝ</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">اﻷﺑﺤﺎﺙ اﻟﻌﻠﻤﻴﺔ</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div><!--/col-md-3-->
                <!-- End Link List -->

                <!-- Address -->
                <div class="col-md-3 map-img md-margin-bottom-40">
                    <div class="headline"><h2>اﺗﺼﻞ ﺑﻨﺎ </h2></div>
                    <address class="md-margin-bottom-40">
                        25 ﺷﺎﺭﻉ ﺟﻤﺎﻝ ﻋﺒﺪاﻟﻨﺎﺻﺮ <br/>
                        ﺷﺒﻴﻦ اﻟﻜﻮﻡ , اﻟﻤﻨﻮﻓﻴﺔ <br/>
                        048/2225446 :ﺗﻠﻴﻔﻮﻥ<br/>
                        048/2223694 :ﻓﺎﻛﺲ <br/>
                        اﻳﻤﻴﻞ: <a href="mailto:compu_info@menofia.edu.eg" class="">info@fci.com</a>
                    </address>
                </div><!--/col-md-3-->
                <!-- End Address -->
            </div>
        </div>
    </div>

<%@include file="footer.jsp" %>
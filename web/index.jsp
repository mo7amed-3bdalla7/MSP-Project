<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="WEB-INF/RTL/header.jsp" %>

<!--=== Slider ===-->
<div class="slider-inner">
    <div id="da-slider" class="da-slider">
        <div class="da-slide">
            <h2><i>ﺑﺪاﻳﺔ اﻟﺘﺮﻡ اﻟﺜﺎﻧﻰ</i> <br/> <i>ﻣﻦ اﻟﻌﺎﻡ اﻟﺪﺭاﺳﻰ اﻟﺠﺪﻳﺪ</i> <br/> <i>ﻓﻰ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ</i></h2>
            <p><i>ﺗﺮﻡ ﺛﺎﻧﻰ ﺳﻌﻴﺪ</i> <br/> <i>ﺑﺪاﻳﺔ ﻓﻌﺎﻟﺔ ﻣﻦ اﻟﻄﻠﺒﺔ</i> <br/> <i> ﺑﺎﻟﻨﺠﺎﺡ ﻭ اﻟﺘﻮﻓﻴﻖ</i></p>
            <!--<div class="da-img"><img class="img-responsive"  width="530" height="300" src="../assets/plugins/parallax-slider/img/fci.jpg" alt=""></div>-->
            <div class="da-img"><img style="height: 280px" class="img-responsive" width="530" height="270"
                                     src="assets/img/main/news1.jpg" alt=""></div>
        </div>
        <div class="da-slide">
            <h2><i>ﻓﻴﺪﻳﻮ ﻗﺼﻴﺮ ﻋﻦ اﻟﻜﻠﻴﺔ</i> <br/> <i>ﻧﺸﺄﺗﻬﺎ</i> <br/> <i>ﻭ ﺗﻔﺎﺻﻴﻞ ﻋﻨﻬﺎ</i></h2>
            <div class="da-img">
                <!--<iframe width="530" height="300" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>-->
                <!--<iframe src="../assets/video/code_jame.mp4" width="530" height="300" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>-->
                <video controls="" width="530" height="300" poster="assets/video/codeJame.png">
                    <source src="assets/video/code_jame.mp4">
                </video>
            </div>
        </div>
        <div class="da-slide">
            <h2><i> ﺗﺴﺘﻠﻢ اﻟﻜﻠﻴﺔ اﻟﻤﺒﻨﻰ اﻟﺠﺪﻳﺪ </i> <br/> <i>ﻣﻊ ﺑﺪاﻳﺔ اﻟﻌﺎﻡ </i> <br/> <i>اﻟﺪﺭاﺳﻰ اﻟﻘﺎﺩﻡ</i></h2>
            <p><i>ﻣﺒﻨﻰ ﻋﻠﻰ اﻋﻠﻰ </i> <br/> <i>اﻟﻤﻮاﺻﻔﺎﺕ اﻟﻌﺎﻟﻤﻴﺔ</i> <br/> <i>ﺻﺮﺡ ﻋﻠﻤﻰ ﺟﺪﻳﺪ ﻓﻰ اﻟﺠﺎﻣﻌﺔ </i></p>
            <div class="da-img"><img width="530" height="270" src="assets/img/main/slider1.jpg" alt="image01"/></div>
        </div>
        <div class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </div>
    </div>
</div>
<!--/slider-->
<!--=== End Slider ===-->

<!--=== Content Part ===-->
<div class="container content-sm">
    <!-- Service Blocks -->
    <div id="description" class="row margin-bottom-30">
        <div class="col-md-4">
            <div class="service">
                <i class="fa fa-university service-icon"></i>
                <div class="desc">
                    <h4>${user.id}ﻧﺸﺄﺓ اﻟﻜﻠﻴﺔ</h4>
                    <!--
                                            <p >ﻭاﻓﻖ ﻣﺠﻠﺲ ﺟﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ ﺑﺘﺎﺭﻳﺦ 18/6/2000 ﻋﻠﻰ اﻧﺸﺎء ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﻛﻤﺎ ﻭاﻓﻖ اﻟﻤﺠﻠﺲ اﻷﻋﻠﻰ ﻟﻠﺠﺎﻣﻌﺎﺕ ﻋﻠﻰ اﻧﺸﺎء اﻟﻜﻠﻴﺔ ﻭ اﻋﺘﻤﺎﺩ اﻻﺋﺤﺔ اﻟﺪاﺧﻠﻴﺔ ﻟﻬﺎ ﻭ ﻫﻰ ﺑﺬﻟﻚ ﻣﻦ اﻭﻟﻰ ﻛﻠﻴﺎﺕ اﻟﺤﺎﺳﺒﺎﺕ ﻭاﻟﻤﻌﻠﻮﻣﺎﺕ ﻓﻰ ﻣﺼﺮ ﻭ ﺻﺪﺭ اﻟﻘﺮاﺭ ﺑﺎﻧﺸﺎء اﻟﻜﻠﻴﺔ ﺑﻬﺪﻑ اﻟﻤﺴﺎﻫﻤﺔ اﻟﻔﻌﺎﻟﺔ ﻓﻰ ﺧﺪﻣﺔ اﻟﻤﺠﺘﻤﻊ ﻭ ﺇﺗﺎﺣﺔ اﻟﻔﺮﺻﺔ ﺃﻣﺎﻡ اﻟﺠﻤﻴﻊ ﻟﺘﻌﻠﻢ ﺗﻘﻨﻴﺎﺕ اﻟﺤﺎﺳﺒﺎﺕ ﻭ ﻧﻈﻢ اﻟﻤﻌﻠﻮﻣﺎﺕ </p>
                    -->
                    <p>
                        ﺃﻧﺸﺌﺖ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭاﻟﻤﻌﻠﻮﻣﺎﺕ ﺑﻤﻮﺟﺐ اﻟﻘﺮاﺭ اﻟﺠﻤﻬﻮﺭﻱ ﺭﻗﻢ (292) ﻟﺴﻨﺔ 2001 ﻭﺑﺪﺃﺕ اﻟﺪﺭاﺳﺔ ﺑﻬﺎ ﻓﻲ
                        اﻟﻌﺎﻡ اﻟﺠﺎﻣﻌﻲ 2001/2002 ﻡ ﻭ ﺻﺪﺭ اﻟﻘﺮاﺭ ﺑﺎﻧﺸﺎء اﻟﻜﻠﻴﺔ ﺑﻬﺪﻑ اﻟﻤﺴﺎﻫﻤﺔ اﻟﻔﻌﺎﻟﺔ ﻓﻰ ﺧﺪﻣﺔ اﻟﻤﺠﺘﻤﻊ ﻭ
                        ﺇﺗﺎﺣﺔ اﻟﻔﺮﺻﺔ ﺃﻣﺎﻡ اﻟﺠﻤﻴﻊ ﻟﺘﻌﻠﻢ ﺗﻘﻨﻴﺎﺕ اﻟﺤﺎﺳﺒﺎﺕ ﻭ ﻧﻈﻢ اﻟﻤﻌﻠﻮﻣﺎﺕ
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="service">
                <i class="fa  fa-graduation-cap service-icon"></i>
                <div class="desc">
                    <h4>ﺭﺅﻳﺔ اﻟﻜﻠﻴﺔ </h4>
                    <p>ﺗﺴﻌﻰ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﺑﺠﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ اﻟﻰ اﻟﺘﻤﻴﺰ اﻟﻌﻠﻤﻰ ﻭ اﻟﺒﺤﺜﻰ ﻓﻰ ﻣﺠﺎﻝ اﻟﺤﺎﺳﺒﺎﺕ ﻭ
                        اﻟﻤﻌﻮﻣﺎﺕ ﻣﺤﻠﻴﺎ ﻭ اﻗﻠﻴﻤﻴﺎ</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="service">
                <i class="fa fa-envelope-square service-icon"></i>
                <!--<i class="fa fa-rocket service-icon"></i>-->
                <div class="desc">
                    <h4>ﺭﺳﺎﻟﺔ اﻟﻜﻠﻴﺔ</h4>
                    <p>ﺗﻌﻤﻞ اﻟﻜﻠﻴﺔ ﻋﻠﻰ اﻋﺪاﺩ ﺧﺮﻳﺞ ﻣﺘﻤﻴﺰ ﻗﺎﺩﺭ ﻋﻠﻰ اﻟﻤﻨﺎﻓﺴﺔ ﻓﻰ ﺳﻮﻕ اﻟﻌﻤﻞ اﻟﻤﺤﻠﻰ ﻭ اﻷﻗﻠﻴﻤﻴﻰ ﻓﻰ ﻣﺠﺎﻻﺕ
                        اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﻣﻊ اﻹﺳﻬﺎﻡ ﻓﻰ ﺧﺪﻣﺔ اﻟﻤﺠﺘﻤﻊ اﻟﻤﺤﻠﻰ ﻭ ﺇﺛﺮاء اﻟﺒﺤﺚ اﻟﻌﻠﻤﻰ</p>
                </div>
            </div>
        </div>
    </div>
    <!-- End Service Blokcs -->

    <!-- Recent Works -->

    <div class="headline"><h2>ﺃﺧﺮ اﻻﺧﺒﺎﺭ </h2></div>
    <div id="news" class="row margin-bottom-20">
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="assets/img/main/fci/drOsama.jpg" alt="">
                    </div>
                    <a class="btn-more hover-effect" href="RTL/news.html">اﻗﺮﺃ اﻟﻤﺰﻳﺪ +</a>
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">اﻟﺨﺒﺮ اﻷﻭﻝ</a></h3>
                    <p>ﺩﻛﺘﻮﺭ ﺃﺳﺎﻣﺔ ﻋﺒﺪ اﻟﺮﺅﻭﻑ ﻳﻨﺎﻗﺶ اﻟﻄﻠﺒﺔ ﻓﻰ ﺑﻌﺾ اﻟﻤﺸﻜﻼﺕ اﻟﺘﻰ ﺗﻮاﺟﻬﻬﻢ ﺃﺛﻨﺎء اﻟﺪﺭاﺳﺔ ﺃﻭ اﻻﻣﺘﺤﺎﻧﺎﺕ</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="assets/img/main/fci/moltqa.jpg" alt="">
                    </div>
                    <a class="btn-more hover-effect" href="RTL/news.html">اﻗﺮﺃ اﻟﻤﺰﻳﺪ +</a>
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">اﻟﺨﺒﺮ اﻟﺜﺎﻧﻰ</a></h3>
                    <p>ﺭﺋﻴﺲ اﻟﺠﺎﻣﻌﺔ ﻭ اﻋﻀﺎء ﻣﺠﻠﺲ اﻟﻜﻠﻴﺔ ﻳﻮﺯﻋﻮﻥ اﻟﺠﻮاﺋﺰ ﻋﻠﻰ اﻟﻔﺎﺋﺰﻳﻦ ﻓﻰ اﻟﻤﺴﺎﺑﻘﺎﺕ اﻟﻤﻘﺎﻣﺔ ﻋﻠﻰ ﻫﺎﻣﺶ ﻣﻠﺘﻘﻰ
                        ﺣﺎﺳﺒﺎﺕ ﻣﺼﺮ</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="assets/img/main/fci/moltqa1.jpg" alt="">
                    </div>
                    <a class="btn-more hover-effect" href="RTL/news.html">اﻗﺮﺃ اﻟﻤﺰﻳﺪ +</a>
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">اﻟﺨﺒﺮ اﻟﺜﺎﻟﺚ </a></h3>
                    <p> ﺩﻛﺘﻮﺭ ﺃﺳﺎﻣﺔ ﻋﺒﺪ اﻟﺮﺅﻭﻑ ﻳﻘﺎﺑﻞ اﻟﻄﻠﺒﺔ ﻣﻦ ﺟﻤﻴﻊ ﻛﻠﻴﺎﺕ اﻟﺤﺎﺳﺒﺎﺕ ﻓﻰ ﻣﻠﺘﻘﻰ ﺣﺎﺳﺒﺎﺕ ﻣﺼﺮ اﻟﺘﻰ ﺗﺴﺘﻀﻴﻔﻪ
                        اﻟﺠﺎﻣﻌﺔ </p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="assets/img/main/fci/build.jpg" alt="">
                    </div>
                    <a class="btn-more hover-effect" href="RTL/news.html">اﻗﺮﺃ اﻟﻤﺰﻳﺪ +</a>
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">اﻟﺨﺒﺮ اﻟﺮاﺑﻊ</a></h3>
                    <p>ﺗﺴﺘﻠﻢ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ اﻟﻤﺒﻨﻰ اﻟﺠﺪﻳﺪ ﻟﻬﺎ ﻣﻊ ﺑﺪاﻳﺔ اﻟﻌﺎﻡ اﻟﺪﺭاﺳﻰ اﻟﻘﺎﺩﻡ </p>
                </div>
            </div>
        </div>
    </div>
    <!-- End Recent Works -->

    <!-- Info Blokcs -->
    <div class="row margin-bottom-30">
        <!-- Welcome Block -->
        <div id="info" class="col-md-8 md-margin-bottom-40">
            <div class="headline"><h2>اﻫﻼ ﺑﻚ ﻓﻰ اﻟﻜﻠﻴﺔ</h2></div>
            <div class="row">
                <div class="col-sm-4">
                    <img class="img-responsive margin-bottom-20" src="assets/img/main/fci/build.jpg" alt="">
                </div>
                <div class="col-sm-8" style="font-size: 17px;">
                    <p>ﻭاﻓﻖ ﻣﺠﻠﺲ ﺟﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ ﺑﺘﺎﺭﻳﺦ 18/6/2000 ﻋﻠﻰ اﻧﺸﺎء ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﻛﻤﺎ ﻭاﻓﻖ اﻟﻤﺠﻠﺲ
                        اﻷﻋﻠﻰ ﻟﻠﺠﺎﻣﻌﺎﺕ ﻋﻠﻰ اﻧﺸﺎء اﻟﻜﻠﻴﺔ ﻭ اﻋﺘﻤﺎﺩ اﻻﺋﺤﺔ اﻟﺪاﺧﻠﻴﺔ ﻟﻬﺎ ﻭ ﻫﻰ ﺑﺬﻟﻚ ﻣﻦ اﻭﻟﻰ ﻛﻠﻴﺎﺕ اﻟﺤﺎﺳﺒﺎﺕ
                        ﻭاﻟﻤﻌﻠﻮﻣﺎﺕ ﻓﻰ ﻣﺼﺮ ﻭ ﺗﻀﻢ اﻻﻗﺴﺎﻡ ﻛﺎﻟﺘﺎﻟﻰ : </p>
                    <ul class="list-unstyled margin-bottom-20">
                        <li><i class="fa fa-check color-green"></i> ﻗﺴﻢ ﻋﻠﻮﻡ اﻟﺤﺎﺳﺐ</li>
                        <li><i class="fa fa-check color-green"></i> ﻗﺴﻢ ﺗﻜﻨﻮﻟﻮﺟﻴﺎ اﻟﻤﻌﻠﻮﻣﺎﺕ</li>
                        <li><i class="fa fa-check color-green"></i> ﻗﺴﻢ ﻧﻈﻢ اﻟﻤﻌﻠﻮﻣﺎﺕ</li>
                        <li><i class="fa fa-check color-green"></i> ﻗﺴﻢ ﺑﺤﻮﺙ اﻟﻌﻤﻠﻴﺎﺕ ﻭ ﺩﻋﻢ اﺗﺨﺎﺫ اﻟﻘﺮاﺭ</li>
                    </ul>
                </div>
            </div>

            <blockquote class="hero-unify" style="font-size: 17px;">
                <p>" ﻟﻘﺪ ﻛﺎﻥ ﺣﻠﻤﺎ اﻥ ﺗﻜﻮﻥ ﺑﺠﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﻭ ﺗﺤﻘﻖ ﺑﻔﻀﻞ اﻟﻠﻪ ﻭ ﺑﻔﻀﻞ اﻟﻌﻠﻤﺎء ﻭ
                    اﻷﺳﺎﺗﺬﺓ اﻷﻓﺎﺿﻞ اﻟﺬﻳﻦ ﻗﺎﺩﻭا ﻫﺬﻩ اﻟﺠﺎﻣﻌﺔ ﺑﻜﻞ اﺧﻼﺹ ﺣﺘﻰ اﺻﺒﺢ ﺣﻠﻤﻨﺎ ﺣﻘﻴﻘﺔ ﻭاﻗﻌﺔ ﺑﻌﺪ ﺗﺨﺮﺝ ﻋﺪﺓ ﺩﻓﻌﺎﺕ ﻣﻦ
                    اﻟﻜﻠﻴﺔ ﺣﺘﻰ اﻵﻥ اﻧﺘﺸﺮﻭا ﻓﻰ اﻟﻌﻤﻞ ﺑﻤﺨﺘﻠﻒ اﻟﺸﺮﻛﺎﺕ ﻭ اﻟﻤﺼﺎﻧﻊ"</p>
            </blockquote>
        </div><!--/col-md-8-->

        <!-- Latest Shots -->
        <div id="latestShot" class="col-md-4">
            <div class="headline"><h2>ﺃﺧﺮ اﻟﻠﻘﻄﺎﺕ</h2></div>
            <div id="myCarousel" class="carousel slide carousel-v1">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="assets/img/main/fci/grade.jpg" alt="">
                        <div class="carousel-caption">
                            <p>اﻟﻜﻠﻴﺔ ﺗﺤﺘﻔﻞ ﺑﺘﺨﺮﻳﺞ ﺩﻓﻌﺔ ﺟﺪﻳﺪﺓ ﻣﻦ اﻟﺨﺮﻳﺠﻴﻦ ﻟﺴﻨﺔ 2016 ﺑﺤﻀﻮﺭ ﺭﺋﻴﺲ اﻟﺠﺎﻣﻌﺔ.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/img/main/fci/build.jpg" alt="">
                        <div class="carousel-caption">
                            <p>ﺣﺎﺳﺒﺎﺕ اﻟﻤﻨﻮﻓﻴﺔ ﺗﺴﺘﻀﻴﻒ ﻣﻠﺘﻘﻰ ﺣﺎﺳﺒﺎﺕ ﻣﺼﺮ ﺑﺤﻀﻮﺭ ﺭﺅﺳﺎء اﻟﺠﺎﻣﻌﺎﺕ.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/img/main/fci/moltqa1.jpg" alt="">
                        <div class="carousel-caption">
                            <p>ﺩﻛﺘﻮﺭ ﺃﺳﺎﻣﺔ ﻋﺒﺪاﻟﺮﺅﻭﻑ ﻳﻠﺘﻘﻰ ﺑﻄﻠﺒﺔ ﺣﺎﺳﺒﺎﺕ ﻣﺼﺮ ﻓﻰ ﺟﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/img/main/fci/moltqa.jpg" alt="">
                        <div class="carousel-caption">
                            <p>ﺭﺋﻴﺲ اﻟﺠﺎﻣﻌﺔ ﻳﻜﺮﻡ ﻃﻼﺏ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ اﻟﻔﺎﺋﺰﻳﻦ ﻓﻰ اﻟﻨﺸﺎﻁ اﻟﺠﺎﻣﻌﻰ</p>
                        </div>
                    </div>
                </div>

                <div class="carousel-arrow">
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
            </div>
        </div><!--/col-md-4-->
    </div>
    <!-- End Info Blokcs -->

    <!-- Owl Clients v1 -->

    <!-- End Owl Clients v1 -->
</div>
<!--/container-->
<!-- End Content Part -->

<!--=== Footer Version 1 ===-->
<div class="footer-v1">
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- About -->
                <div class="col-md-3 md-margin-bottom-40">
                    <!--                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="../assets/img/logo2-default.png" alt=""></a> -->
                    <a href="index.html"><img id="logo-footer" class="footer-logo" src="assets/img/msp2.png" alt=""></a>
                    <p style="font-size:16px;font-family:alHor;">
                        &ldquo;ﻟﻘﺪ ﻛﺎﻥ ﺣﻠﻤﺎ اﻥ ﺗﻜﻮﻥ ﺑﺠﺎﻣﻌﺔ اﻟﻤﻨﻮﻓﻴﺔ ﻛﻠﻴﺔ اﻟﺤﺎﺳﺒﺎﺕ ﻭ اﻟﻤﻌﻠﻮﻣﺎﺕ ﻭ ﺗﺤﻘﻖ ﺑﻔﻀﻞ اﻟﻠﻪ ﻭ ﺑﻔﻀﻞ
                        اﻟﻌﻠﻤﺎء ﻭ اﻷﺳﺎﺗﺬﺓ اﻷﻓﺎﺿﻞ اﻟﺬﻳﻦ ﻗﺎﺩﻭا ﻫﺬﻩ اﻟﺠﺎﻣﻌﺔ ﺑﻜﻞ اﺧﻼﺹ ﺣﺘﻰ اﺻﺒﺢ ﺣﻠﻤﻨﺎ ﺣﻘﻴﻘﺔ ﻭاﻗﻌﺔ ﺑﻌﺪ ﺗﺨﺮﺝ
                        ﻋﺪﺓ ﺩﻓﻌﺎﺕ ﻣﻦ اﻟﻜﻠﻴﺔ ﺣﺘﻰ اﻵﻥ اﻧﺘﺸﺮﻭا ﻓﻰ اﻟﻌﻤﻞ ﺑﻤﺨﺘﻠﻒ اﻟﺸﺮﻛﺎﺕ ﻭ اﻟﻤﺼﺎﻧﻊ&ldquo;
                    </p>
                </div><!--/col-md-3-->
                <!-- End About -->

                <!-- Latest -->
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="posts">
                        <div class="headline"><h2>ﺃﺧﺮ اﻹﺿﺎﻓﺎﺕ</h2></div>
                        <ul class="list-unstyled latest-list">
                            <li>
                                <a href="RTL/news.html">اﻻﺧﺒﺎﺭ</a>
                                <small>May 8, 2016</small>
                            </li>
                            <li>
                                <a href="#latestShot">اﺧﺮ اﻟﻠﻘﻄﺎﺕ</a>
                                <small>June 23, 2016</small>
                            </li>
                            <li>
                                <a href="RTL/news.html">اﻟﻨﺪﻭاﺕ</a>
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
                        <li><a href="RTL/page_about1.html">ﻋﻦ اﻟﻜﻠﻴﺔ</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="RTL/page_about1.html">اﻟﺘﻘﺪﻳﻢ ﻭ اﻟﻘﺒﻮﻝ</a><i class="fa fa-angle-right"></i></li>
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
    <%@include file="WEB-INF/RTL/footer.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@include file="header.jsp" %>
<c:if test="${user.id>0}">
    <c:redirect url="/"/>
</c:if>

<!--=== Header v7 Left ===-->
<div class="header-v7 header-left-v7">
    <nav class="navbar navbar-default mCustomScrollbar" role="navigation" data-mcs-theme="minimal-dark">
        <!-- Brand and toggle get grouped for better mobile display -->
        <!--<div class="menu-container">-->
        <!--&lt;!&ndash; Toggle get grouped for better mobile display &ndash;&gt;-->
        <!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">-->
        <!--<span class="sr-only">Toggle navigation</span>-->
        <!--<span class="icon-bar"></span>-->
        <!--<span class="icon-bar"></span>-->
        <!--<span class="icon-bar"></span>-->
        <!--</button>-->
        <!--&lt;!&ndash; End Toggle &ndash;&gt;-->

        <!--&lt;!&ndash; Logo &ndash;&gt;-->
        <!--<div class="logo">-->
        <!--<a href="index.html">-->
        <!--<img id="logo-header" src="../assets/img/msp2.png" alt="Logo">-->
        <!--</a>-->
        <!--</div>-->
        <!--&lt;!&ndash; End Logo &ndash;&gt;-->
        <!--</div>-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-responsive-collapse">
            <div class="menu-container">
                <ul id="matrial" class="nav navbar-nav">
                    <!-- Home -->
                    <li class="dropdown active">
                        <a href="test.html">
                            الصفحة الرئيسية
                        </a>
                    </li>
                    <!-- End Home -->

                    <!-- About Pages -->
                    <li class="dropdown">
                        <a href="#">
                            المنهج
                        </a>

                    </li>
                    <!-- End About Pages -->

                    <!-- Blog -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            مدة الكورس
                        </a>

                    </li>
                    <!-- End Blog -->

                    <!-- Contacts -->
                    <li class="dropdown">
                        <a href="test2.html">
                            المحتوى
                        </a>

                    </li>
                    <!-- End Contacts -->

                    <!-- Misc Pages -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            تنزيل المحتوى
                        </a>

                    </li>
                    <!-- End Misc Pages -->
                </ul>

            </div>
        </div>
        <!-- End Navbar Collapse -->
    </nav>
</div>
<!--=== End Header v7 Left ===-->

<!--///////////////////////////////////////////////////////////////////////////////////////////-->
<div id="matmain" class="content-side-right">
    <!-- Interactive Slider -->
    <div class="interactive-slider-v1 img-v3">
        <div class="container">

            <center><h2>${subjects.name}</h2></center>
        </div>
    </div>
    <!-- End Interactive Slider -->


    <!-- Container Part -->
    <div class="bg-color-light">
        <div class="container content-sm">
            <div class="row">
                <div class="col-md-6 md-margin-bottom-50">
                    <img class="img-responsive" src="../assets/img/main/imac2.png" alt="">
                </div>
                <div class="col-md-6">
                    <br><br><br>
                    <div class="headline-left margin-bottom-30">
                        <h2 class="headline-brd">ما هو مفهوم هــندســة البـرمـجيــات Software Engineering ؟</h2>
                        <p>ستُخدمت هندسة البرمجيات كمفهومٍ نظريّ من حين لآخر في أواخر الخمسينات وبداية الستينات من القرن
                            الماضي. أما الاستخدام الرّسمي الأول لهذا المُصطلح فكان في مؤتمرٍ عُقد من قبل اللجنة العلمية
                            في منظمة حلف شمال الأطلسي 1968 حول البرمجيات، وقد أخذ هذا المصطلح بالانتشار منذ ذلك الحين
                            ولاقى اهتماماً متزايداً في نواحي مُختلفة.
                            عقد المؤتمر لمعالجة ما يُعرف بـ “أزمة البرمجيات” والتي ظهرت بسبب عدم استخدام منهجية في
                            التفكير (Software Development Process) عند بناء البرمجيات، مما أدى إلى ظهور أخطاءٍ كثيرة
                            خلال عملية بناء وصيانة البرمجيات، وبالتالي أصبحت البرمجيات تحتاج إلى وقتٍ كبير لتطويرها
                            ولصيانتها، وكُلفة مالية عالية أكثر مما هو مُتوّقع، وبعد تحمّل التأخير في الوقت وتجاوز
                            الميزانية كانت البرمجيات ذات كفاءة ضعيفة في إنجاز الوظائف المطلوبة، كما كانت ذات فعالية
                            منخفضة، فضلاً عن عدم تلبية كافة المُتطلبات بالشكل الكامل.</p>
                    </div>

                    <a href="#" class="btn-u btn-brd btn-brd-hover btn-u-dark">إقرأ المزيد ..</a>
                </div><!--/end row-->
            </div>
        </div>
    </div>
    <!-- End Container Part -->

    <!-- Container Part -->
    <div class="container content-sm">
        <div class="headline-center margin-bottom-40">
            <h2>مراحل بناء النظام البرمجي</h2>
            <p>في هندسة البرمجيات، بناء النظام البرمجي ليس مجرد كتابة شفرة (كود Code)، وإنما هي عملية إنتاجية لها عدة
                مراحل أساسية وضرورية للحصول على المُنتج. الهدف النهائي من أي برنامج هو الحصول على أفضل كفاءة ممكنة بأقل
                كلفة ممكنة. (هذا المعيار ينطبق على أي عملية تصميم هندسي وفي كافة المجالات). يُطلق على هذه المراحل اسم
                دورة حياة النّظام البرمجي (Software Life cycle) أو التي تعرف أحياناً بـ “دورة حياة تطوير النظام البرمجي
                SDLC: Software Development Life Cycle”. </p>
        </div>

        <div class="row">

            <div class="col-sm-6">
                <p>تألف دورة حياة النظام البرمجي Software Life Cycle من المراحل التالية: </p>
                <ul>
                    <li><i class="fa fa-check color-green"></i>تحليل المتطلبات Requirement Analysis:</li>
                    <li><i class="fa fa-check color-green"></i>التصميم Design:</li>
                    <li><i class="fa fa-check color-green"></i>التنفيذ Implementation:</li>
                    <li><i class="fa fa-check color-green"></i>الاختبار Testing</li>
                    <li><i class="fa fa-check color-green"></i>التطوير Evolution:</li>


                </ul>
            </div>

            <!-- Smallest Progress Bar -->
            <div class="col-md-6 progress-box">
                <p><strong>طريقة توزيع الدرجات </strong></p>
                <h3 class="heading-xs">Written examination <span class="pull-right">60%</span></h3>
                <div class="progress progress-u progress-xxs">
                    <div class="progress-bar progress-bar-u" role="progressbar" data-width="60">
                    </div>
                </div>

                <h3 class="heading-xs">Other Assignments/class work <span class="pull-right">20%</span></h3>
                <div class="progress progress-u progress-xxs">
                    <div class="progress-bar progress-bar-u" role="progressbar" data-width="20">
                    </div>
                </div>

                <h3 class="heading-xs">Practical/laboratory work <span class="pull-right">10%</span></h3>
                <div class="progress progress-u progress-xxs">
                    <div class="progress-bar progress-bar-u" role="progressbar" data-width="10">
                    </div>
                </div>

                <h3 class="heading-xs">Oral examination <span class="pull-right">10%</span></h3>
                <div class="progress progress-u progress-xxs">
                    <div class="progress-bar progress-bar-u" role="progressbar" data-width="10">
                    </div>
                </div>
            </div>
            <!-- End Smallest Progress Bar -->
        </div><!--/end row-->
    </div>
    <!-- End Container Part -->


    <!-- Call To Action -->
    <div class="call-action-v1 bg-color-green">
        <div class="container">
            <div class="call-action-v1-box">
                <div class="call-action-v1-in">
                    <p class="color-light">المراحل السابقة هي لأحد أشهر نماذج بناء النظام البرمجي، وهو نموذج “الشلال
                        Waterfall Model”، والذي يعتبر من النماذج الكلاسيكية في بناء النظام البرمجي. تم تطوير هذا النموذج
                        وغيره من النماذج الكلاسيكية، حيث ظهر مفهوم المنظومات أو العمليات المرنة Fragile Process، والتي
                        تتخلى عن النموذج الثابت للمنظومة الكلاسيكية في سبيل الحصول على المزيد من المرونة والأريحية في
                        كيفية وآلية تنفيذ المشروع والنظام البرمجي..</p>
                </div>
                <div class="call-action-v1-in inner-btn page-scroll">
                    <a href="#portfolio" class="btn-u btn-brd btn-brd-hover btn-u-light btn-u-block">View Our
                        Portfolio</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Call To Action -->

    <!-- Quote v2 -->
    <div class="container content">
        <div class="quote-v2">
            <p>ما بالنسبة لتعريف هندسة البرمجيات الصادر عام 1967 عن اجتماع لجنة حلف شمال الأطلسي (الناتو NATO)، فقد وضعه
                عالم الحاسوب الألماني فريديرخ باور Friederich Bauer، وهو ينص على أن :
                ” هندسة البرمجيات هي عملية بناء واستخدام المبادئ الهندسية المعروفة من أجل الحصول على برنامجٍ اقتصاديّ،
                والذي يتميز بكونه موثوق ويعمل بكفاءة على الآلات الحقيقية”.</p>
        </div>
    </div>
    <!-- End Quote v2 -->


</div>
<!--=== End Content Side Left Right ===-->
<%@include file="footer.jsp" %>
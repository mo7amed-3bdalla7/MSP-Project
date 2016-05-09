<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@include file="header.jsp" %>
<c:if test="${user.id>0}">
    <c:redirect url="/"/>
</c:if>
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left"> تسجيل الدخول بحسابك${user.email} </h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">الرئيسيه </a></li>
            <li><a href="#">الصفحات </a></li>
            <li class="active">تسجيل الدخول</li>
        </ul>
    </div><!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->


<!--=== Content Part ===-->
<div class="container content">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">


            <form:form method="post" cssClass="reg-page" modelAttribute="usermodel">
                <div class="reg-header">
                    <h2>الدخول الى حسابك ${userInfo}</h2>
                </div>

                <c:if test="${login_error!=null}">

                    <span class="red">${login_error}</span>

                </c:if>
                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <input type="email" placeholder="ادخل حسابك " name="email" class="form-control">
                </div>

                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <input type="password" name="password" placeholder="كلمة المرور " class="form-control">
                </div>


                <div class="row">
                    <div class="col-md-6 checkbox">
                        <label><input type="checkbox"> تذكرنى </label>
                    </div>
                    <div class="col-md-6">
                        <button class="btn-u pull-right" type="submit">تسجيل الدخول</button>
                    </div>
                </div>

                <hr>

                <h4>هل نسيت كلمة المرور؟</h4>
                <p>لا تقلق , <a class="color-green" href="#">اضغط هنا </a> لتغيير كلمة المرور </p>
            </form:form>
        </div>
    </div><!--/row-->
</div>
<!--/container-->
<!--=== End Content Part ===-->


<!--=== Footer Version 1 ===-->
<div class="footer-v1">
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- About -->
                <div class="col-md-3 md-margin-bottom-40">
                    <!--                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="../assets/img/logo2-default.png" alt=""></a> -->
                    <a href="index.html"><img id="logo-footer" class="footer-logo" src="../assets/img/msp2.png" alt=""></a>
                    <p style="font-size:16px;font-family:alHor;">
                        "لقد كان حلما ان تكون بجامعة المنوفية كلية الحاسبات و المعلومات و تحقق بفضل الله و بفضل العلماء
                        و اﻷساتذة اﻷفاضل الذين قادوا هذه الجامعة بكل اخلاص حتى اصبح حلمنا حقيقة واقعة بعد تخرج عدة دفعات
                        من الكلية حتى الآن انتشروا فى العمل بمختلف الشركات و المصانع"
                    </p>
                </div><!--/col-md-3-->
                <!-- End About -->

                <!-- Latest -->
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="posts">
                        <div class="headline"><h2>أخر الإضافات</h2></div>
                        <ul class="list-unstyled latest-list">
                            <li>
                                <a href="news.html">الاخبار</a>
                                <small>May 8, 2016</small>
                            </li>
                            <li>
                                <a href="#latestShot">اخر اللقطات</a>
                                <small>June 23, 2016</small>
                            </li>
                            <li>
                                <a href="news.html">الندوات</a>
                                <small>September 15, 2016</small>
                            </li>
                        </ul>
                    </div>
                </div><!--/col-md-3-->
                <!-- End Latest -->

                <!-- Link List -->
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="headline"><h2>روابط مهمة</h2></div>
                    <ul class="list-unstyled link-list">
                        <li><a href="index.html">الرئيسية</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="page_about1.html">عن الكلية</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="page_about1.html">التقديم و القبول</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">اﻷبحاث العلمية</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div><!--/col-md-3-->
                <!-- End Link List -->

                <!-- Address -->
                <div class="col-md-3 map-img md-margin-bottom-40">
                    <div class="headline"><h2>اتصل بنا </h2></div>
                    <address class="md-margin-bottom-40">
                        25 شارع جمال عبدالناصر <br/>
                        شبين الكوم , المنوفية <br/>
                        تليفون: 048/2225446<br/>
                        فاكس: 048/2223694 <br/>
                        ايميل: <a href="mailto:compu_info@menofia.edu.eg" class="">info@fci.com</a>
                    </address>
                </div><!--/col-md-3-->
                <!-- End Address -->
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>

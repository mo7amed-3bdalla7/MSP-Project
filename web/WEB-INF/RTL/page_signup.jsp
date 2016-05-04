<%@include file="header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">تسجيل الدخول </h1>
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
            <form class="" method="post">
                <div class="reg-header">
                    <h2>التسجيل باستخدام حساب جديد </h2>
                </div>

                <%--<section>
                    <label class="input">
                        <i class="icon-append fa fa-lock "></i>
                        <input type="password" name="passwordConfirm" placeholder="Confirm password">
                        <b class="tooltip tooltip-bottom-left">Don't forget your password</b>
                    </label>
                </section>--%>

                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <input type="text" name="name" placeholder="إسم المستخدم" class="form-control">
                </div>
                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                    <input type="text" name="email" placeholder="اﻹيميل" class="form-control">
                </div>
                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <input type="text" name="password" placeholder="كلمة المرور" class="form-control">
                </div>

                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <input type="password" name="password2" placeholder="تأكيد كلمة المرور" class="form-control">
                </div>

                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <input type="phone" name="phone" placeholder="رقم الهاتف" class="form-control">
                </div>


                <section>
                    <label class="select">
                        <select name="department">
                            <option value="0">اختر القسم</option>
                            <option value="1">cs</option>
                            <option value="2">is</option>
                        </select>
                        <i></i>
                    </label>
                </section>

                <section>
                    <label class="select">
                        <select name="type">
                            <option value="0">اختر نوع المستخدم</option>
                            <option value="1">دكتور</option>
                            <option value="2">طالب</option>
                        </select>
                        <i></i>
                    </label>
                </section>




                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <textarea type="phone" name="details" placeholder="معلومات عن الدكتور"
                              class="form-control"></textarea>
                </div>




                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <input type="phone" name="section" placeholder="رقم السكشن" class="form-control">
                </div>

                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <input type="phone" name="year" placeholder="السنه الدراسية" class="form-control">
                </div>

                <div class="input-group margin-bottom-20">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <input type="phone" name="phone" placeholder="كود الطالب" class="form-control">
                </div>



                <div class="row">
                    <div class="col-md-6 checkbox">
                        <label><input type="checkbox"> تذكرنى </label>
                    </div>
                    <div class="col-md-6">
                        <button class="btn-u pull-right" type="submit">إنشاء حساب جديد</button>
                    </div>
                </div>

                <hr>

                <h4>هل نسيت كلمة المرور؟</h4>
                <p>لا تقلق , <a class="color-green" href="#">اضغط هنا </a> لتغيير كلمة المرور </p>
            </form>
        </div>
    </div>
</div>
/container
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

    <!--/footer-->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>
                        جميع الحقوق محفوظة &copy; 2016

                        <!--<a href="#">جميع الحقوق محفوظة &copy; </a>-->
                        &nbsp; | <a href="#">&nbsp;سياسات الاستخدام&nbsp;</a> &nbsp;| &nbsp; بواسطة&nbsp;&nbsp; <a
                            href="about_team.html">فريق العمل</a>

                    </p>
                </div>

                <!-- Social Links -->
                <div class="col-md-6">
                    <ul class="footer-socials list-inline">
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="Facebook">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="Google Plus">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="Linkedin">
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="Twitter">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="youtube">
                                <i class="fa fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- End Social Links -->
            </div>
        </div>
    </div><!--/copyright-->
</div>
<%@include file="footer.jsp" %>
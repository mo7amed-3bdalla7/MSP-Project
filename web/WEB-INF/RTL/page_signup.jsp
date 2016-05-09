<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@include file="header.jsp" %>
<c:if test="${user.type!=1}">
    <c:redirect url="/"/>
</c:if>
${user.type}

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
            <%--<form class="sky-form" method="post" style="font-family: 'Droid Arabic Kufi',serf !important;">--%>
            <form:form method="post" cssStyle="font-family: 'Droid Arabic Kufi',serf !important;" cssClass="sky-form"
                       commandName="${error}">


                <header>
                    التسجيل باستخدام حساب جديد
                </header>


                <fieldset>
                        <%--<form:errors path="student.*" cssClass=""/>--%>


                    <label class="input">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="text" name="name" placeholder="إسم المستخدم" class="form-control">
                        <form:errors path="*" cssClass="red"/>
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>


                    <label class="input">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="text" name="email" placeholder="اﻹيميل" class="form-control">
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>
                    <label class="input">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="password" name="password" placeholder="كلمة المرور" class="form-control">
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>
                    <label class="input">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="password" name="password2" placeholder="تأكيد كلمة المرور" class="form-control">
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>

                    <label class="input">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="phone" name="phone" placeholder="رقم الهاتف" class="form-control">
                    </label>


                    <label class="select ">
                        <select name="type" style="font-family: inherit;color:#bbb;">
                            <option value="0" selected>اختر نوع المستخدم</option>
                            <option value="1">Admin</option>
                            <option value="2">دكتور</option>
                            <option value="3">طالب</option>
                        </select>
                        <i></i>
                    </label>
                    <script>
                        $("select[name='type']")
                                .change(function () {
                                    var str = "";
                                    $("select[name='type'] option:selected").each(function () {
                                        str += $(this).text();
                                    });
                                    if (str === "دكتور") {
                                        $(".doctor").css("display", "block");
                                        $(".student").css("display", "none");
                                        $(".student_doctor").css("display", "block");


                                    } else if (str === "طالب") {
                                        $(".student").css("display", "block");
                                        $(".doctor").css("display", "none");
                                        $(".student_doctor").css("display", "block");

                                    } else {
                                        $(".student").css("display", "none");
                                        $(".doctor").css("display", "none");
                                        $(".student_doctor").css("display", "none");

                                    }
                                });

                    </script>


                    <label class="select student_doctor" style="display: none">
                        <select name="departmentId" style="font-family: inherit; color:#bbb;">


                            <option value="0" selected>اختر القسم</option>

                            <c:forEach items="${departments}" var="department">

                                <option value="${department.id}">${department.name}</option>

                            </c:forEach>

                        </select>
                        <i></i>
                    </label>


                    <label class="input doctor" style="display: none">
                        <i class="icon-append fa fa-lock"></i>
                    <textarea name="details" placeholder="معلومات عن الدكتور"
                              style="max-width: 298px" class="form-control"></textarea>
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>


                    <label class="input student" style="display: none">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="text" name="section" placeholder="رقم السكشن" class="form-control">
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>
                    <label class="input student" style="display: none">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="text" name="year" placeholder="السنه الدراسية" class="form-control">
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>

                    <label class="input student" style="display: none">
                        <i class="icon-append fa fa-lock"></i>
                        <input type="text" name="uid" placeholder="كود الطالب" class="form-control">
                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                    </label>


                    <label class="toggle">
                        <input type="checkbox" name="active"><i></i>

                        تفعيل الحساب</label>


                        <%--<div class="row">--%>
                        <%--<div class="col-md-6">--%>
                    <label class="checkbox"><input type="checkbox"
                    ><i></i>تذكرنى</label>
                        <%--<button class="btn-u pull-right" type="submit">إنشاء حساب جديد</button>--%>
                        <%--</div>--%>
                        <%--</div>--%>


                    <h4>هل نسيت كلمة المرور؟</h4>
                    <p>لا تقلق , <a class="color-green" href="#">اضغط هنا </a> لتغيير كلمة المرور </p>
                </fieldset>
                <footer>
                    <button type="submit" class="btn-u">إنشاء حساب جديد</button>
                        <%--<a href="#" class="btn-u btn-u-default">Register</a>--%>
                </footer>

            </form:form>
            <%--</form>--%>
        </div>
    </div>
</div>

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
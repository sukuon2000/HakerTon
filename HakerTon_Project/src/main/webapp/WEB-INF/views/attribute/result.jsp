<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">



<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Roast Stars - in coffee city</title>
    <!-- google-fonts -->
    <link href="//fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css2?family=Sail&display=swap" rel="stylesheet">
    <!-- //google-fonts -->
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style-liberty.css">
</head>

<body>
    <!--header-->
    <header id="site-header" class="fixed-top">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg stroke">
                <h1>
                    <a class="navbar-brand d-flex align-items-center" href="index.html">
                        Roast Stars</a>
                </h1>
                <!-- if logo is image enable this
    <a class="navbar-brand" href="#index.html">
        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
    </a> -->

                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!--//header-->

    <!-- events section -->
    <section class="w3l-text-6">
        <div class="text-6-mian bottom-space py-5">
            <div class="container py-md-5 py-4">
                <div class="waviy text-center mb-sm-5 mb-4 pb-lg-4">
                    <span>당신의 취향 분석 결과를 알려드려요!</span>
                    
                </div>
                <br><br>
                <div class="row top-cont-grid align-items-center">
                <c:forEach var="cafeVO1" items="${cafeList1}">          
                    <div class="col-lg-3 right-img sec-img-ab mb-5">
                        <a href="http://naver.com" target="_blank">
                            <h4 class="mt-3" style="color:#fff">${cafeVO1.cafeName}</h4>
                            <img src="${pageContext.request.contextPath}/assets/images/event1.jpg" alt="" class="img-responsive img-fluid" style="margin-top:1.5rem" />
                        </a>
                    </div>
                    <div class="col-lg-1"></div>
                </c:forEach>
                <c:forEach var="cafeVO2" items="${cafeList2}">          
                    <div class="col-lg-3 right-img sec-img-ab mb-5">
                        <a href="http://naver.com" target="_blank">
                            <h4 class="mt-3" style="color:#fff">${cafeVO2.cafeName}</h4>
                            <img src="${pageContext.request.contextPath}/assets/images/event1.jpg" alt="" class="img-responsive img-fluid" style="margin-top:1.5rem" />
                        </a>
                    </div>
                    <div class="col-lg-1"></div>
                </c:forEach>
                <c:forEach var="cafeVO3" items="${cafeList3}">          
                    <div class="col-lg-3 right-img sec-img-ab mb-5">
                        <a href="${cafeVO3.url}" target="_blank">
                            <h4 class="mt-3" style="color:#fff">${cafeVO3.cafeName}</h4>
                            <img src="${pageContext.request.contextPath}/assets/images/event1.jpg" alt="" class="img-responsive img-fluid" style="margin-top:1.5rem" />
                        </a>
                    </div>
                    <div class="col-lg-1"></div>
                </c:forEach>
                <div>
                    <div class="col-lg-4"></div>
                    <a href="#" class="btn btn-style mt-4 col-lg-4" style="text-align: center;" onclick="javascript:confirm('저장하였습니다!')">분석결과를 데이터 베이스에 저장하시겠습니까?</a>
                    <div class="col-lg-4"></div>
                </div>
                <br><br>
            </div>
        </div>
        
    </section>
    <!-- image with text section -->

     <!-- footer -->
     <section class="w3l-footer-29-main">
        <div class="footer-29 py-5">
            <div class="container py-lg-4">
                <div class="row footer-top-29">
                    <div class="col-12 footer-list-29">
                        <h2>
                            <a class="footer-logo" href="index.html">
                                Roast Stars</a>
                        </h2>
                        <p class="sub-list-text mt-4">"당신이 잃어버린 빛나는 카페"<br>Roast Stars에서 찾아보세요!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //footer -->

    <!-- Js scripts -->

    <!-- common jquery plugin -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <!-- //common jquery plugin -->

    <!-- theme switch js (light and dark)-->
    <script src="assets/js/theme-change.js"></script>
    <script>
        function autoType(elementClass, typingSpeed) {
            var thhis = $(elementClass);
            thhis.css({
                "position": "relative",
                "display": "inline-block"
            });
            thhis.prepend('<div class="cursor" style="right: initial; left:0;"></div>');
            thhis = thhis.find(".text-js");
            var text = thhis.text().trim().split('');
            var amntOfChars = text.length;
            var newString = "";
            thhis.text("|");
            setTimeout(function () {
                thhis.css("opacity", 1);
                thhis.prev().removeAttr("style");
                thhis.text("");
                for (var i = 0; i < amntOfChars; i++) {
                    (function (i, char) {
                        setTimeout(function () {
                            newString += char;
                            thhis.text(newString);
                        }, i * typingSpeed);
                    })(i + 1, text[i]);
                }
            }, 1500);
        }

        $(document).ready(function () {
            // Now to start autoTyping just call the autoType function with the 
            // class of outer div
            // The second paramter is the speed between each letter is typed.   
            autoType(".type-js", 200);
        });
    </script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!--bootstrap-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- //bootstrap-->
    <!-- //Js scripts -->
</body>

</html>
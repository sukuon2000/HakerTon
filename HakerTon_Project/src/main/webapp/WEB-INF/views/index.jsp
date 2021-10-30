<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Roast Stars - in coffee city</title>
<!-- google-fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css2?family=Sail&display=swap"
	rel="stylesheet">
<!-- //google-fonts -->
<!-- Template CSS Style link -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style-liberty.css">
<style>

/*search box css start here*/
.search-sec {
	background: #1A4668;
	padding: 2rem;
}

.search-slt {
	display: block;
	width: 100%;
	font-size: 0.875rem;
	line-height: 1.5;
	color: #55595c;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	height: calc(3rem + 2px) !important;
	border-radius: 0;
}

.wrn-btn {
	width: 100%;
	font-size: 16px;
	font-weight: 400;
	text-transform: capitalize;
	height: calc(3rem + 2px) !important;
	border-radius: 0;
}
</style>
<script>
        // alert("ok");
        var preference1, preference2, preference3;
        var preference1_val, preference2_val, preference3_val;
        var selectEq1, selectEq2, selectEq3;
        window.onload = function(){
            selectFavor1();
            selectFavor2();
            selectFavor3();

        };
        // SELECT BOX 1
        function selectFavor1(){
            // select 1 표시
            preference1_val = $("#exampleFormControlSelect1 option:selected").val();
            preference1 = $("#exampleFormControlSelect1 option").index($("#exampleFormControlSelect1 option:selected"));

            // 변경했을경우에 
            AddCurSelected(1, preference1_val);

            // 1에서 선택된 선호도 제거
            selectEq2 = "#exampleFormControlSelect2 option[value='"+ preference1_val + "']";
            selectEq3 = "#exampleFormControlSelect3 option[value='"+ preference1_val + "']";
            $(selectEq2).remove();
            $(selectEq3).remove();
        }
        // SELECT BOX 2
        function selectFavor2(){
            // select 2 표시
            preference2_val = $("#exampleFormControlSelect2 option:selected").val();
            preference2 = $("#exampleFormControlSelect2 option").index($("#exampleFormControlSelect2 option:selected"));

            // 변경했을경우에 
            AddCurSelected(2, preference2_val);

            selectEq1 = "#exampleFormControlSelect1 option[value='"+ preference2_val + "']";
            selectEq3 = "#exampleFormControlSelect3 option[value='"+ preference2_val + "']";
            $(selectEq1).remove();
            $(selectEq3).remove();    
        }
        function selectFavor3(){
            // alert("select");
            
            // select 3 표시
            preference3_val = $("#exampleFormControlSelect3 option:selected").val();
            preference3 = $("#exampleFormControlSelect3 option").index($("#exampleFormControlSelect3 option:selected"));

            // 변경했을경우에 
            AddCurSelected(3, preference3_val);

            // 2에서 선택된 선호도 제거
            selectEq1 = "#exampleFormControlSelect1 option[value='"+ preference3_val + "']";
            selectEq2 = "#exampleFormControlSelect2 option[value='"+ preference3_val + "']";
            $(selectEq1).remove();    
            $(selectEq2).remove();
        }
        function AddCurSelected(step, selValue){
            // alert(selValue);
            selectEq1 = "#exampleFormControlSelect1 option[value='"+ selValue + "']";
            selectEq2 = "#exampleFormControlSelect2 option[value='"+ selValue + "']";
            selectEq3 = "#exampleFormControlSelect3 option[value='"+ selValue + "']";
            switch (step) {
                case 1:
                    $(selectEq2).append("<option>" + selValue +"</option>");
                    $(selectEq3).append("<option>" + selValue +"</option>");
                    break;
                case 2:
                    $(selectEq1).append("<option>" + selValue +"</option>");
                    $(selectEq3).append("<option>" + selValue +"</option>");
                    break;
                case 3:
                    $(selectEq1).append("<option>" + selValue +"</option>");
                    $(selectEq2).append("<option>" + selValue +"</option>");
                    break;
                default:
                    alert( "어떤 값인지 파악이 되지 않습니다." );
                }
        }



    </script>
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
							<label class="theme-switch" for="checkbox"> <input
								type="checkbox" id="checkbox">
								<div class="mode-container">
									<i class="gg-sun"></i> <i class="gg-moon"></i>
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

	<!-- banner section -->
	<section class="w3l-main-slider" id="home">
		<div class="banner-content">
			<div id="demo-1" data-zs-src='["assets/images/main_slide.jpg"]'
				data-zs-overlay="dots">
				<div class="demo-inner-content">
					<div class="container">
						<div class="banner-infhny">
							<section>
								<div id="Text8">
									<h1>
										<span>당</span> <span>신</span> <span>의</span> <span> </span> <span>선</span>
										<span>호</span> <span>도</span> <span>를</span> <span> </span> <span>선</span>
										<span>택</span> <span>!</span>
									</h1>
								</div>
							</section>
						</div>
						<div class="container">
							<form action="${pageContext.request.contextPath}/mainSelect/result" method="post" novalidate="novalidate">
								<div class="row">
									<div class="col-lg-12">
										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-12 p-0">
												<select class="form-control search-slt"
													id="exampleFormControlSelect1" name="favor1"
													onchange="selectFavor1()">
													<option value="뷰가 좋아요" selected>뷰가 좋아요</option>
													<option value="사진이 잘 나와요">사진이 잘 나와요</option>
													<option value="주차하기 편해요">주차하기 편해요</option>
													<option value="인테리어가 멋져요">인테리어가 멋져요</option>
													<option value="매장이 청결해요">매장이 청결해요</option>
													<option value="커피가 맛있어요">커피가 맛있어요</option>
													<option value="친절해요">친절해요</option>
													<option value="음료가 맛있어요">음료가 맛있어요</option>
													<option value="화장실이 깨끗해요">화장실이 깨끗해요</option>
													<option value="대화하기 좋아요">대화하기 좋아요</option>
													<option value="디저트가 맛있어요">디저트가 맛있어요</option>
													<option value="좌석이 편해요">좌석이 편해요</option>
													<option value="가성비가 좋아요">가성비가 좋아요</option>
													<option value="특별한 메뉴가 있어요">특별한 메뉴가 있어요</option>
													<option value="집중하기 좋아요">집중하기 좋아요</option>
												</select>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 p-0">
												<select class="form-control search-slt"
													id="exampleFormControlSelect2" onchange="selectFavor2()">
													<option value="뷰가 좋아요">뷰가 좋아요</option>
													<option value="사진이 잘 나와요" selected>사진이 잘 나와요</option>
													<option value="주차하기 편해요">주차하기 편해요</option>
													<option value="인테리어가 멋져요">인테리어가 멋져요</option>
													<option value="매장이 청결해요">매장이 청결해요</option>
													<option value="커피가 맛있어요">커피가 맛있어요</option>
													<option value="친절해요">친절해요</option>
													<option value="음료가 맛있어요">음료가 맛있어요</option>
													<option value="화장실이 깨끗해요">화장실이 깨끗해요</option>
													<option value="대화하기 좋아요">대화하기 좋아요</option>
													<option value="디저트가 맛있어요">디저트가 맛있어요</option>
													<option value="좌석이 편해요">좌석이 편해요</option>
													<option value="가성비가 좋아요">가성비가 좋아요</option>
													<option value="특별한 메뉴가 있어요">특별한 메뉴가 있어요</option>
													<option value="집중하기 좋아요">집중하기 좋아요</option>
												</select>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 p-0">
												<select class="form-control search-slt"
													id="exampleFormControlSelect3" onchange="selectFavor3()">
													<option value="뷰가 좋아요">뷰가 좋아요</option>
													<option value="사진이 잘 나와요">사진이 잘 나와요</option>
													<option value="주차하기 편해요" selected>주차하기 편해요</option>
													<option value="인테리어가 멋져요">인테리어가 멋져요</option>
													<option value="매장이 청결해요">매장이 청결해요</option>
													<option value="커피가 맛있어요">커피가 맛있어요</option>
													<option value="친절해요">친절해요</option>
													<option value="음료가 맛있어요">음료가 맛있어요</option>
													<option value="화장실이 깨끗해요">화장실이 깨끗해요</option>
													<option value="대화하기 좋아요">대화하기 좋아요</option>
													<option value="디저트가 맛있어요">디저트가 맛있어요</option>
													<option value="좌석이 편해요">좌석이 편해요</option>
													<option value="가성비가 좋아요">가성비가 좋아요</option>
													<option value="특별한 메뉴가 있어요">특별한 메뉴가 있어요</option>
													<option value="집중하기 좋아요">집중하기 좋아요</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row mt-3">
									<div class="col-lg-12">
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-12 p-0">
												<button type="submit" class="btn btn-primary wrn-btn">결과
													바로보기</button>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-12 p-0">
												<button type="button" class="btn btn-warning wrn-btn"
													onclick="location.href='${pageContext.request.contextPath}/select/step1'">상세
													테스트 시작</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //banner section -->

	<!-- footer -->
	<section class="w3l-footer-29-main">
		<div class="footer-29 py-5">
			<div class="container py-lg-4">
				<div class="row footer-top-29">
					<div class="col-12 footer-list-29">
						<h2>
							<a class="footer-logo" href="index.html"> Roast Stars</a>
						</h2>
						<p class="sub-list-text mt-4">
							"당신이 잃어버린 빛나는 카페"<br>Roast Stars에서 찾아보세요!
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

	<!-- slider-js -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/modernizr-2.6.2.min.js"></script>
	<script src="assets/js/jquery.zoomslider.min.js"></script>
	<!-- //slider-js -->

	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.js"></script>
	<!-- script for tesimonials carousel slider -->
	<script>
        $(document).ready(function () {
            $("#owl-demo2").owlCarousel({
                loop: true,
                margin: 20,
                nav: false,
                responsiveClass: true,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplaySpeed: 1000,
                autoplayHoverPause: false,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    1000: {
                        items: 1,
                        nav: false,
                        loop: false
                    }
                }
            })
        })
    </script>
	<!-- //script for tesimonials carousel slider -->

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
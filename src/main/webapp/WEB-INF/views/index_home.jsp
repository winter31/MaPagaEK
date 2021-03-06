<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome~! Eric's Page</title>
    <!-- Bootstrap Core CSS -->
    <link href="resources/navibar/assets/css/main.css" rel="stylesheet">
    
    <link href="resources/pageDesign/pageDesign1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/pageDesign/pageDesign1/css/stylish-portfolio.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="resources/pageDesign/pageDesign1/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>


<body>
    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper" >
    	<div id="header" >
			<div id="top">
				<a id="menu-close" href="#" class="btn btn-lg toggle"><i class="fa fa-times pull-right btn-gray" style="font-size: 30px;"></i></a>
					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="resources/image/me.jpg" alt="" /></span>
							<h1 id="title">Eric Gilseob Kim</h1>
							<p>Soft Engineer</p>
						</div>
					<!-- Nav -->
						<nav id="nav" >
							<ul >
								<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home" style="font-size: 18px; " onclick=$("#menu-close").click();>Home</span></a></li>
								<li><a href="#about" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user" style="font-size: 18px;" onclick=$("#menu-close").click();>About Me</span></a></li>
								<li><a href="${pageContext.request.contextPath}/board/camera" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/camera';">Camera</span></a>
								<li><a href="${pageContext.request.contextPath}/game/AiGame" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/game/AiGame';">Game</span></a>
								<li><a href="${pageContext.request.contextPath}/openCV" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/openCV';">openCV</span></a>
								<li><a href="${pageContext.request.contextPath}/ocr" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/ocr';">OCR</span></a>								
								
								<!-- AWS-Test Page  -->
								<li><a href="http://ec2-13-115-45-49.ap-northeast-1.compute.amazonaws.com/PhotoBoard.html" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='http://ec2-13-115-45-49.ap-northeast-1.compute.amazonaws.com/PhotoBoard.html'">Photo Board</span></a></li>
								
								
								<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope" style="font-size: 18px;" onclick=$("#menu-close").click();>Contact</span></a></li>
							</ul>								
						</nav>
				<div class="bottom">
					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>
				</div>
			</div>
		</div>
    </nav> 
    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>Welcome Eric's HomePage!</h1>
            <h3>환영합니다. 개인 홈페이지입니다.</h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
        </div>
    </header>
    <!-- About -->
    <section id="about" class="about" style="padding: 0; margin-top: 0px; margin-bottom: 10px;">
        <div class="container">
            <div class="row" style="height: 340px;">
                <div class="col-lg-12 text-center">
                    <h2>Don't Give up. Don't give in. live your dream.</h2><!-- 
                    <p class="lead">This theme features some wonderful photography courtesy of <a target="_blank" href="http://join.deathtothestockphoto.com/">Death to the Stock Photo</a>.</p> -->
                    <iframe width="500" height="290" src="https://www.youtube.com/embed/ZOy0YgUDwDg" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section> 

    <!-- Services -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-rg-8 col-lg-offset-1">
                    <h2>About My pages</h2>
                    <hr class="small text-center">
                    <div class="row pull-right">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-user fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Introduce</strong>
                                </h4>
                                <p>I was a leader and will be a leader. Just trust my potential.</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-users fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Movements</strong>
                                </h4>
                                <p>Keep moving, My life is not done. Just take what you wanna do.</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-flask fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Technique</strong>
                                </h4>
                                <p>What technique can i do? Nothing is impossible to a willing heart.</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-cloud fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Game</strong>
                                </h4>
                                <p>Practice Simple Game. Enjoy it.( On construction )</p>
                            </div>
                        </div>
                    </div>
                 <span style="margin:auto;">
   			         <a href="aboutMe" class="btn btn-light">Learn More</a>
                 </span>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
        <div class="text-vertical-center">
            <h1>Now rationally, the future is ideal.</h1>
        </div>
    </aside>
    <!-- Portfolio --> <!-- 가운데 정렬해야함. -->
    <section id="photo" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2>Eric's Photo</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="board/photoBoard">
                                    <img class="img-portfolio img-responsive" src="resources/image/1.jpg" style="width: 450px; height: 350px;">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="board/photoBoard">
                                    <img class="img-portfolio img-responsive" src="resources/image/2.jpg" style="width: 450px; height: 350px;">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="board/photoBoard">
                                    <img class="img-portfolio img-responsive" src="resources/image/3.jpg" style="width: 450px; height: 350px;">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="board/photoBoard">
                                    <img class="img-portfolio img-responsive" src="resources/image/4.jpg" style="width: 450px; height: 350px;">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    <a href="board/photoBoard" class="btn btn-dark">Go to Photo Board</a>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Call to Action -->
    <aside class="call-to-action bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <!-- <h3>The buttons below are impossible to resist.</h3>
                    <a href="#" class="btn btn-lg btn-light">Click Me!</a>
                    <a href="#" class="btn btn-lg btn-dark">Look at Me!</a> -->
                </div>
            </div>
        </div>
    </aside>
    <!-- Map -->
    <section id="contact" class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6350.30602811431!2d127.00203145509165!3d37.267798498801554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b431ebce78f23%3A0x7ddf31ebf9049018!2z64yA7ZWc66-86rWtIOqyveq4sOuPhCDsiJjsm5Dsi5wg7YyU64us6rWsIOunpOyCsOuPmSA2OS0x!5e0!3m2!1sko!2sjp!4v1498718876387" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
        <br />
        <small>																																				
            <a href="https://www.google.co.jp/maps/place/%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD+%EA%B2%BD%EA%B8%B0%EB%8F%84+%EC%88%98%EC%9B%90%EC%8B%9C+%ED%8C%94%EB%8B%AC%EA%B5%AC+%EB%A7%A4%EC%82%B0%EB%8F%99+69-1/@37.2673226,126.9991246,17z/data=!4m13!1m7!3m6!1s0x357b430a20764611:0xf1373002ee5db4c9!2z64yA7ZWc66-86rWtIOqyveq4sOuPhCDsiJjsm5Dsi5w!3b1!8m2!3d37.2635727!4d127.0286009!3m4!1s0x357b431ebce78f23:0x7ddf31ebf9049018!8m2!3d37.2673226!4d127.0013133?hl=ko"></a>
        </small>
    </section>
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h4><strong>&nbsp;&nbsp;&nbsp;Eric Kim / Gilseob Kim / キム・ギルソプ</strong>
                    <br>
                    <br>
               
                 <!--    <ul class="list-unstyled"> -->
                        <!-- <li> --><i class="fa fa-phone fa-fw"></i>82)01-1231-1456 <!-- </li> -->
                        <!-- <li> -->&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:seob31@gmail.com">seob31@gmail.com</a>
                <!--         </li>
                    </ul> -->
                    </h4>
                    <br>
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i>http://www.facebook.com</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i>없음</a>
                        </li>
                    </ul>
                    <!-- <hr class="small">
                    <p class="text-muted"></p> -->
                </div>
            </div>
        </div>
        <a id="to-top" href="#top" class="btn btn-dark btn-lg"><i class="fa fa-chevron-up fa-fw fa-1x"></i></a>
    </footer>
    <!-- jQuery -->
    <script src="resources/pageDesign/pageDesign1/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/pageDesign/pageDesign1/js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    //#to-top button appears after scrolling
    var fixed = false;
    $(document).scroll(function() {
        if ($(this).scrollTop() > 300) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function() {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    // Disable Google Maps scrolling
    // See http://stackoverflow.com/a/25904582/1607849
    // Disable scroll zooming and bind back the click event
    var onMapMouseleaveHandler = function(event) {
        var that = $(this);
        that.on('click', onMapClickHandler);
        that.off('mouseleave', onMapMouseleaveHandler);
        that.find('iframe').css("pointer-events", "none");
    }
    var onMapClickHandler = function(event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
    $('.map').on('click', onMapClickHandler);
    </script>

</body>

</html>

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
         <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/js/jquery.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/resources/navibar/assets/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/css/stylish-portfolio.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>
	<script type="text/javascript">
	var localstream;
	function webCamTest(audio, video){
	video = document.getElementById('webCamTest');
		if(navigator.webkitGetUserMedia){
			navigator.webkitGetUserMedia({audio:audio, video:video},
					function(stream){
					 	video.src = window.URL.createObjectURL(stream);
					 	localstream = stream;
					    video.play();
					},
					function(error){alert('error'+error.toString());});
		}else{
			alert('not supported');
		}
	}
	
	function CameraOn(){
		alert("카메라 켜졌습니다..")
		webCamTest(true, true);
		return false;
	}
	
 	function CameraOff(){
 		alert("카메라 꺼졌습니다.")
 		localstream.getTracks()[0].stop();
 		return false;
	}
	

 	</script>
<body onload="webCamTest();">
 <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
    <div id="header">
				<a id="menu-close" href="#" class="btn btn-lg toggle"><i class="fa fa-times pull-right btn-gray" style="font-size: 30px;"></i></a>
				<div class="top">
					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="${pageContext.request.contextPath }/resources/image/me.jpg" alt="" /></span>
							<h1 id="title">Eric Gilseob Kim</h1>
							<p>Soft Engineer</p>
						</div>
					<!-- Nav -->
						<nav id="nav">
							<ul>
							<li><a href="${pageContext.request.contextPath}" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}">Home</span></a></li>
								<li><a href="${pageContext.request.contextPath}/aboutMe" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user" style="font-size: 18px;" onclick=$("#menu-close").click();>About Me</span></a></li>
								<li><a href="${pageContext.request.contextPath}/board/camera" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/camera';">Camera</span></a>
								<li><a href="${pageContext.request.contextPath}/game/AiGame" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/game/AiGame';">Game</span></a>
								<li><a href="${pageContext.request.contextPath}/openCV" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/openCV';">openCV</span></a>
								<li><a href="${pageContext.request.contextPath}/ocr" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/ocr';">OCR</span></a>
								<li><a href="${pageContext.request.contextPath}/board/photoBoard" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/photoBoard">Photo Board</span></a></li>
								<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope" style="font-size: 18px;" onclick=$("#menu-close").click();>Contact</span></a></li>
							</ul>								
						</nav>
				</div>
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
    </nav> 
<div style="height:70px;"></div>
<div id="wrap" style="text-align: center;" >
<p style="font-size: 25px;"> WebCamera Test </p>
	<video id="webCamTest" width="600px" height="500px" autoplay="autoplay"></video>
	<br>
	<button onclick="CameraOn();">Camera On</button><button onclick="CameraOff();" >Camera off</button>
</div>   
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/js/bootstrap.min.js"></script>

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
 
    </script>
    
    </body>
    </html>
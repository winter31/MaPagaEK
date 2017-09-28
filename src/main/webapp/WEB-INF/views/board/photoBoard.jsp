<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome~! Eric's Page</title>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/navibar/assets/css/main.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath}/resources/pageDesign/pageDesign1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/pageDesign/pageDesign1/css/stylish-portfolio.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resources/pageDesign/pageDesign1/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>
<body>
<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
    <div id="header">
				<a id="menu-close" href="#" class="btn btn-lg toggle"><i class="fa fa-times pull-right btn-gray" style="font-size: 30px;"></i></a>
				<div class="top">
					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="${pageContext.request.contextPath}/resources/image/me.jpg" alt="" /></span>
							<h1 id="title">Eric Gilseob Kim</h1>
							<p>Soft Engineer</p>
						</div>
					<!-- Nav -->
					
						<nav id="nav">
							<ul>
								<li><a href="${pageContext.request.contextPath}" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}">Home</span></a></li>
								<li><a href="#about" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user" style="font-size: 18px;" onclick=$("#menu-close").click();>About Me</span></a></li>
								<li><a href="${pageContext.request.contextPath}/board/board_index" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/board_index';">Board</span></a>
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
    
    
   AWS-Window virtual screen Page
    
    
    <script src="${pageContext.request.contextPath}/resources/pageDesign/pageDesign1/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/pageDesign/pageDesign1/js/bootstrap.min.js"></script>
    
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
    </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome~! Eric's Page</title>

	<link href="resources/navibar/assets/css/main.css" rel="stylesheet">
    <link href="resources/pageDesign/pageDesign1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/pageDesign/pageDesign1/css/stylish-portfolio.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="resources/pageDesign/pageDesign1/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	 <!-- jQuery -->
    <script src="resources/pageDesign/pageDesign1/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/pageDesign/pageDesign1/js/bootstrap.min.js"></script>
	
	<style type="text/css">
/* 	#button1{
		display: inline-block;
		text-align: right;
		position: absolute;
		right: 100px;
	} */
	table firstchild{
		border-right: 1px solid #050505;
		border-spacing: 0;
		text-align: center;
	}
	table{
		width: 800px;
		margin: auto;
	}
	
	</style>
	
	<script type="text/javascript">

	$(function(){
		var date = new Date();
		var today = date.getDate();
		var month = date.getMonth()+1;
		var year = date.getFullYear();
		var fullday = year+'.'+month+'.'+today;
		var age = 0;
		if(month<11)age = year - (1988 + 1);
		if(month>11) age = year - 1988;
		
		$("#myAge").html(age);
	});
		
	
	</script>
</head>
<body >
<!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
    <div id="header">
				<a id="menu-close" href="#" class="btn btn-lg toggle"><i class="fa fa-times pull-right btn-gray" style="font-size: 30px;"></i></a>
				<div class="top">
					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="resources/image/me.jpg" alt="" /></span>
							<h1 id="title">Eric Gilseob Kim</h1>
							<p>Soft Engineer</p>
						</div>
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="${pageContext.request.contextPath}" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}">Home</span></a></li>
								<li><a href="${pageContext.request.contextPath}/aboutMe" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user" style="font-size: 18px;" onclick=$("#menu-close").click();>About Me</span></a></li>
								<li><a href="${pageContext.request.contextPath}/board/board_index" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/board_index';">Board</span></a>
								<li><a href="${pageContext.request.contextPath}/game/AiGame" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/game/AiGame';">Game</span></a>
								<li><a href="${pageContext.request.contextPath}/openCV" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/openCV';">openCV</span></a>
								<li><a href="${pageContext.request.contextPath}/ocr" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/ocr';">OCR</span></a>
								<li><a href="${pageContext.request.contextPath}board/photoBoard" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/photoBoard">Photo Board</span></a></li>
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
<div style="height: 50px; background-color: rgba(66, 209, 244, 0.3);"></div>
<div style="text-align: center; background-color: rgba(66, 209, 244, 0.3);">
	<img src="${pageContext.request.contextPath}/resources/image/me.jpg" >
<!-- 	<div id="button1 background-color: rgba(66, 209, 244, 0.3);">
		<button onclick="javascript:history.back(-1)">Go back</button>
		<button onclick='javasrcipt:location.href="${pageContext.request.contextPath}/"'>Go Home</button>
	</div> -->
	<h1>Kim Gilseob (Eric Kim)</h1>
<div id="wrapTable" >
	<table>
		<tr>
			<td>My Age(年齢)</td>
			<td id="myAge" >1988. 10. 31</td>
		</tr>
		<tr>
			<td>bb</td>
			<td>bb</td>
		</tr>
		<tr>
			<td>cc</td>
			<td>cc</td>
		</tr>
	</table>
</div>
<div style="height: 100px;"></div>
</div>

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
    </footer>

    	 <!-- Bootstrap Core JavaScript -->
    <script src="resources/pageDesign/pageDesign1/js/bootstrap.min.js"></script>
	<!-- jQuery -->
    <script src="resources/pageDesign/pageDesign1/js/jquery.js"></script>
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
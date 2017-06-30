<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
    <meta charset="utf-8">

	<title>Welcome~! Eric's Page</title>
 	<link href="resources/navibar/assets/css/main.css" rel="stylesheet">
    
    <link href="resources/pageDesign/pageDesign1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/pageDesign/pageDesign1/css/stylish-portfolio.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="resources/pageDesign/pageDesign1/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	
	<script src="resources/pageDesign/pageDesign1/js/jquery.js"></script>
	
<script type="text/javascript">

	$(function(){
	   $("#uploadFile").on('click',proFileShow); 
	});
	   // 파일 처리 
	function proFileShow() { 
	   var upload = document.getElementsByName('uploadFile')[0],
	       holder = document.getElementById("holder");
	   
	   upload.onchange = function (e) {
	      e.preventDefault();
	      var file = upload.files[0],
	         reader = new FileReader();
	      reader.onload = function (event) {
	         var img = new Image();
	         img.src = event.target.result;
	         img.style="border: solid 3px #333";
	         img.width = 500;
	         img.height = 500;
	         holder.innerHTML = '';
	         //appendChild is not a function 에러 수정
	         holder.appendChild(img);
	         //var div=document.createElement("div");
	         //div.appendChild(img);
	         //document.getElementById('holder').appendChild(div);
	      };
	      reader.readAsDataURL(file);
	      return false;
	   };
	}
</script>

</head>
<body>
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
								<li><a href="#about" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user" style="font-size: 18px;" onclick=$("#menu-close").click();>About Me</span></a></li>
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
    
	<div class="text-center">
            <h1>OCR - TEST / Ver : English</h1>
            <br>
    </div>
	<div class="row text-center" style="position: absolute; top: 150px; left: 200px;" >
			<div id="holder" class="col-md-5">
			<img onclick="$('#uploadFile').trigger('click');" src="${pageContext.request.contextPath}/getPhoto?file_id=${photo}" onerror="javascript:this.src='${pageContext.request.contextPath}/resources/pageDesign/pageDesign1/img/add_image.png'" width="40%" height="40%" style="width: 500px; height: 500px; border: solid 3px #333" >
			</div>
		<div class="col-md-1 col-sm-6 text-right" >
			<form id="form1" action="ocr" method="post" enctype="multipart/form-data" class="col-md-5 text-right" >
				<input type="file" id="uploadFile" name="uploadFile" accept=".gif, .jpg, .png" style="display: none;">
				<input type="submit" class="btn btn-dark" id="con" value="변환" >
			</form>
		</div>
		<div class="col-md-6 col-sm-6" >
			<textarea cols="30" rows="10" style="font-size: large; width: 500px; height: 500px;" >${ocr }</textarea>
		</div>
	</div>
	
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
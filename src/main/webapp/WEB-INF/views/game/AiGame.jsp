<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Align 4 Game</title>
<head>
  <!--  Styles  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/gameCssAndJS/game.css">
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/resources/navibar/assets/css/main.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/css/stylish-portfolio.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
							<span class="image avatar48"><img src="${pageContext.request.contextPath}/resources/image/me.jpg" alt="" /></span>
							<h1 id="title">Eric Gilseob Kim</h1>
							<p>Soft Engineer</p>
						</div>
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home" style="font-size: 18px;" onclick=$("#menu-close").click();>Intro</span></a></li>
								<li><a href="#about" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user" style="font-size: 18px;" onclick=$("#menu-close").click();>About Me</span></a></li>
								<li><a href="${pageContext.request.contextPath}/board/board_index" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/board/board_index';">Board</span></a>
								<li><a href="${pageContext.request.contextPath}/game/AiGame" id="board-link" class ="skel-layers-ignorehref"><span class="icon fa-th" style="font-size: 18px;" onclick="location.href='${pageContext.request.contextPath}/game/AiGame';">Game</span></a>
								<li><a href="#photo" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 18px;" onclick=$("#menu-close").click();>Photo Board</span></a></li>
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


  <div class="wrapper">
    <div class="content">
      <div class="sidebar">
        <h1>Align 4</h1>
        <div class="panel dif">
          <h2>Difficulty</h2>
          <div class="dif-options">
            <div>
              <input id="dif1" type="radio" name="dif-options" value="1">
              <label for="dif1">1</label>
            </div>
            <div>
              <input id="dif2" type="radio" name="dif-options" value="2">
              <label for="dif2">2</label>
            </div>
            <div>
              <input id="dif3" type="radio" name="dif-options" value="3" checked>
              <label for="dif3">3</label>
            </div>
            <div>
              <input id="dif4" type="radio" name="dif-options" value="4">
              <label for="dif4">4</label>
            </div>
            <div>
              <input id="dif5" type="radio" name="dif-options" value="5">
              <label for="dif5">5</label>
            </div>
          </div>
          <div class="start">
            <button>Start Game</button>
          </div>
        </div>
        <div class="panel info">
          <h2></h2>
          <div class="blurb"></div>
          <div class="outlook"></div>
        </div>
      </div>
      <div class="board">
        <div class="lit-columns">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
        <div class="lit-cells"></div>
        <div class="chips"></div>
        <div class="click-columns">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
      </div>
    </div>
  </div>
  	<script src="${pageContext.request.contextPath }/resources/gameCssAndJS/gameIndex.js"></script>
 	<!-- jQuery -->
    <script src="${pageContext.request.contextPath }/resources/pageDesign/pageDesign1/js/jquery.js"></script>
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
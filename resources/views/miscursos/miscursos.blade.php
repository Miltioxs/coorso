<!DOCTYPE html>
<html lang="en">
<head>
<title>Coorso</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/courses_styles.css">
<link rel="stylesheet" type="text/css" href="styles/courses_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header d-flex flex-row">
		<div class="header_content d-flex flex-row align-items-center">
			<!-- Logo -->
			<div class="logo_container">
				<div class="logo">
					<img src="images/logocom.png" alt="" height="40" width="40">
					<span>Coorso</span>
				</div>
			</div>

			<!-- Main Navigation -->
			<nav class="main_nav_container">
				<div class="main_nav">
					<ul class="main_nav_list">
						<li class="main_nav_item"><a href="index.html">Inicio</a></li>

						<li class="main_nav_item"><a href="courses.html">Cursos</a></li>
						<li class="main_nav_item"><a href="ofertas.html">Ofertas laborales</a></li>
						<!--li class="main_nav_item"><a href="news.html">news</a></li-->
						<li class="main_nav_item"><a href="contact.html">Contactanos</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="header_side d-flex flex-row justify-content-center align-items-center">
			<a href="">
				
				@isset($cursos->nickU)
				{{$cursos->nickU}}
				@else
				Login
				@endisset

			</a>
		</div>

		<!-- Hamburger -->
		<div class="hamburger_container">
			<i class="fas fa-bars trans_200"></i>
		</div>

	</header>

	<!-- Menu -->
	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<ul class="menu_list menu_mm">
					<li class="menu_item menu_mm"><a href="index.html">Inicio</a></li>

					<li class="menu_item menu_mm"><a href="courses.html">Cursos</a></li>
					<li class="menu_item menu_mm"><a href="ofertas.html">Ofertas laborales</a></li>

					<li class="menu_item menu_mm"><a href="contact.html">Contactanos</a></li>
				</ul>

				<!-- Menu Social -->

				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>

		</div>

	</div>

	<!-- Home -->

	<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(images/coorso_back1.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>Colección</h1>
		</div>
	</div>

	<!-- Popular -->

	<div class="popular page_section">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>Mis cursos</h1>
					</div>
				</div>
			</div>

			<div class="row course_boxes">
				<div class="row">
					
						@foreach($cursos as $cursos)

							<!-- Popular Course Item -->

									<div class="col-lg-4 course_box">
											<div class="card">
									<img class="card-img-top" src="images/course_1.jpg" alt="https://unsplash.com/@kellybrito">
									<div class="card-body text-center">
										<div class="card-title"><a href="courses.html">{{$cursos->nombreC}}</a></div><br>
										<div class="card-text">{{$cursos->descripcionC}}</div><p><br>

											@if($cursos->rango == "Principiante")
												<div class="card-text verde-g">Dificultad: <h3>{{$cursos->rango}}s</h3></div><br>
											@elseif($cursos->rango == "Intermedio")
												<div class="card-text amarillo-g">Dificultad: <h3>{{$cursos->rango}}s</h3></div><br>
											@else
												<div class="card-text rojo-g">Dificultad: <h3>{{$cursos->rango}}</h3></div><br>
											@endif

											@if($cursos->estadoC == 0)
												<div class="card-text verde-g"><h2>En progreso</h2></div><br>
											@else
												<div class="card-text azul-g"><h1>Finalizado
												</h1></div><br>
											@endif
										
										<div class="card-text">Categoria: <strong>{{$cursos->categoria}}s</strong></div>
									</div>
									<div class="price_box d-flex flex-row align-items-center">
										<div class="course_author_name">{{$cursos->maestro}} <span>Maestro</span></div>
										@if($cursos->notaC != 0)
											<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>{{$cursos->notaC}}</span></div>
										@endif	
										
									</div>
								</div>
							</div>						
						@endforeach
					
				</div>

				
			


			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">

			<!-- Newsletter -->



			<!-- Footer Content -->

			<div class="footer_content">
				<div class="row">

					<!-- Footer Column - About -->
					<div class="col-lg-3 footer_col">

						<!-- Logo -->
						<div class="logo_container">
							<div class="logo">
								<img src="images/logocom.png" alt="" height="40" width="40">
								<span>Coorso</span>
							</div>
						</div>

						<p class="footer_about_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum, tempor lacus.</p>

					</div>

					<!-- Footer Column - Menu -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Menu</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="index.html">Inicio</a></li>
								<li class="footer_list_item"><a href="#">Mis cursos</a></li>
								<li class="footer_list_item"><a href="#">Cursos</a></li>
								<!--li class="footer_list_item"><a href="news.html">News</a></li-->
								<li class="footer_list_item"><a href="contact.html">Contactanos</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column - Usefull Links -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Usefull Links</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="#">Testimonials</a></li>
								<li class="footer_list_item"><a href="#">FAQ</a></li>
								<li class="footer_list_item"><a href="#">Community</a></li>
								<li class="footer_list_item"><a href="#">Campus Pictures</a></li>
								<li class="footer_list_item"><a href="#">Tuitions</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column - Contact -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Contact</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Blvd Libertad, 34 m05200 Arévalo
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									+503 7939 4606
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>test@coorso.com
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>

			<!-- Footer Copyright -->

			<div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
				<div class="footer_copyright">
					<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
				</div>
				<div class="footer_social ml-sm-auto">
					<ul class="menu_social">
						<li class="menu_social_item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/courses_custom.js"></script>

</body>
</html>

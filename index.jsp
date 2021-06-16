<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Object Language_Selected = session.getAttribute("listbox");
    int year = Calendar.getInstance().get(Calendar.YEAR);
    if(Language_Selected == null)
    {
         session.setAttribute("listbox","TUR");
         Language_Selected = "TUR";
    }
    Boolean Is_Mobile = false;
    if(request.getHeader("User-Agent").contains("Mobi")) 
    {
    Is_Mobile = true;
    }
%>
<!DOCTYPE html>
<html style="background-color:#212529;">
<head> 
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>FENG 498</title>

		<meta name="robots" content="index,follow"/>
                <meta name="rating" content="general">
                <meta name="description" content="FENG 498"/>
                
		<!-- Favicon -->
		<link rel="shortcut icon" href="images/logo/1.webp" type="image/x-icon"/>
                <link rel="favicon" href="images/logo/1.webp" type="image/x-icon"/>

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width,initial-scale=1.0">

		<!-- Web Fonts  -->
		<link rel="stylesheet" href="css/fonts.css" type="text/css"/>
                
                <!-- Head Libs -->
		<script src="vendor/modernizr/modernizr.min.js"></script>

                <!-- Vendor CSS -->
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css"/>
		<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css"/>  

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css"/>
		<link rel="stylesheet" href="css/theme-elements.css"/>
                
		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/default.css"/> 
                
                <!-- LightBox CSS -->
                <link rel="stylesheet" href="css/lightbox.css"/>  
	</head>
        
	<body class="loading-overlay-showing" data-plugin-page-transition data-loading-overlay data-plugin-options="{'hideDelay': 500}">
		<div class="loading-overlay">
			<div class="bounce-loader">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>
           
		<div class="body">
			<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 75}">
				<div class="header-body border-color-hover-dark header-body-bottom-border" style="position: relative;">
					<div class="header-top header-top-default border-bottom-0">
						<div class="container">
							<div class="header-row" style="padding:0;">
								<div class="header-column justify-content-start">
									<div class="header-row">
										<nav class="header-nav-top">
											<ul class="nav nav-pills text-uppercase text-2">
<form action="Language" method="post">
<select name="listbox">
<%
            if(Language_Selected == null || Language_Selected.equals("TUR"))
                    {
%>   
           <option value="TUR" selected>Türkçe</option>
<%
                    }
            else
                    {
%>
         <option value="TUR">Türkçe</option>
<% 
                    }    
%>    
<% 
            if(Language_Selected.equals("GER"))
                    {
%>   
                    <option value="GER" selected>Deutsch</option> 
<%
                    }
            else
                    {
%>
        <option value="GER">Deutsch</option>
<% 
                    }    
%> 
        <% 
            if(session.getAttribute("listbox").equals("ENG"))
                    {
%>   
        <option value="ENG" selected>English</option> 
<%
                    }
            else
                    {
%>
       <option value="ENG">English</option>
<% 
                    }    
%> 
</select>

<% 
            if(Language_Selected == null || Language_Selected.equals("TUR"))
                    {
%>   
                     <input type="submit" name ="button1" value="Seç">
<%
                    }
            else if(Language_Selected.equals("GER"))
                    {
%>
        <input type="submit" name ="button1" value="Wahlen">
<% 
                    }    
            else
                    {
%>
        <input type="submit" name ="button1" value="Select">
<% 
                    }    
%> 
</form>
											</ul>
										</nav>
									</div>
								</div>
								<div class="header-column justify-content-end">
									<div class="header-row">
										<nav class="header-nav-top">
											<ul class="nav nav-pills">
												<li class="nav-item">
													<a alt="E-Mail" href="mailto:atahanekici@hotmail.com" target="_blank"><i class="far fa-envelope text-4 text-color-primary" style="top: 2px;"></i>Email</a>
												</li>
												<li class="nav-item">
													<a alt="Whatsapp"
                                                                                                        href="https://api.whatsapp.com/send?phone=+905433453739" target="_blank"><i class="fab fa-whatsapp text-4 text-color-primary" style="top: 1px;"></i>Whatsapp</a>
												</li>
                                                                                                <li>
                                                                                                        <a alt="GİtHub" href="https://github.com/AtahanEkici/FENG-498" target="_blank"><i class="fab fa-github text-4 text-color-primary" style="top: 0px;"></i>GitHub</a>
                                                                                                </li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="header-container container">
						<div class="header-row">
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo">
										<a href="MainPage">
                                                                                    <img src="images/logo/1.webp" class="bglogosticky lazy" alt="site logo" style="max-height:75px;width:auto"/>  
										</a>
									</div>
								</div>
							</div>
							<div class="header-column justify-content-end">
								<div class="header-row">
									<div class="header-nav header-nav-links order-2 order-lg-1">
										<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
											<nav class="collapse">
												<ul class="nav nav-pills" id="mainNav">
                                                                                                                <li class="dropdown">
														<a class="dropdown-item" href="documents">
                                                                                                                    <%
                                                                                                                        if(Language_Selected == null || Language_Selected.equals("ENG"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Documents
                                                                                                                    <%       
                                                                                                                        }

                                                                                                                     else if(Language_Selected.equals("GER"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Unterlagen
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    
                                                                                                                    else
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Dökümanlar
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    %>        
														</a>
													</li>  
												</ul>
											</nav>
										</div>
									<ul class="header-social-icons social-icons social-icons-clean social-icons-icon mb-3">
									<li class="social-icons-github"><a href="https://github.com/AtahanEkici/FENG-498" target="_blank" title="GitHub"><i class="fab fa-github"></i></a></li>
									</ul>
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">
											<i class="fas fa-bars"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
                                                                                                                
			<div role="main" class="main">
				<section style="margin-bottom:0px;padding:3%;" class="page-header page-header-sm">
					<div class="container">
						<div class="row">
							<div class="col-md-8 order-2 order-md-1 align-self-center p-static">
								<h1 data-title-border>                              <%
                                                                                                                        if(Language_Selected == null || Language_Selected.equals("ENG"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Home
                                                                                                                    <%       
                                                                                                                        }

                                                                                                                     else if(Language_Selected.equals("GER"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Hauptseite
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    
                                                                                                                    else
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Ana Sayfa
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    %></h1>
							</div> 
						</div>                                                    

					</div>     
                                </section>                    
</head>
                                    	<div class="container-fluid pt-2" style="margin:10px;">

					<h2 class="font-weight-normal text-7 mb-2"><strong class="font-weight-extra-bold"><%
                                                                                                                        if(Language_Selected == null || Language_Selected.equals("TUR"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Oyunlarımız Bunlar
                                                                                                                    <%       
                                                                                                                        }

                                                                                                                     else if(Language_Selected.equals("GER"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Hier sind unsere Spiele
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    
                                                                                                                    else
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Here is our Games
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    %></strong></h2>
					<p class="lead"><%
                                                                                                                        if(Language_Selected == null || Language_Selected.equals("TUR"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Umarım beğenirsiniz.
                                                                                                                    <%       
                                                                                                                        }

                                                                                                                     else if(Language_Selected.equals("GER"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Wir hoffen, dass Sie sie genießen würden.
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    
                                                                                                                    else
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            We hope that you would enjoy them.
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    %></p>
                                        
                                        
                                        <p>|<a target="_blank" href="https://www.linkedin.com/in/atahan-ekici-580801167/"> Atahan Ekici </a>|<a target="_blank" href="https://www.linkedin.com/in/egemen-ustaoglu/"> Egemen Ustaoğlu </a>|</p>
					<div class="row pb-5">
						<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
							<span class="thumb-info thumb-info-hide-wrapper-bg">
								<span class="thumb-info-wrapper">
									<a href="https://github.com/AtahanEkici/FENG-497" target="_blank">
                                                                            <img style="height: 100%; width: 100%; object-fit: contain" src="img/Chocolate_Hopper.webp" alt="Örnek Resim"/>
										<span class="thumb-info-title">
										<span class="thumb-info-inner">Chocolate Hopper</span>
										</span>
									</a>
								</span>
								<span class="thumb-info-caption">
									<a href="Chocolate_Hopper.jsp" class="btn btn-primary btn-lg text-3 font-weight-semibold" style="width: 100%; margin-top: 10px;">Play Now!</a>
								</span>
							</span>
						</div>
						<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
							<span class="thumb-info thumb-info-hide-wrapper-bg">
								<span class="thumb-info-wrapper">
									<a href="https://github.com/AtahanEkici/FENG-497" target="_blank">
										<img style="height: 100%; width: 100%;" src="img/Color_Cubes.webp" alt="Örnek Resim"/>
										<span class="thumb-info-title">
										<span class="thumb-info-inner">Color Cubes</span>
										</span>
									</a>
								</span>
								<span class="thumb-info-caption">
									<a href="Color_Cubes.jsp" class="btn btn-primary btn-lg text-3 font-weight-semibold" style="width: 100%; margin-top: 10px; margin-bottom:0">Play Now!</a>
								</span>
							</span>
						</div>
						<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
							<span class="thumb-info thumb-info-hide-wrapper-bg">
								<span class="thumb-info-wrapper">
									<a href="https://github.com/AtahanEkici/FENG-498" target="_blank">
										<img style="height: 100%; width: 100%; object-fit: contain" src="img/Fleptris.webp" alt="Örnek Resim"/>
										<span class="thumb-info-title">
										<span class="thumb-info-inner">Fleptris</span>
										</span>
									</a>
								</span>
								<span class="thumb-info-caption">
									<a href="Fleptris.jsp"class="btn btn-lg btn-primary text-3 font-weight-semibold" style="width: 100%; margin-top: 10px;">Play Now!</a>
								</span>
							</span>
						</div>
						<div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
							<span class="thumb-info thumb-info-hide-wrapper-bg">
								<span class="thumb-info-wrapper">
									<a href="https://github.com/AtahanEkici/FENG-498" target="_blank">
										<img style="height: 100%; width: 100%; object-fit: contain" src="img/under_development.webp" alt="Örnek Resim"/>
										<span class="thumb-info-title">
										<span class="thumb-info-inner">Game 4</span>
										</span>
									</a>
								</span>
								<span class="thumb-info-caption">
									<a href="Cannon Smash.jsp" class="btn btn-lg btn-primary text-3 font-weight-semibold" style="width: 100%; margin-top: 10px; disabled">In development</a>
								</span>
							</span>
						</div>
					</div>
				</div>
                        </div>
                </div>                             
			<footer id="footer" style=" margin-top: 0px; border-top-width: 0px;">
			<div class="footer-copyright">
			<div class="row py-4" style="   
   position: relative;
   left: 0;
   right: 0;
   bottom: 0;
   width: 100%;
   margin: 0;
   text-align: center;">
                                                    
							<div class="col text-center">
								<ul class="footer-social-icons social-icons social-icons-clean social-icons-icon-light mb-3">
									<li class="social-icons-github"><a href="https://github.com/AtahanEkici/FENG-498" target="_blank" title="GitHub"><i class="fab fa-github-alt"></i></a></li>
                                                                        <li class="social-icons-clean"><a href="mailto:atahanekici@hotmail.com" target="_blank" title="MailTo"><i class="fa fa-envelope-square"></i></a></li>
								</ul>
								<p><strong>FENG 498</strong> - <%=year%> - <%
                                                                                                                        if(Language_Selected == null || Language_Selected.equals("ENG"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            All Rights Reserved.
                                                                                                                    <%       
                                                                                                                        }

                                                                                                                     else if(Language_Selected.equals("GER"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Alle Rechte vorbehalten
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    
                                                                                                                    else
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Bütün Hakları Saklıdır.
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    %></p>
							</div>
						</div>
				</div>
			</footer>
                </div>
               <!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
                 
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
                		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
                <script src="js/clicked.js"></script>
                <script src="js/lightbox.min.js"></script>
                
</html>
</body>

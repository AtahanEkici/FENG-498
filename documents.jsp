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
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><%
                                                                                                                        if(Language_Selected == null || Language_Selected.equals("TR"))
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Raporlarımız
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    else
                                                                                                                        {
                                                                                                                    %>
                                                                                                                            Reports
                                                                                                                    <%       
                                                                                                                        }
                                                                                                                    %></title>

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

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css"/>
		<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css"/>
                <link rel="stylesheet" href="vendor/animate/animate.min.css"/>
                
		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css"/>
		<link rel="stylesheet" href="css/theme-elements.css"/>

		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/default.css"/> 

		<!-- Head Libs -->
		<script src="vendor/modernizr/modernizr.min.js"></script>
                
              
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
				<div class="header-body border-color-primary header-body-bottom-border">
					<div class="header-top header-top-default border-bottom-0">
						<div class="container">
							<div class="header-row py-2">
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
                     <input type="submit" name ="button5" value="Seç">
<%
                    }
            else if(Language_Selected.equals("GER"))
                    {
%>
        <input type="submit" name ="button5" value="Wahlen">
<% 
                    }    
            else
                    {
%>
        <input type="submit" name ="button5" value="Select">
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
                                                                                                        <a alt="GitHub" href="https://github.com/AtahanEkici/FENG-498" target="_blank"><i class="fab fa-github text-4 text-color-primary" style="top: 0px;"></i>GitHub</a>
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
                                                                                    <img src="images/logo/1.webp" class="bglogosticky lazy" alt="site logo" style="width:auto;max-height:70px;"/> 
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
														<a class="dropdown-item" href="MainPage">
													            <%
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
                                                                                                                    %>
														</a>
													</li>  
												</ul>
											</nav>
										</div>
									<ul class="header-social-icons social-icons social-icons-clean social-icons-icon mb-3">
									<li class="social-icons-github"><a href="https://github.com/AtahanEkici/FENG-498" target="_blank" title="GitHub"><i class="fab fa-github"></i></a></li></ul>
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
								<section style="margin-bottom: 0px;<%
if(Is_Mobile == true)
{
%>  
padding:3%;                                                     
<%        
}
%>"class="page-header page-header-sm">
					<div class="container">
						<div class="row">
							<div class="col-md-8 order-2 order-md-1 align-self-center p-static">
								
							</div>
						</div>
					</div>     
                                </section>                                          
        
                                        <div>
  <ul class="list-group appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="500">
      
  <li class="list-group-item list-group-item-primary"><b>Buluşma Raporları</b>
  <a href="reports/Week 1/Meeting Minutes Form-1.pdf" target="pdf-frame" class="list-group-item disabled ">1. Buluşma Raporu</a>
  <a href="reports/Week 2/Meeting Minutes Form-2.pdf" target="pdf-frame" class="list-group-item disabled">2. Buluşma Raporu</a>
  <a href="reports/Week 3/Meeting Minutes Form-3.pdf" target="pdf-frame" class="list-group-item disabled">3. Buluşma Raporu</a>
  <a href="reports/Week 4/Meeting Minutes Form-4.pdf" target="pdf-frame" class="list-group-item disabled">4. Buluşma Raporu</a>
  <a href="reports/Week 5/Meeting Minutes Form-5.pdf" target="pdf-frame" class="list-group-item disabled">5. Buluşma Raporu</a>
  <a href="reports/Week 6/Meeting Minutes Form-6.pdf" target="pdf-frame" class="list-group-item disabled">6. Buluşma Raporu</a>
  <a href="reports/Week 7/Meeting Minutes Form-7.pdf" target="pdf-frame" class="list-group-item disabled">7. Buluşma Raporu</a>
  <a href="reports/Week 8/Meeting Minutes Form-8.pdf" target="pdf-frame" class="list-group-item disabled">8. Buluşma Raporu</a>
  <a href="reports/Week 9/Meeting Minutes Form-9.pdf" target="pdf-frame" class="list-group-item disabled">9. Buluşma Raporu</a>
  <a href="reports/Week 10/Meeting Minutes Form-10.pdf" target="pdf-frame" class="list-group-item disabled">10. Buluşma Raporu</a>
  <a href="reports/Week 11/Meeting Minutes Form-11.pdf" target="pdf-frame" class="list-group-item disabled">11. Buluşma Raporu</a>
  </li>

  <li class="list-group-item list-group-item-info"><b>Proje Sunumu</b>
  <a href="reports/Proposal/Graduation Project Proposal.pdf" target="pdf-frame" class="list-group-item disabled">Project Proposal</a>
  </li>

  <li class="list-group-item list-group-item-secondary"><b>Bitirme Dökümanı</b>
  <a href="reports/Final/FENG 498 Final Report.pdf" target="pdf-frame" class="list-group-item disabled">Final Document</a>
  </li>
      
  </ul>    
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

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
                <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>
                <script src="js/common/common.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>

		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
                <script src="js/common/common.init.js"></script>    
</body>
</html>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="HandheldFriendly" content="True">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="description" content="Taxi Redu">
<meta name="author" content="Coffeecream Themes, info@coffeecream.eu">
<title>Taxi Feik</title>
<link rel="shortcut icon" href="images/favicon.png">

<link href="css/style.css" rel="stylesheet">
</head>
<body>

<header class="header">
<div class="top-bar">
<div class="container">
<ul class="social-links">
<li><a href="http://facebook.com">Facebook</a></li>
<li><a href="http://twitter.com">Twitter</a></li>
<li><a href="http://linkedin.com">LinkedIn</a></li>
<li><a href="http://instagram.com">Instagram</a></li>
</ul>
<button id="phone-trigger" class="phone-trigger ion-android-call"></button>
<ul class="phones">
<li><a href="tel:442-12-10"><span>Taxi</span> 442-12-10</a></li>
<li><a href="tel:442-12-10"><span>Garage</span> 442-12-10</a></li>
<li><a href="tel:442-12-10"><span>Contact</span> 442-12-10</a></li>
</ul>
</div>
</div>
<div id="nav-bar" class="nav-bar">
<div class="container">
<a href="index.ftl" class="logo"><img src="images/logo.svg" alt="Taxi Redu" /></a>
<button id="nav-trigger" class="nav-trigger ion-android-menu"></button>
<nav class="main-nav">
  <ul>
  <li class="active"><a href="index.ftl">Inicio</a></li>
  <li><a href="services.ftl">Servicios</a></li>
  <li><a href="drivers.ftl">Conductores</a></li>
  <li><a href="cars.ftl">Carros</a></li>
  <li><a href="garage.ftl">Garage</a></li>
  <li><a href="locations.ftl">Localizacion</a></li>
  <li><a href="index.ftl#!">Paginas</a>
  <ul>
  <li><a href="about.html">Nosotros</a></li>
  <li><a href="testimonials.html">Testimonials</a></li>
  <li><a href="jobs.ftl">Trabajo</a></li>
  <li><a href="blog.html">Blog</a></li>
  <li><a href="contact.ftl">Contactanos</a></li>
  <li><a href="404.html">Error 404</a></li>
  <li><a href="index.ftl#!">Third Level Nav</a>
  <ul>
<li><a href="#!">Third Level 1</a></li>
<li><a href="#!">Third Level 2</a></li>
<li><a href="#!">Third Level 3</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</nav>
</div>
</div>
<svg height="20" width="2560" class="pattern">
<defs>
<pattern id="header-pattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
<rect width="10" height="10" />
<rect x="10" y="10" width="10" height="10" />
</pattern>
<mask id="header-mask" x="0" y="0" width="2560" height="20">
<rect x="0" y="0" width="2560" height="20" />
</mask>
</defs>
<rect x="0" y="0" width="2560" height="20" id="header-image" />
</svg>
</header>


<div class="content">

<section class="intro">
<div class="container">
<div class="row">
<div class="col-sm-12">
<div class="title">
<h1>Taxista</h1>
<h6>Trabajo tiempo completo</h6>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-8">
<p><img src="images/job.jpg" alt="" class="img-rounded" /></p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vehicula sapien at turpis pharetra pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris neque lectus, sollicitudin eu metus nec, vulputate vestibulum mauris. Quisque volutpat dui id metus ornare, quis ultrices risus mollis. Curabitur quis dignissim magna. Vestibulum efficitur posuere mi sit amet placerat. Nullam ullamcorper tempus diam, sit amet congue arcu fringilla at.</p>
<p>Etiam vel velit at orci facilisis fermentum quis placerat nisl. In blandit euismod posuere. Cras vitae sem vel dolor bibendum aliquam ut volutpat leo. Phasellus sagittis dui eget eros hendrerit pulvinar. Etiam a semper est. Cras commodo lectus lacus, et scelerisque est laoreet vel. Pellentesque et dolor cursus, dignissim est et, tristique dolor. Quisque pellentesque vulputate eros sed scelerisque. Suspendisse congue lorem vitae sodales consequat. Nunc nec ex non felis condimentum luctus.</p>
<ul class="job-meta">
<li class="job-salary">$45,000 - $60,000</li>
<li class="job-closing">Closing: Dec 29, 2016</li>
</ul>
</div>
<div class="col-sm-4">
<form action="/form/ingresar_conductor" method="POST" id="commentForm">
<fieldset>
<input type="text" name="name" placeholder="Nombre" />
</fieldset>
<fieldset>
<input type="text" name="ape" placeholder="Apellidos" />
</fieldset>
<fieldset>
<input type="text" name="nacimiento" placeholder="Fecha de Nacimiento" class="datepicker" />
</fieldset>
<fieldset>
<input type="text" name="licencia" placeholder="Licencia de conducir" />
</fieldset>
<fieldset>
<input type="text" name="caducidad" placeholder="fecha de caducidad" />
</fieldset>
<!--
<fieldset>
<input type="file" name="resume" />
</fieldset>-->
<button class="btn btn-primary">Aplicar para el trabajo</button>
</form>
</div>
</div>
</div>
</section>
</div>


<footer class="footer">
<svg height="20" width="2560" class="pattern">
<defs>
<pattern id="footer-pattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
<rect width="10" height="10" />
<rect x="10" y="10" width="10" height="10" />
</pattern>
<mask id="footer-mask" x="0" y="0" width="2560" height="20">
<rect x="0" y="0" width="2560" height="20" />
</mask>
</defs>
<rect x="0" y="0" width="2560" height="20" id="footer-image" />
</svg>
<div class="widgets">
<div class="container">
<div class="row">
<div class="col-sm-12 col-md-6">
<div class="widget">
<h6>About us</h6>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar ante eu lacinia vulputate. Curabitur lacus purus, lacinia non tempor at, condimentum accumsan velit. Nam quis elit a ipsum mattis mattis. In pharetra ultricies massa. Duis vel malesuada odio.</p>
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="widget">
<h6>Quick links</h6>
<ul class="quick-links">
  <li class="active"><a href="index.ftl">Inicio</a></li>
  <li><a href="services.ftl">Servicios</a></li>
  <li><a href="drivers.ftl">Conductores</a></li>
  <li><a href="cars.ftl">Carros</a></li>
  <li><a href="garage.ftl">Garage</a></li>
  <li><a href="locations.ftl">Localizacion</a></li>
  <li><a href="index.ftl#!">Paginas</a>
<li><a href="jobs.ftl">Trabajo</a></li>
<li><a href="blog.html">Blog</a></li>
<li><a href="contact.ftl">Contactanos</a></li>
</ul>
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="widget">
<h6>Contact</h6>
<ul class="contact">
<li class="hotline"><a href="tel:442-12-10">442-12-10</a></li>
<li class="phone"><a href="tel:212-647-0772">212-647-0772</a></li>
<li class="email"><a href="/cdn-cgi/l/email-protection#ddb4b3bbb29da9bca5b4baafbcbfbfb8aff3bfb4a7"><span class="__cf_email__" data-cfemail="3a53545c557a4e5b42535d485b58585f4814585340">[email&#160;protected]</span></a></li>
<li class="address">4603 Oakwood Avenue<br>New York, 1001</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="credits">
<div class="container">
<div class="copyright">&copy; 2017 Dalgom Corporations</div>
<ul class="social-links">
<li><a href="htp://facebook.com">Facebook</a></li>
<li><a href="htp://twitter.com">Twitter</a></li>
<li><a href="htp://linkedin.com">LinkedIn</a></li>
<li><a href="htp://instagram.com">Instagram</a></li>
</ul>
</div>
</div>
</footer>


<script src="js/email-decode.min.js"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/picker.js"></script>
<script src="js/picker.date.js"></script>
<script src="js/picker.time.js"></script>
<script src="js/uber-google-maps.min.js"></script>
<script src="js/settings.js"></script>

</body>
</html>

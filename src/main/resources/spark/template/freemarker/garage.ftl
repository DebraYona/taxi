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
    <title>Taxi Redu</title>
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
                    <li><a href="index.ftl">Home</a></li>
                    <li><a href="services.ftl">Services</a></li>
                    <li><a href="drivers.ftl">Drivers</a></li>
                    <li><a href="cars.ftl">Cars</a></li>
                    <li class="active"><a href="garage.ftl">Garage</a></li>
                    <li><a href="locations.ftl">Locations</a></li>
                    <li><a href="#!">Pages</a>
                        <ul>
                            <li><a href="about.html">About</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>
                            <li><a href="jobs.ftl">Jobs</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="contact.ftl">Contact</a></li>
                            <li><a href="404.html">Error 404</a></li>
                            <li><a href="#!">Third Level Nav</a>
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
                        <h2>Garage</h2>
                        <h6>See what we drive</h6>
                    </div>
                    <p class="text-center"><big>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at. Donec ultricies porta ante, vitae rhoncus purus ullamcorper vel. Ut mattis aliquam purus, ac sollicitudin elit porta quis. Aliquam fermentum, nibh scelerisque rutrum ultricies, felis elit commodo nisl, a lacinia dui odio vel velit. Curabitur vitae enim ullamcorper, rutrum dolor eu, pharetra odio.</big></p>
                    <hr class="blank">
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-sm-4 col-md-2 text-center">
                    <p><i class="icon-car-check icon-circle icon-big"></i></p>
                    <h6>Car checks</h6>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 text-center">
                    <p><i class="icon-oil-gauge icon-circle icon-big"></i></p>
                    <h6>Oils &amp; filters</h6>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 text-center">
                    <p><i class="icon-signal-warning icon-circle icon-big"></i></p>
                    <h6>Brakes</h6>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 text-center">
                    <p><i class="icon-car-battery icon-circle icon-big"></i></p>
                    <h6>Bateries</h6>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 text-center">
                    <p><i class="icon-gearbox icon-circle icon-big"></i></p>
                    <h6>Gearboxes</h6>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-2 text-center">
                    <p><i class="icon-headlight-low icon-circle icon-big"></i></p>
                    <h6>Lights</h6>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <hr class="thick">
                    <div class="title">
                        <h1>Mechanics</h1>
                        <h6>High qualified experts</h6>
                    </div>
                    <ul class="mechanics inline four-columns">
                        <li>
                            <img src="images/driver01.jpg" alt="" />
                            <h6>Alan Byrd</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver02.jpg" alt="" />
                            <h6>Ross Bennett</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver03.jpg" alt="" />
                            <h6>Tommie Armstrong</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver04.jpg" alt="" />
                            <h6>Daryl Parsons</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver05.jpg" alt="" />
                            <h6>Cody Bailey</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver06.jpg" alt="" />
                            <h6>Dennis Perez</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver07.jpg" alt="" />
                            <h6>Joel Aguilar</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver08.jpg" alt="" />
                            <h6>Willard Lambert</h6>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <div class="map" id="garage-map">
    </div>


    <section class="booking">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h2>Book appointment</h2>
                        <h6>Get your car fixed</h6>
                    </div>
                </div>
            </div>
            <form class="booking-form">
                <div class="row">
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="text" name="name" placeholder="Name" />
                        </fieldset>
                    </div>
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="number" name="phone" placeholder="Phone" />
                        </fieldset>
                    </div>
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="email" name="email" placeholder="Email" />
                        </fieldset>
                    </div>
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="text" name="date" placeholder="Date" class="datepicker" />
                        </fieldset>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <fieldset>
                            <textarea name="message" placeholder="Message"></textarea>
                        </fieldset>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary">Book Now</button>
                    </div>
                </div>
            </form>
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
                            <li class="active"><a href="index.ftl">Home</a></li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="services.ftl">Services</a></li>
                            <li><a href="drivers.ftl">Drivers</a></li>
                            <li><a href="cars.ftl">Cars</a></li>
                            <li><a href="garage.ftl">Garage</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>
                            <li><a href="jobs.ftl">Jobs</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="locations.ftl">Locations</a></li>
                            <li><a href="contact.ftl">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="widget">
                        <h6>Contact</h6>
                        <ul class="contact">
                            <li class="hotline"><a href="tel:442-12-10">442-12-10</a></li>
                            <li class="phone"><a href="tel:212-647-0772">212-647-0772</a></li>
                            <li class="email"><a href="/cdn-cgi/l/email-protection#a7cec9c1c8e7d3c6dfcec0d5c6c5c5c2d589c5cedd"><span class="__cf_email__" data-cfemail="d4bdbab2bb94a0b5acbdb3a6b5b6b6b1a6fab6bdae">[email&#160;protected]</span></a></li>
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


<script src="/cdn-cgi/scripts/0e574bed/cloudflare-static/email-decode.min.js"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/picker.js"></script>
<script src="js/picker.date.js"></script>
<script src="js/picker.time.js"></script>
<script src="js/uber-google-maps.min.js"></script>
<script src="js/settings.js"></script>

</body>
</html>

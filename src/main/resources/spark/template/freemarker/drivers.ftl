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
                        <h1>Conductores</h1>
                        <h6>High qualified chauffers</h6>
                    </div>
                    <p class="text-center"><big>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at. Donec ultricies porta ante, vitae rhoncus purus ullamcorper vel. Ut mattis aliquam purus, ac sollicitudin elit porta quis. Aliquam fermentum, nibh scelerisque rutrum ultricies, felis elit commodo nisl, a lacinia dui odio vel velit. Curabitur vitae enim ullamcorper, rutrum dolor eu, pharetra odio.</big></p>
                    <hr class="blank">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <ul class="drivers inline four-columns">
                        <li>
                            <img src="images/wacho.jpg" alt="" />
                            <h6>Ruby </h6>
                            <p>Audi A4</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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
                            <p>Peugeot 508</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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
                            <p>Mercedes-Benz S</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver04.jpg" alt="" />
                            <h6>Lola Lolita </h6>
                            <p>BMW 320i</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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
                            <p>BMW 530d</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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
                            <p>Opel Insignia</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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
                            <p>Ford Mondeo</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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
                            <p>Nissan Qashqai</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver01.jpg" alt="" />
                            <h6>Ray Ramsey</h6>
                            <p>Ford Focus C-Max</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver10.jpg" alt="" />
                            <h6>Aaron Roberts</h6>
                            <p>Volkswagen Passat</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver11.jpg" alt="" />
                            <h6>Joey Holmes</h6>
                            <p>Renault Laguna</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
                            <div class="hover">
                                <ul>
                                    <li><a href="http://facebook.com"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="http://twitter.com"><i class="ion-social-twitter"></i></a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <img src="images/driver12.jpg" alt="" />
                            <h6>Terence Bradley</h6>
                            <p>Škoda Octavia</p>
                            <p>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star-half"></i>
                                <i class="ion-android-star-outline"></i>
                            </p>
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


    <section class="promo">
        <img src="images/promo3.jpg" alt="" />
        <div class="tint from-left"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <hgroup>
                        <h3>Our cabs</h3>
                        <h6>View our taxis</h6>
                    </hgroup>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at.</p>
                    <a href="cars.ftl" class="btn btn-secondary">Check out our cabs</a>
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
                            <li class="email"><a href="/cdn-cgi/l/email-protection#a2cbccc4cde2d6c3dacbc5d0c3c0c0c7d08cc0cbd8"><span class="__cf_email__" data-cfemail="066f6860694672677e6f6174676464637428646f7c">[email&#160;protected]</span></a></li>
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
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="description" content="Taxi Feik">
    <meta name="author" content="Dalgom themes, info@dalgomcream.eu">
    <title>Taxi Feik </title>
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
                <li><a href="tel:442-12-10"><span>Contactanos</span> 442-12-10</a></li>
            </ul>
        </div>
    </div>
    <div id="nav-bar" class="nav-bar">
        <div class="container">
            <a href="index.html" class="logo"><img src="images/logo.svg" alt="Taxi Feik" /></a>
            <button id="nav-trigger" class="nav-trigger ion-android-menu"></button>
            <nav class="main-nav">
                <ul>
                    <li class="active"><a href="index.html">Inicio</a></li>
                    <li><a href="services.ftl">Servicios</a></li>
                    <li><a href="drivers.ftl">Conductores</a></li>
                    <li><a href="cars.ftl">Carros</a></li>
                    <li><a href="garage.ftl">Garage</a></li>
                    <li><a href="locations.ftl">Localizacion</a></li>
                    <li><a href="index.html#!">Paginas</a>
                        <ul>
                            <li><a href="about.html">Nosotros</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>
                            <li><a href="jobs.ftl">Trabajo</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="contact.ftl">Contactanos</a></li>
                            <li><a href="404.html">Error 404</a></li>
                            <li><a href="index.html#!">Third Level Nav</a>
                                <ul>
                                    <li><a href="index.html#!">Third Level 1</a></li>
                                    <li><a href="index.html#!">Third Level 2</a></li>
                                    <li><a href="index.html#!">Third Level 3</a></li>
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

    <div class="slider owl-carousel">
        <div class="slide">
            <img src="images/slider1.jpg" alt="" class="slider-image" />
            <div class="slider-subtitle">Contactanos 24/7</div>
            <div class="slider-title">442-12-10</div>
            <div class="slider-button"><a href="about.html" class="btn btn-primary">Read more about us</a></div>
        </div>
        <div class="slide">
            <img src="images/slider2.jpg" alt="" class="slider-image" />
            <div class="slider-subtitle">Only high qualified</div>
            <div class="slider-title">Chauffers</div>
            <div class="slider-button"><a href="drivers.ftl" class="btn btn-primary">Check out our drivers</a></div>
        </div>
        <div class="slide">
            <img src="images/slider3.jpg" alt="" class="slider-image" />
            <div class="slider-subtitle">Our offer includes</div>
            <div class="slider-title">Servicios</div>
            <div class="slider-button"><a href="services.ftl" class="btn btn-primary">How can we help</a></div>
        </div>
    </div>

    <!--Registrate-->

    <section class="booking">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h2>Registrate</h2>
                        <h6>Facil &amp; gratis </h6>
                    </div>
                </div>
            </div>
            <form class="booking-form">


                <div class="row">
                    <form action="/form/ingresar_cliente" method="GET" id="commentForm" >

                    <div class="col-sm-6">

                            <fieldset>
                                <input type="text" name="name" placeholder="Nombre" />
                            </fieldset>
                            <fieldset>
                                <input type="text" name="apellidos" placeholder="Apellidos" />
                            </fieldset>
                    </div>

                    <div class="col-sm-6">

                        <fieldset>
                            <input type="email" name="email" placeholder="Email" />
                        </fieldset>
                        <fieldset>
                            <input type="number" name="phone" placeholder="Telefono" />
                        </fieldset>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <button class="btn btn-primary">Registrate Ahora</button>
                        </div>
                    </div>

                    </form>
                </div>
            </form>
        </div>

    </section>


    <!--//Pedir taxi-->
    <section class=" booking">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h2>Pedir taxi en linea</h2>
                        <h6>Mas rapido &amp; barato </h6>
                    </div>
                </div>
            </div>
            <form class="booking-form">

                <div class="row">
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="text" name="name" placeholder="Nombre" />
                        </fieldset>
                        <fieldset>
                            <input type="text" name="email" placeholder="Telefono" />
                        </fieldset>
                    </div>
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="text" name="from" placeholder="Desde" />
                        </fieldset>
                        <fieldset>
                            <input type="text" name="to" placeholder="Hasta" />
                        </fieldset>
                    </div>
                    <div class="col-sm-3">
                        <fieldset>
                            <input type="text" name="date" placeholder="Fecha" class="datepicker" />
                        </fieldset>
                        <fieldset>
                            <input type="text" name="time" placeholder="Hora" class="timepicker" />
                        </fieldset>

                    </div>
                    <div class="col-sm-3">

                        <fieldset>
                            <select name="passengers">
                                <option>Pasageros</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>13</option>
                                <option>14</option>
                                <option>15</option>
                                <option>16</option>
                            </select>
                        </fieldset>
                        <fieldset>
                            <select name="pago">

                                <option>Tipo de pago</option>
                                <option>Efectivo</option>
                                <option>Tarjeta</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <fieldset>
                            <textarea name="message" placeholder="Mensaje"></textarea>
                        </fieldset>

                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary">Pedir Ahora</button>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <!--Precios-->
    <section class="alt prices">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h2>Prices</h2>
                        <h6>No hidden charges</h6>
                    </div>
                    <div class="info show-mobile">
                        Drag the table left and right.
                    </div>
                    <div class="responsive-table">
                        <table class="price-table">
                            <thead>
                            <tr>
                                <th></th>
                                <th><i class="icon-car-econo"></i>Econo</th>
                                <th><i class="icon-car-classic"></i>Classic</th>
                                <th><i class="icon-car-wagon"></i>Wagon</th>
                                <th><i class="icon-car-minivan"></i>Minivan</th>
                                <th><i class="icon-car-suv"></i>SUV</th>
                                <th><i class="icon-car-limo"></i>Limousine</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>Per km</th>
                                <td>$5</td>
                                <td>$6</td>
                                <td>$7</td>
                                <td>$8</td>
                                <td>$10</td>
                                <td>$15</td>
                            </tr>
                            <tr>
                                <th>Landing</th>
                                <td>$5</td>
                                <td>$6</td>
                                <td>$7</td>
                                <td>$8</td>
                                <td>$10</td>
                                <td>$50</td>
                            </tr>
                            <tr>
                                <th>Parking</th>
                                <td>$5</td>
                                <td>$6</td>
                                <td>$7</td>
                                <td>$8</td>
                                <td>$10</td>
                                <td>$30</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th></th>
                                <td><a href="index.html#!" class="btn btn-primary">More</a></td>
                                <td><a href="index.html#!" class="btn btn-primary">More</a></td>
                                <td><a href="index.html#!" class="btn btn-primary">More</a></td>
                                <td><a href="index.html#!" class="btn btn-primary">More</a></td>
                                <td><a href="index.html#!" class="btn btn-primary">More</a></td>
                                <td><a href="index.html#!" class="btn btn-primary">More</a></td>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Why-->
    <section class="why">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h2>Por qué elegirnos</h2>
                        <h6>Los mejores servicios de  la ciudad </h6>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="service">
                        <i class="icon-shield-2"></i>
                        <p><strong>Reserve con toda seguridad</strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ex ligula, elementum accumsan accumsan nec, venenatis ut justo.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="service">
                        <i class="icon-thumbs-up-2"></i>
                        <p><strong>Servicios fiables</strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ex ligula, elementum accumsan accumsan nec, venenatis ut justo.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="service">
                        <i class="icon-taxi-1"></i>
                        <p><strong>Coches de lujo</strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ex ligula, elementum accumsan accumsan nec, venenatis ut justo.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="service">
                        <i class="icon-credit-card"></i>
                        <p><strong>aceptan tarjetas de crédito</strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ex ligula, elementum accumsan accumsan nec, venenatis ut justo.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="service">
                        <i class="icon-headphone"></i>
                        <p><strong>Servicio al Cliente</strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ex ligula, elementum accumsan accumsan nec, venenatis ut justo.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="service">
                        <i class="icon-smoke-free-area"></i>
                        <p><strong>No fumar y limpias</strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ex ligula, elementum accumsan accumsan nec, venenatis ut justo.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <a href="about.html" class="btn btn-primary">Leer mas sobre nosotros</a>
                </div>
            </div>
        </div>
    </section>



    <!--Testimonios-->

    <section class="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h2>Testimonios</h2>
                        <h6>Clientes</h6>
                    </div>
                    <div class="owl-carousel">
                        <div>
                            <img src="images/driver02.jpg" alt="" class="person" />
                            <blockquote>
                                Great job, Debra
                                <footer>Jaime Pariona, Profesor</footer>
                            </blockquote>
                        </div>
                        <!--
                        <div>
                        <img src="images/testimonial2.jpg" alt="" class="person" />
                        <blockquote>
                        Taxi Grabber is the most valuable business resource we have EVER purchased. I couldn't have asked for more than this. After using Taxi Grabber my business skyrocketed!
                        <footer>Robert Bartlett, Buena Vista Garden Maintenance</footer>
                        </blockquote>
                        </div>
                        <div>
                        <img src="images/testimonial3.jpg" alt="" class="person" />
                        <blockquote>
                        Keep up the excellent work. I would like to personally thank you for your outstanding product. I strongly recommend Taxi Grabber to everyone interested in running a successful business! Not able to tell you how happy I am with Taxi Grabber.
                        <footer>Dolores Garza, Audio Aid</footer>
                        </blockquote>
                        </div>
                        <div>
                        <img src="images/testimonial4.jpg" alt="" class="person" />
                        <blockquote>
                        Taxi Grabber is the next killer theme. This is simply unbelievable! Man, this thing is getting better and better as I learn more about it. Taxi Grabber is exactly what our business has been lacking.
                        <footer>Louis Rush, Access Asia</footer>
                        </blockquote>
                        </div>
                        <div>
                        <img src="images/testimonial5.jpg" alt="" class="person" />
                        <blockquote>
                        Definitely worth the investment. I wish I would have thought of it first. Taxi Grabber impressed me on multiple levels.
                        <footer>Florence Schilling, Sunburst Garden Management</footer>
                        </blockquote>
                        </div>
                        </div> -->
                        <a href="testimonials.html" class="btn btn-secondary">Read all testimonials</a>
                    </div>
                </div>
            </div>
    </section>

</div>


<!--Footer-->

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
                            <li class="active"><a href="index.html">Inicio</a></li>
                            <li><a href="services.ftl">Servicios</a></li>
                            <li><a href="drivers.ftl">Conductores</a></li>
                            <li><a href="cars.ftl">Carros</a></li>
                            <li><a href="garage.ftl">Garage</a></li>
                            <li><a href="locations.ftl">Localizacion</a></li>
                            <li><a href="index.html#!">Paginas</a>
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
                            <li class="email"><a href="dalgom@club.com"</li>
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
                {}<li><a href="htp://linkedin.com">LinkedIn</a></li>
                <li><a href="htp://instagram.com">Instagram</a></li>
            </ul>
        </div>
    </div>
</footer>


<script src="/js/email-decode.min.js"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/picker.js"></script>
<script src="/js/picker.date.js"></script>
<script src="/js/picker.time.js"></script>
<script src="/js/uber-google-maps.min.js"></script>
<script src="/js/settings.js"></script>

</body>
</html>

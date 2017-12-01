<#include "master.ftl">
<#macro content>
<div class="content">

    <div class="slider owl-carousel">
        <div class="slide">
            <img src="/images/slider1.jpg" alt="" class="slider-image" />
            <div class="slider-subtitle">Contactanos 24/7</div>
            <div class="slider-title">442-12-10</div>
            <div class="slider-button"><a href="#" class="btn btn-primary">Read more about us</a></div>
        </div>
        <div class="slide">
            <img src="/images/slider2.jpg" alt="" class="slider-image" />
            <div class="slider-subtitle">Only high qualified</div>
            <div class="slider-title">Chauffers</div>
            <div class="slider-button"><a href="/conductores" class="btn btn-primary">Check out our drivers</a></div>
        </div>
        <div class="slide">
            <img src="/images/slider3.jpg" alt="" class="slider-image" />
            <div class="slider-subtitle">Our offer includes</div>
            <div class="slider-title">Servicios</div>
            <div class="slider-button"><a href="/servicios" class="btn btn-primary">How can we help</a></div>
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
            <form class="booking-form" action="/form/ingresar_viaje" method="GET" id="viajeForm">
                <div class="row">
                    <div class="col-sm-12" id="map" style="height: 300px"></div>
                    <input type="hidden" name="gi" id="inicio" />
                    <input type="hidden" name="gf" id="destino" />
                </div>

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
                                <option>Pasajeros</option>
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
                                <option value="1">Efectivo</option>
                                <option value="2">Tarjeta</option>
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
                        <button type="submit" class="btn btn-primary">Pedir Ahora</button>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <!--Precios-->
    <#--<section class="alt prices">
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
                            <td><a href="#" class="btn btn-primary">More</a></td>
                            <td><a href="#" class="btn btn-primary">More</a></td>
                            <td><a href="#" class="btn btn-primary">More</a></td>
                            <td><a href="#" class="btn btn-primary">More</a></td>
                            <td><a href="#" class="btn btn-primary">More</a></td>
                            <td><a href="#" class="btn btn-primary">More</a></td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>-->

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
                    <a href="#" class="btn btn-primary">Leer mas sobre nosotros</a>
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
                            <img src="/images/driver02.jpg" alt="" class="person" />
                            <blockquote>
                                Great job, Debra
                                <footer>Jaime Pariona, Profesor</footer>
                            </blockquote>
                        </div>
                        <!--
                        <div>
                        <img src="/images/testimonial2.jpg" alt="" class="person" />
                        <blockquote>
                        Taxi Grabber is the most valuable business resource we have EVER purchased. I couldn't have asked for more than this. After using Taxi Grabber my business skyrocketed!
                        <footer>Robert Bartlett, Buena Vista Garden Maintenance</footer>
                        </blockquote>
                        </div>
                        <div>
                        <img src="/images/testimonial3.jpg" alt="" class="person" />
                        <blockquote>
                        Keep up the excellent work. I would like to personally thank you for your outstanding product. I strongly recommend Taxi Grabber to everyone interested in running a successful business! Not able to tell you how happy I am with Taxi Grabber.
                        <footer>Dolores Garza, Audio Aid</footer>
                        </blockquote>
                        </div>
                        <div>
                        <img src="/images/testimonial4.jpg" alt="" class="person" />
                        <blockquote>
                        Taxi Grabber is the next killer theme. This is simply unbelievable! Man, this thing is getting better and better as I learn more about it. Taxi Grabber is exactly what our business has been lacking.
                        <footer>Louis Rush, Access Asia</footer>
                        </blockquote>
                        </div>
                        <div>
                        <img src="/images/testimonial5.jpg" alt="" class="person" />
                        <blockquote>
                        Definitely worth the investment. I wish I would have thought of it first. Taxi Grabber impressed me on multiple levels.
                        <footer>Florence Schilling, Sunburst Garden Management</footer>
                        </blockquote>
                        </div>
                        </div> -->
                        <a href="#" class="btn btn-secondary">Read all testimonials</a>
                    </div>
                </div>
            </div>
    </section>

</div>
</#macro>
<@display_page />




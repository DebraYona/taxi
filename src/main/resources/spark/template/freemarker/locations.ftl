<#include "master.ftl">
<#macro content>
<div class="content">

    <div class="map" id="locations-map">
    </div>


    <section class="intro">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="title">
                        <h1>Localizacion</h1>
                        <h6>mira donde estas!</h6>
                    </div>
                    <p class="text-center"><big>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at. Donec ultricies porta ante, vitae rhoncus purus ullamcorper vel. Ut mattis aliquam purus, ac sollicitudin elit porta quis. Aliquam fermentum, nibh scelerisque rutrum ultricies, felis elit commodo nisl, a lacinia dui odio vel velit. Curabitur vitae enim ullamcorper, rutrum dolor eu, pharetra odio.</big></p>
                    <hr class="blank">
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


    <section class="promo-phone">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="promo-phone-subtitle">LLamanos 24/7</div>
                    <div class="promo-phone-title">442-12-10</div>
                </div>
            </div>
        </div>
    </section>

</div>
</#macro>
<@display_page />
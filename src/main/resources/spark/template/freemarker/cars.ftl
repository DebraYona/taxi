<#include "master.ftl">
<#macro content>
<div class="content">

  <section class="intro">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title">
            <h1>Carros</h1>
            <h6>Registra tu Auto</h6>
          </div>
          <p class="text-center"><big>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at. Donec ultricies porta ante, vitae rhoncus purus ullamcorper vel. Ut mattis aliquam purus, ac sollicitudin elit porta quis. Aliquam fermentum, nibh scelerisque rutrum ultricies, felis elit commodo nisl, a lacinia dui odio vel velit. Curabitur vitae enim ullamcorper, rutrum dolor eu, pharetra odio.</big></p>
          <hr class="blank">

          <div class="row">
            <div class="col-sm-6">

              <fieldset>
                <input type="text" name="placa" placeholder="Numero Placa" />
              </fieldset>
              <fieldset>
                <input type="text" name="conductor" placeholder="Conductor" />
              </fieldset>
            </div>

            <div class="col-sm-6">

              <fieldset>
                <input type="text" name="year" placeholder="año de Fabricacion" />
              </fieldset>
              <fieldset>
                <input type="text" name="modelo" placeholder="Modelo" />
              </fieldset>
            </div>
            <div class="row">
              <div class="col-sm-12 text-center">
                <button class="btn btn-primary">Registrate Ahora</button>

              </div>
  </section>


  <section class="promo">
    <img src="/images/promo4.jpg" alt="" />
    <div class="tint from-left"></div>
    <div class="container">
      <div class="row">
        <div class="col-sm-5">
          <hgroup>
            <h3>Localizacion</h3>
            <h6>Where you can find us</h6>
          </hgroup>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at.</p>
          <a href="locations.ftl" class="btn btn-secondary">View our locations</a>
        </div>
      </div>
    </div>
  </section>

</div>
</#macro>
<@display_page />
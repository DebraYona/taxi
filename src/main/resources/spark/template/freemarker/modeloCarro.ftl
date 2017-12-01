<#include "master.ftl">
<#macro content>
<div class="content">

  <section class="intro">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title">
            <h1>Modelo de Autos</h1>
            <h6>Marcas y años</h6>
          </div>
          <p class="text-center"><big>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porttitor massa. Nullam elit turpis, eleifend sit amet felis quis, auctor tempus felis. Vivamus tristique felis est, a scelerisque magna egestas at. Donec ultricies porta ante, vitae rhoncus purus ullamcorper vel. Ut mattis aliquam purus, ac sollicitudin elit porta quis. Aliquam fermentum, nibh scelerisque rutrum ultricies, felis elit commodo nisl, a lacinia dui odio vel velit. Curabitur vitae enim ullamcorper, rutrum dolor eu, pharetra odio.</big></p>
          <hr class="blank">

          <div class="row">
            <div class="col-sm-6">

              <fieldset>
                <input type="text" name="nombre" placeholder="Modelo del Carro" />
              </fieldset>
              <fieldset>
                <input type="text" name="descripcion" placeholder="Descripcion" />
              </fieldset>
            </div>


            <div class="row">
              <div class="col-sm-12 text-center">
                <button class="btn btn-primary">Registrate Modelo</button>

              </div>
  </section>




</div>
</#macro>
<@display_page />
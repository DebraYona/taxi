<#macro title >Taxi Rebu</#macro>
<#macro content></#macro>
<#macro css></#macro>
<#macro js></#macro>

<#macro display_page>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="description" content="Taxi Rebu">
    <meta name="author" content="Dalgom themes, info@dalgomcream.eu">
    <title><@title >    </@title></title>
    <link rel="shortcut icon" href="/images/favicon.png">
    <link href="/css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://js.cit.api.here.com/v3/3.0/mapsjs-ui.css" />

    <@css>    </@css>
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
            <a href="/" class="logo"><img src="/images/logo.png" alt="Taxi Feik"/></a>
            <button id="nav-trigger" class="nav-trigger ion-android-menu"></button>
            <nav class="main-nav">
                <ul>
                    <li class="active"><a href="/">Inicio</a></li>
                    <li><a href="/servicios">servicios</a></li>
                    <li><a href="/conductores">conductores</a></li>
                    <li><a href="/carros">carros</a></li>
                    <li><a href="/modelo">Modelos</a></li>
                    <li><a href="/ubicaciones">localizacion</a></li>
                    <li><a href="#">paginas</a>
                        <ul>
                            <!--<li><a href="about.html">Nosotros</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>-->
                            <li><a href="/trabajos">trabajo</a></li>
                            <li><a href="/contactanos">Contactanos</a></li>
                            <!--<li><a href="404.html">Error 404</a></li>
                            <li><a href="index.html#!">Third Level Nav</a>
                                <ul>
                                    <li><a href="index.html#!">Third Level 1</a></li>
                                    <li><a href="index.html#!">Third Level 2</a></li>
                                    <li><a href="index.html#!">Third Level 3</a></li>
                                </ul>
                            </li>-->
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <svg height="20" width="2560" class="pattern">
        <defs>
            <pattern id="header-pattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
                <rect width="10" height="10"/>
                <rect x="10" y="10" width="10" height="10"/>
            </pattern>
            <mask id="header-mask" x="0" y="0" width="2560" height="20">
                <rect x="0" y="0" width="2560" height="20"/>
            </mask>
        </defs>
        <rect x="0" y="0" width="2560" height="20" id="header-image"/>
    </svg>
</header>


<!--<div class="content">-->
    <@content></@content>
<!--</div>-->

<!--Footer-->

<footer class="footer">
    <svg height="20" width="2560" class="pattern">
        <defs>
            <pattern id="footer-pattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
                <rect width="10" height="10"/>
                <rect x="10" y="10" width="10" height="10"/>
            </pattern>
            <mask id="footer-mask" x="0" y="0" width="2560" height="20">
                <rect x="0" y="0" width="2560" height="20"/>
            </mask>
        </defs>
        <rect x="0" y="0" width="2560" height="20" id="footer-image"/>
    </svg>
    <div class="widgets">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <div class="widget">
                        <h6>About us</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar ante eu lacinia
                            vulputate. Curabitur lacus purus, lacinia non tempor at, condimentum accumsan velit. Nam
                            quis elit a ipsum mattis mattis. In pharetra ultricies massa. Duis vel malesuada odio.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="widget">
                        <h6>Quick links</h6>
                        <ul class="quick-links">
                            <li class="active"><a href="/">Inicio</a></li>
                            <li><a href="/servicios">servicios</a></li>
                            <li><a href="/conductores">conductores</a></li>
                            <li><a href="/carros">carros</a></li>
                            <li><a href="/modelo">Modelos</a></li>
                            <li><a href="/ubicaciones">localizacion</a></li>
                            <li><a href="#">Paginas</a>
                            <li><a href="/trabajos">Trabajo</a></li>
                            <li><a href="/contactanos">Contactanos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="widget">
                        <h6>Contact</h6>
                        <ul class="contact">
                            <li class="hotline"><a href="tel:442-12-10">442-12-10</a></li>
                            <li class="phone"><a href="tel:212-647-0772">212-647-0772</a></li>
                            <li class="email"><a href="mailto:dalgom@club.com"</li>
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


<script src="/js/email-decode.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/picker.js"></script>
<script src="/js/picker.date.js"></script>
<script src="/js/picker.time.js"></script>
<script src="/js/uber-google-maps.min.js"></script>
<script src="/js/settings.js"></script>


<script src="http://js.api.here.com/v3/3.0/mapsjs-core.js"
        type="text/javascript" charset="utf-8"></script>
<script src="http://js.api.here.com/v3/3.0/mapsjs-service.js"
        type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="https://js.cit.api.here.com/v3/3.0/mapsjs-ui.js"></script>
<script type="text/javascript" src="https://js.cit.api.here.com/v3/3.0/mapsjs-mapevents.js"></script>

<script>

    /**
     * Adds a  draggable marker to the map..
     *
     * @param {H.Map} map                      A HERE Map instance within the
     *                                         application
     * @param {H.mapevents.Behavior} behavior  Behavior implements
     *                                         default interactions for pan/zoom
     */
    function addDraggableMarker(map, behavior, marker, marker2){

        //var marker = new H.map.Marker({lat:42.35805, lng:-71.0636});

        // Ensure that the marker can receive drag events
        marker.draggable = true;
        marker2.draggable = true;

        map.addObject(marker);
        map.addObject(marker2);

        // disable the default draggability of the underlying map
        // when starting to drag a marker object:
        map.addEventListener('dragstart', function(ev) {
            var target = ev.target;
            if (target instanceof H.map.Marker) {
                behavior.disable();
            }
        }, false);


        // re-enable the default draggability of the underlying map
        // when dragging has completed
        map.addEventListener('dragend', function(ev) {
            var target = ev.target;
            if (target instanceof mapsjs.map.Marker) {
                behavior.enable();
                console.log(marker.getPosition());
                console.log(marker2.getPosition());
                document.querySelector("#inicio").value = marker.getPosition().lat+","+marker.getPosition().lng;
                document.querySelector("#destino").value = marker2.getPosition().lat+","+marker.getPosition().lng;
            }
        }, false);

        // Listen to the drag event and move the position of the marker
        // as necessary
        map.addEventListener('drag', function(ev) {
            var target = ev.target,
                    pointer = ev.currentPointer;
            if (target instanceof mapsjs.map.Marker) {
                target.setPosition(map.screenToGeo(pointer.viewportX, pointer.viewportY));
            }
        }, false);
    }


    var platform = new H.service.Platform({
        'app_id': 'JLjFiSCSNZLtxd7ryK5v',
        'app_code': 'hgPQ3N5_naoRiNz9sUMg6A'
    });

    // Obtain the default map types from the platform object:
    var defaultLayers = platform.createDefaultLayers();

    // Instantiate (and display) a map object:
    var map = new H.Map(
            document.getElementById('map'),
            defaultLayers.normal.map,
            {
                zoom: 16,
                center: { lat: -12.0333758, lng: -77.0805004 }
            });


    // Create a marker icon from an image URL:
    var icon = new H.map.Icon('/images/map-marker.png');

    // Create a marker using the previously instantiated icon:
    // var marker = new H.map.Marker({ lat: -12.0333758, lng: -77.0805004 }, { icon: icon });

    // Add the marker to the map:
   // map.addObject(marker);
    //Step 3: make the map interactive
    // MapEvents enables the event system
    // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
    var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

    // Step 4: Create the default UI:
    var ui = H.ui.UI.createDefault(map, defaultLayers, 'es-ES');


    var marker = new H.map.Marker({ lat: -12.0333758, lng: -77.0805004 }, { icon: icon });
    var marker2 = new H.map.Marker({ lat: -12.0333700, lng: -77.0805000 }, { icon: icon });
    // Add the click event listener.
    addDraggableMarker(map, behavior, marker, marker2);





</script>
    <@js></@js>
</body>
</html>

</#macro>



<%@page import="modelo.Famoso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Registrar Inmueble</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width height=device-height initial-scale=1.0 maximum-scale=1.0 user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800%7CPoppins:300,400,700">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css" id="main-styles-link">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/5.4.55/css/materialdesignicons.min.css">

    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  <body>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-logo"><img src="images/logo-default-151x44.png" alt="" width="151" height="44" srcset="images/logo-default-151x44.png 2x"/>
      </div>
      <div class="preloader-body">
        <div id="loadingProgressG">
          <div class="loadingProgressG" id="loadingProgressG_1"></div>
        </div>
      </div>
    </div>
    <div class="page">
      <!-- Page Header-->
      <header class="section novi-background page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-lg-stick-up="true" data-lg-stick-up-offset="118px" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xl-stick-up="true" data-xl-stick-up-offset="118px" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-xxl-stick-up-offset="118px" data-xxl-stick-up="true">
            <div class="rd-navbar-aside-outer">
              <div class="rd-navbar-aside">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle="#rd-navbar-nav-wrap-1"><span></span></button>
                  <!-- RD Navbar Brand--><a class="rd-navbar-brand" href="index.jsp"><img src="https://static.vecteezy.com/system/resources/previews/007/815/748/non_2x/elegant-modern-and-minimalist-real-estate-logo-design-building-or-construction-logo-for-real-estate-industry-identity-vector.jpg" alt="" width="151" height="44" srcset="https://static.vecteezy.com/system/resources/previews/007/815/748/non_2x/elegant-modern-and-minimalist-real-estate-logo-design-building-or-construction-logo-for-real-estate-industry-identity-vector.jpg 2x"/></a>
                </div>
                <div class="rd-navbar-collapse">
                  <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle="#rd-navbar-collapse-content-1"><span></span></button>
                  <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content-1">
                    <article class="unit align-items-center">
                      <div class="unit-left"><span class="icon novi-icon icon-md icon-modern mdi mdi-phone"></span></div>
                      <div class="unit-body">
                        <ul class="list-0">
                          <li><a class="link-default" href="tel:#">1-800-1234-567</a></li>
                          <li><a class="link-default" href="tel:#">1-800-8763-765</a></li>
                        </ul>
                      </div>
                    </article>
                    <article class="unit align-items-center">
                      <div class="unit-left"><span class="icon novi-icon icon-md icon-modern mdi mdi-map-marker"></span></div>
                      <div class="unit-body"><a class="link-default" href="tel:#">Universidad de Antioquia <br>CA 94117-1080</a></div>
                    </article>
                      <%
                        HttpSession seassion = request.getSession(false);
                        Famoso famoso = (Famoso) session.getAttribute("famoso");
                        if (famoso != null) {
                    %>
                        <!-- Mostrar el nombre del famoso si la sesión está iniciada -->
                        
                        <a class="button button-gray-bordered button-winona" href="index.jsp">  <div class="unit-left"><span class="icon novi-icon icon-md icon-modern mdi mdi-tooltip-account"></span></div> <%= famoso.getNombres() %> <%= famoso.getApellidos() %></a>
                        
                    <%
                        } else {
                    %>
                        <!-- Mostrar el botón de inicio de sesión si la sesión no está iniciada -->
                        <a class="button button-gray-bordered button-winona" href="login.jsp">Iniciar sesión</a>
                    <%
                        }
                    %>    
                  </div>
                </div>
              </div>
            </div>
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <div class="rd-navbar-nav-wrap" id="rd-navbar-nav-wrap-1">
                  <!-- RD Navbar Nav-->
                  <ul class="rd-navbar-nav">
                    <li class="rd-nav-item"><a class="rd-nav-link" href="index.jsp">Home</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <!-- Breadcrumbs -->
<section class="section novi-background breadcrumbs-custom bg-image context-dark" style="background-image: url(https://static.vecteezy.com/system/resources/previews/001/931/395/non_2x/dark-blue-gradient-blur-backdrop-vector.jpg);">
        <div class="breadcrumbs-custom-inner">
          <div class="container breadcrumbs-custom-container">
            <div class="breadcrumbs-custom-main">
              <h6 class="breadcrumbs-custom-subtitle title-decorated">Quieres vender o alquilar tus propiedades fácilmente. ¡Obtén la mejor exposición y encuentra el comprador o inquilino ideal!</h6>
              <h2 class="text-uppercase breadcrumbs-custom-title">¡Registra tu Inmueble!</h2>
            </div>
            <ul class="breadcrumbs-custom-path">
              <li><a href="index.jsp">Home</a></li>
              <li class="active">Registrar inmueble</li>
            </ul>
          </div>
        </div>
      </section>
      
      <section class="section novi-background bg-gray-100">
        <div class="range justify-content-xl-between">
          <div class="cell-xl-6 align-self-center container">
            <div class="row">
              <div class="col-lg-9 cell-inner">
                <div class="section-lg">
                  <h3 class="text-uppercase wow-outer"><span class="wow slideInDown">informacion de la propiedad</span></h3>
                  <!-- RD Mailform-->
                            <form class="rd-form rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="ServletInmuebles">
                              <div class="row row-10">
                                <!-- Titulo del Inmueble -->
                                <div class="col-md-6 wow-outer">
                                  <div class="form-wrap wow fadeSlideInUp">
                                    <label class="form-label-outside" for="inmueble-titulo" >Título</label>
                                    <input class="form-input" id="inmueble-titulo" type="text" name="titulo" data-constraints="@Required">
                                  </div>
                                </div>
                                <!-- Descripción del Inmueble -->
                                <div class="col-md-6 wow-outer">
                                  <div class="form-wrap wow fadeSlideInUp">
                                    <label class="form-label-outside" for="inmueble-descripcion">Descripción</label>
                                    <input class="form-input" id="inmueble-descripcion" type="text" name="descripcion" data-constraints="@Required">
                                  </div>
                                </div>
                                <!-- Precio del Inmueble -->
                                <div class="col-md-6 wow-outer">
                                  <div class="form-wrap wow fadeSlideInUp">
                                    <label class="form-label-outside" for="inmueble-precio">Precio</label>
                                    <input class="form-input" id="inmueble-precio" type="number" step="0.01" name="precio" data-constraints="@Required">
                                  </div>
                                </div>
                                <!-- Ubicación del Inmueble -->
                                <div class="col-md-6 wow-outer">
                                  <div class="form-wrap wow fadeSlideInUp">
                                    <label class="form-label-outside" for="inmueble-ubicacion">Ubicación</label>
                                    <input class="form-input" id="inmueble-ubicacion" type="text" name="ubicacion" data-constraints="@Required">
                                  </div>
                                </div>
                                <!-- Link Foto del Inmueble -->
                                <div class="col-12 wow-outer">
                                  <div class="form-wrap wow fadeSlideInUp">
                                    <label class="form-label-outside" for="inmueble-foto">Link Foto</label>
                                    <textarea class="form-input" id="inmueble-foto" name="link_foto" data-constraints="@Required"></textarea>
                                  </div>
                                </div>
                              </div>
                              <div class="group group-middle">
                                <div class="wow-outer">
                                  <button class="button button-primary button-winona wow slideInRight" href="ServletInmuebles" type="submit" >Publicar inmueble</button>
                                </div>
                                <div class="wow-outer"></div>
                              </div>
                            </form>
                </div>
              </div>
            </div>
          </div>
          <div class="cell-xl-5 height-fill wow fadeIn">
            <div class="google-map-container" data-zoom="5" data-icon="images/gmap_marker.png" data-icon-active="images/gmap_marker.png" data-center="9870 St Vincent Place, Glasgow, DC 45 Fr 45." data-styles="[{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#e9e9e9&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;landscape&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f5f5f5&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:29},{&quot;weight&quot;:0.2}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:18}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:16}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f5f5f5&quot;},{&quot;lightness&quot;:21}]},{&quot;featureType&quot;:&quot;poi.park&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#dedede&quot;},{&quot;lightness&quot;:21}]},{&quot;elementType&quot;:&quot;labels.text.stroke&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:16}]},{&quot;elementType&quot;:&quot;labels.text.fill&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:36},{&quot;color&quot;:&quot;#333333&quot;},{&quot;lightness&quot;:40}]},{&quot;elementType&quot;:&quot;labels.icon&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f2f2f2&quot;},{&quot;lightness&quot;:19}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#fefefe&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#fefefe&quot;},{&quot;lightness&quot;:17},{&quot;weight&quot;:1.2}]}]">
              <div class="google-map"></div>
              <ul class="google-map-markers">
                <li data-location="9870 St Vincent Place, Glasgow, DC 45 Fr 45." data-description="9870 St Vincent Place, Glasgow"></li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      <!-- Page Footer-->
                <footer class="section novi-background footer-advanced bg-gray-700">
              <div class="footer-advanced-main">
                <div class="container">
                  <div class="row row-50">
                    <div class="col-lg-4">
                      <h5 class="font-weight-bold text-uppercase text-white">About Us</h5>
                      <p class="footer-advanced-text">inHouse is the largest full-service real estate and property management company. We offer expertise in the marketing and sale of a wide range of properties, including residential real estate, farms and lifestyle blocks, as well as commercial and industrial properties that we hope may interest you.</p>
                    </div>
                    <div class="col-sm-7 col-md-5 col-lg-4">
                      <h5 class="font-weight-bold text-uppercase text-white">Recent Blog Posts</h5>
                      <!-- Post Inline-->
                      <article class="post-inline">
                        <p class="post-inline-title"><a href="#">Real Estate Guide: 7 Important Tips for Buying a Home</a></p>
                        <ul class="post-inline-meta">
                          <li>by Mike Barnes</li>
                          <li><a href="#">2 days ago</a></li>
                        </ul>
                      </article>
                      <!-- Post Inline-->
                      <article class="post-inline">
                        <p class="post-inline-title"><a href="#">Single-Family Homes as a Housing Option for Young Families</a></p>
                        <ul class="post-inline-meta"> 
                          <li>by Mike Barnes</li>
                          <li><a href="#">2 days ago</a></li>
                        </ul>
                      </article>
                    </div>
                    <div class="col-sm-5 col-md-7 col-lg-4">
                      <h5 class="font-weight-bold text-uppercase text-white">Gallery</h5>
                      <div class="row row-x-10" data-lightgallery="group">
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-1.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-1-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-2.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-2-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-3.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-3-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-4.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-4-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-5.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-5-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-6.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-6-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"> </div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-7.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-7-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-8.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-8-85x85.jpg" alt="">
                            <div class="thumbnail-minimal-caption"></div></a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="footer-advanced-aside">
                <div class="container">
                  <div class="footer-advanced-layout">
                    <div>
                      <ul class="list-nav"> 
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about-us.jsp">About</a></li>
                        <li><a href="#">Properties</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="RegistrarInmueble.jsp">Contacts</a></li>
                      </ul>
                    </div>
                    <div>
                      <ul class="foter-social-links list-inline list-inline-md">
                        <li><a class="icon novi-icon icon-sm link-default mdi mdi-facebook" href="#"></a></li>
                        <li><a class="icon novi-icon icon-sm link-default mdi mdi-twitter" href="#"></a></li>
                        <li><a class="icon novi-icon icon-sm link-default mdi mdi-instagram" href="#"></a></li>
                        <li><a class="icon novi-icon icon-sm link-default mdi mdi-google" href="#"></a></li>
                        <li><a class="icon novi-icon icon-sm link-default mdi mdi-linkedin" href="#"></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="container">
                <hr>
              </div>
              <div class="footer-advanced-aside">
                <div class="container">
                  <div class="footer-advanced-layout"><a class="brand" href="index.jsp"><img src="images/logo-light-115x34.png" alt="" width="115" height="34" srcset="images/logo-light-115x34.png 2x"/></a>
                    <!-- Rights-->
                    <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span>. All Rights Reserved. Design by <a href="https://www.templatemonster.com">TemplateMonster</a></p>
                  </div>
                </div>
              </div>
            </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>
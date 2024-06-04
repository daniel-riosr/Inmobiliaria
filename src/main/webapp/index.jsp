<%-- 
    Document   : index
    Created on : 31/05/2024, 5:58:40 p. m.
    Author     : dcrio
--%>
<%@page import="modelo.Famoso"%>
<%@ page import="java.util.List" %>
<%@ page import="modelo.Inmueble" %>
<%@ page import="controlador.ServletInmuebles" %>
<%@page import="javax.servlet.http.HttpSession"%>


<% 
    List<Inmueble> inmuebles = (List<Inmueble>) request.getAttribute("inmuebles");
    System.out.println("DEBUG: Inmuebles size: " + (inmuebles != null ? inmuebles.size() : 0));
    if (inmuebles == null || inmuebles.isEmpty()) {
        System.out.println("No se encontraron inmuebles para mostrar.");
    } else {
        System.out.println("Número de inmuebles encontrados: " + inmuebles.size());
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
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
      <div class="preloader-logo"><img src="https://st2.depositphotos.com/3571453/6453/v/450/depositphotos_64530605-stock-illustration-house-club-real-estate-logo.jpg" alt="" width="151" height="44" srcset="https://st2.depositphotos.com/3571453/6453/v/450/depositphotos_64530605-stock-illustration-house-club-real-estate-logo.jpg"/>
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
                      <div class="unit-body"><a class="link-default" href="tel:#">Universidad de Antioquia <br> CA 94117-1080</a></div>
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
                    <li class="rd-nav-item active"><a class="rd-nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="register.jsp">Registrar Nuevo Famoso</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="RegistrarInmueble.jsp">Registrar Inmueble</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="inventario.jsp">Ver mis inmuebles</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="RegistrarInmueble.jsp">Subastas</a>
                    </li>
                   
                  </ul>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <section class="section swiper-container swiper-slider swiper-slider-minimal" data-loop="true" data-slide-effect="fade" data-autoplay="4759" data-simulate-touch="true">
        <div class="swiper-wrapper">
          <div class="swiper-slide swiper-slide_video" data-slide-bg="images1/inmobiliarias-en-medellin.jpg">
            <div class="container">
              <div class="jumbotron-classic-content">
                <div class="wow-outer">
                  <div class="title-docor-text font-weight-bold title-decorated text-uppercase wow slideInLeft text-white">Diversas opciones</div>
                </div>
                <h1 class="text-uppercase text-white font-weight-bold wow-outer"><span class="wow slideInDown" data-wow-delay=".2s">Propiedades</span></h1>
                <p class="text-white wow-outer"><span class="wow slideInDown" data-wow-delay=".35s">inHouse te ofrece propiedades excelentes en todo el mundo, para que puedas elegir facilmente la propiedad de tus sueños.</span></p>
                <div class="wow-outer button-outer"><a class="button button-md button-primary button-winona wow slideInDown" href="ServletInmuebles" data-wow-delay=".4s">ver propiedades</a></div>
              </div>
            </div>
          </div>
          <div class="swiper-slide" data-slide-bg="images1/slide_2.jpg">
            <div class="container">
              <div class="jumbotron-classic-content">
                <div class="wow-outer">
                  <div class="title-docor-text font-weight-bold title-decorated text-uppercase wow slideInLeft text-white">Facilidad</div>
                </div>
                <h1 class="text-uppercase text-white font-weight-bold wow-outer"><span class="wow slideInDown" data-wow-delay=".2s">Alquiler y venta</span></h1>
                <p class="text-white wow-outer"><span class="wow slideInDown" data-wow-delay=".35s">Con la ayuda de nuestros servicios y soluciones de administración de propiedades, puede alquilar o vender cualquier casa o apartamento.</span></p>
                <div class="wow-outer button-outer"><a class="button button-md button-primary button-winona wow slideInDown" href="ServletInmuebles" data-wow-delay=".4s">Ver propiedades</a></div>
              </div>
            </div>
          </div>
          <div class="swiper-slide" data-slide-bg="images1/slider_3.jpg">
            <div class="container">
              <div class="jumbotron-classic-content">
                <div class="wow-outer">
                  <div class="title-docor-text font-weight-bold title-decorated text-uppercase wow slideInLeft text-white">Creada para generar  </div>
                </div>
                <h1 class="text-uppercase text-white font-weight-bold wow-outer"><span class="wow slideInDown" data-wow-delay=".2s">Experiencias</span></h1>
                <p class="text-white wow-outer"><span class="wow slideInDown" data-wow-delay=".35s">Fundada en el curso de tecnicas, nuestra empresa es un equipo de reconocidos expertos en administración de propiedades y bienes raíces siempre listos para ayudarle.</span></p>
                <div class="wow-outer button-outer"><a class="button button-md button-primary button-winona wow slideInDown" href="ServletInmuebles" data-wow-delay=".4s">Ver propiedades</a></div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination-outer container">
          <div class="swiper-pagination swiper-pagination-modern swiper-pagination-marked" data-index-bullet="true"></div>
        </div>
      </section>
      <section class="section novi-background section-md text-center">
    <div class="container">
        <h3 class="text-uppercase font-weight-bold wow-outer"><span class="wow slideInDown">Propiedades disponibles</span></h3>
        <div class="row row-lg-50 row-35 offset-top-2">
            
            <% 
                if (inmuebles != null) {
                    for (Inmueble inmueble : inmuebles) {
            %>
            <div class="col-md-6 wow-outer">
                <article class="post-modern wow slideInLeft">
                    <a class="post-modern-media" href="#"><img src="<%= inmueble.getLink_foto() %>" alt="<%= inmueble.getTitulo() %>" width="571" height="353"/></a>
                    <h4 class="post-modern-title"><a class="post-modern-title" href="#"><%= inmueble.getTitulo() %></a></h4>
                    <ul class="post-modern-meta">
                        <li><a class="button-winona" href="#">$<%= String.format("%,.2f", inmueble.getPrecio()) %></a></li>

                        <li><%= inmueble.getUbicacion() %></li>
                    </ul>
                    <p><%= inmueble.getDescripcion() %></p>
                </article>
            </div>
            <% 
                    }
                }
            %>
        <div class="col-md-12 wow-outer">
    <a class="button button-primary button-winona button-md" href="ServletInmuebles">Ver propiedades</a>
</div>

</section>

      <section class="section novi-background section-lg bg-gray-100">
        <div class="container">
          <div class="row row-30">
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Box Minimal-->
              <article class="box-minimal">
                <div class="box-chloe__icon novi-icon linearicons-user wow fadeIn"></div>
                <div class="box-minimal-main wow-outer">
                  <h4 class="box-minimal-title wow slideInDown">Qualified Employees</h4>
                  <p class="wow fadeInUpSmall">Our team consists of more than 20 qualified and experienced real estate brokers and property managers ready to help you.</p>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Box Minimal-->
              <article class="box-minimal">
                <div class="box-chloe__icon novi-icon linearicons-bubble-text wow fadeIn" data-wow-delay=".1s"></div>
                <div class="box-minimal-main wow-outer">
                  <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".1s">Free Consultations</h4>
                  <p class="wow fadeInUpSmall" data-wow-delay=".1s">Our acquaintance with a client always begins with a free consultation to find out what kind of property they are looking for.</p>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Box Minimal-->
              <article class="box-minimal">
                <div class="box-chloe__icon novi-icon linearicons-star wow fadeIn" data-wow-delay=".2s"></div>
                <div class="box-minimal-main wow-outer">
                  <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".2s">100% Guaranteed</h4>
                  <p class="wow fadeInUpSmall" data-wow-delay=".2s">All the results that you get from our realtors are 100% guaranteed to offer you the best choice of properties throughout the USA.</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      <!-- Services-->
      <section class="section novi-background section-lg text-center">
        <div class="container">
          <h3 class="text-uppercase">Residential property categories</h3>
          <p><span class="text-width-1">At our agency, we work with various types of residential real estate property. You can find out more about our properties by browsing our website.</span></p>
          <div class="row row-35 row-xxl-70 offset-top-2">
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/service-thumbnail-1-270x300.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Single-Family Homes</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/service-thumbnail-2-270x300.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Townhouses</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/service-thumbnail-3-270x300.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Multi-Family Homes</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/service-thumbnail-4-270x300.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Condominiums</a></h4>
              </article>
            </div>
            <div class="col-md-12 wow-outer"><a class="button button-primary button-winona button-md" href="#">view all properties</a></div>
          </div>
        </div>
      </section>
      <section class="section novi-background section-lg text-center bg-gray-100">
        <div class="container">
          <h3 class="text-uppercase wow-outer"><span class="wow slideInUp">Our Team</span></h3>
          <div class="row row-lg-50 row-35 row-xxl-70 justify-content-center justify-content-lg-start">
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/team-1-270x273.jpg" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Nathalie Porter</a></h5>
                  <p class="profile-creative-position">Founder, Broker</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>Ms. Porter founded our company in 1989 with a vision to help guests and residents of the USA to easily find and buy or rent real estate in all 50 states.</p>
                </div>
              </article>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft" data-wow-delay=".2s">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/team-2-270x273.jpg" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">John Thompson</a></h5>
                  <p class="profile-creative-position">Sales Associate</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>John has been in sales and marketing for the past 15 years. He has excellent knowledge about the local market both residential and commercial.</p>
                </div>
              </article>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/team-3-270x273.jpg" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Brian Payne</a></h5>
                  <p class="profile-creative-position">Realtor</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>Brian is not only a Licensed Realtor but also holds the Title Producers and Mortgage Licenses, which makes him a very knowledgeable real estate expert.</p>
                </div>
              </article>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft" data-wow-delay=".2s">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/team-4-270x273.jpg" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Marie Fernandez</a></h5>
                  <p class="profile-creative-position">Broker</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>Marie’s goal is to provide clients with the highest level of marketing expertise and customer service to help them reach their uppermost real estate goals.</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      <!-- Best offer-->
      <section class="section novi-background section-1 bg-primary-darker text-center" style="background-image: url(images/bg-1-1920-455.jpg);">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-10 col-lg-7 col-xl-6">
              <h3 class="wow-outer"><span class="wow slideInDown text-uppercase">Best offers</span></h3>
              <p class="heading-subtitle">of September</p>
              <p class="wow-outer offset-top-4"><span class="wow slideInDown" data-wow-delay=".05s">With a variety of accountants available at our company, you can always choose one that fits your corporate requirements.</span></p>
              <div class="wow-outer button-outer"><a class="button button-primary-white button-winona wow slideInDown" href="#" data-wow-delay=".1s">Read more</a></div>
            </div>
          </div>
        </div>
      </section>
      <section class="section novi-background section-lg text-center">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInDown text-uppercase">Testimonials</span></h3>
          <!-- Owl Carousel-->
          <div class="owl-carousel wow fadeIn" data-items="1" data-md-items="2" data-lg-items="3" data-dots="true" data-nav="false" data-loop="true" data-autoplay="true" data-autoplay-speed="731" data-autoplay-timeout="4268" data-margin="30" data-stage-padding="0" data-mouse-drag="false">
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-6-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Albert Webb</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I have just bought an apartment in LA thanks to you and your brokers. Everything went smooth and easy, the price was quite affordable, and I’m sure I will use your services again in the future.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-1-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Kelly McMillan</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I have recently sold my rental property in Nelson via inHouse. Everything about the sale was made seamless by your team. You gave me great advice about what was necessary to expedite the sale.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-2-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Harold Barnett</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I really appreciate your time and expertise in helping me find and buy my current home in Seattle, WA. Hope we can do business again in the future and I will recommend you to family and friends.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-3-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Bill Warner</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I have just sold a property with inHouse and I can’t thank them enough. Their team has great communication skills and they have regularly communicated with me throughout the whole process.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-4-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Ann Lee</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Your skilled team helped me make the dream of selling my old property a reality. The sale went smoothly, and I just closed on an ideal new place I am excited to call home. Thank you for your great services!</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-5-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Peter Clarkson</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I have to say that inHouse has the best brokers we've ever worked with. Their professionalism, personality, attention to detail, responsiveness and ability to close the deal are outstanding!</p>
              </div>
            </blockquote>
          </div>
        </div>
      </section><a class="banner" href="https://www.templatemonster.com/intense-multipurpose-html-template.html" target="_blank"><img src="images/intense_big_02.jpg" alt=""/></a>
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
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-1.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-1-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-2.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-2-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-3.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-3-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-4.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-4-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-5.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-5-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-6.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-6-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"> </div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-7.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-7-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-8.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-8-85x85.jpg" alt=""/>
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
          <hr/>
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
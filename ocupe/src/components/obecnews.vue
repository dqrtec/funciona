<template>
  <section>
  <div class="carousel obec-fade-carousel slide" data-ride="carousel" data-interval="4000" id="news-carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#news-carousel" data-slide-to="0" class="active"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item slides active">
        <!-- Overlay -->
        <div class="obec-overlay"></div>
        <img src="../assets/slide1.jpg" class="obec-slide">
        <div class="obec-caption">
            <h1>Bem-Vindo</h1>
            <h3>Ao Observatório de Cultura Pernambuco</h3>
        </div>
      </div>
    </div>
  </div>
  </section>
</template>

<script>
export default {
  name: 'obecnews'
}
</script>


<style>
/*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.obec-fade-carousel {
  position: relative;
  height: 68vh;
}
.obec-fade-carousel .carousel-inner .item {
  height: 68vh;
}
.obec-fade-carousel .carousel-indicators > li {
  margin: 0 2px;
  background-color: #f39c12;
  border-color: #f39c12;
  opacity: .7;
}
.obec-fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}


/********************************/
/*          Caption Headers        */
/********************************/
.obec-caption {
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 3;
  color: #fff;
  text-align: center;
  text-transform: uppercase;
  text-shadow: 1px 1px 0 rgba(0,0,0,.75);
  -webkit-transform: translate3d(-50%,-50%,0);
  -moz-transform: translate3d(-50%,-50%,0);
  -ms-transform: translate3d(-50%,-50%,0);
  -o-transform: translate3d(-50%,-50%,0);
  transform: translate3d(-50%,-50%,0);
}
.obec-caption h1 {
  font-size: 6em;
  font-weight: bold;
  margin: 0;
  padding: 0;
}

.obec-fade-carousel .carousel-inner .item .obec-caption {
  opacity: 0;
  -webkit-transition: 2s all ease-in-out .1s;
  -moz-transition: 2s all ease-in-out .1s;
  -ms-transition: 2s all ease-in-out .1s;
  -o-transition: 2s all ease-in-out .1s;
  transition: 2s all ease-in-out .1s;
}
.obec-fade-carousel .carousel-inner .item.active .obec-caption {
  opacity: 1;
  -webkit-transition: 2s all ease-in-out .1s;
  -moz-transition: 2s all ease-in-out .1s;
  -ms-transition: 2s all ease-in-out .1s;
  -o-transition: 2s all ease-in-out .1s;
  transition: 2s all ease-in-out .1s;
}

/********************************/
/*            Overlay           */
/********************************/
.obec-overlay {
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: 2;
  background-color: #080d15;
  opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.obec-btn-pattern,
.btn.obec-btn-pattern:hover,
.btn.obec-btn-pattern:focus {
  color: #f5f5f5;
  background-color: #1abc9c;
  border-color: #1abc9c;
  outline: none;
  margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.obec-fade-carousel .slides .obec-slide {
  height: 68vh;
  background-size: cover;
  background: no-repeat center center;
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
  .obec-caption { width: 980px; }
}
@media screen and (max-width: 640px){
  .obec-caption h1 { font-size: 4em; }
}

</style>

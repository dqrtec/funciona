<template>

<section>
  <div id="obec-team">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center">Equipe</h1>
          <span class="obec-header-underline"></span>
          <h3 class="text-center">Conheça a equipe de desenvolvimento da plataforma Observatório da
            Economia Criativa de Pernambuco.</h3>
        </div>
      </div>
      <div class="row">
        <div class="customNavigation"><a class="btn prev" ><i class="fa fa-caret-left" aria-hidden="true"></i></a>
          <a class="btn next" ><i class="fa fa-caret-right"></i></a></div>
        <obec-carousel id="owl-demo" class="owl-carousel" [options]="{
            autoplay: true,
            autoplayHoverPause: true,
            responsiveClass: true,
            loop: true,
            responsive: {
              '0': {
                  items:1
              },
              '600': {
                  items:3
              },
              '1000': {
                  items:4
              }
            }}"
                       [prev]="prev"
                       [next]="next"
                       [customNav]="true"
        >

          <div class="item">
            <div class="">
              <div class="card">
                <div class="obec-front">
                  <div class="card-img">
                    <img src="assets/img/galindo.jpg" alt="" class="card-img">
                  </div>
                  <div class="card-content">
                    <h4 class="card-title text-center">Marcos Galindo</h4>
                    <hr>
                    <h5 class="card-description text-center">Coordenador Geral</h5>
                  </div>
                </div>
                <div class="obec-back">
                  <div class="obec-text text-justify">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium
                      amet animi beatae corporis debitis deleniti distinctio dolore ea est eum
                      expedita facere harum hic incidunt iste itaque laborum magnam nam nemo
                      neque nostrum, pariatur perspiciatis provident quaerat quam quas qui
                      quod soluta sunt suscipit, tempora totam unde ut veniam voluptatem!</p>
                  </div>
                  <div class="obec-back-btn">
                    <a href="" class="btn obec-btn-pattern">Enviar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="item">
            <div class="">
              <div class="card">
                <div class="obec-front">
                  <div class="card-img">
                    <img src="assets/img/celly.jpg" alt="" class="card-img">
                  </div>
                  <div class="card-content">
                    <h4 class="card-title text-center">Celly Lima</h4>
                    <hr>
                    <h5 class="card-description text-center">Pesquisadora</h5>
                  </div>
                </div>
                <div class="obec-back">
                  <div class="obec-text text-justify">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium
                      amet animi beatae corporis debitis deleniti distinctio dolore ea est eum
                      expedita facere harum hic incidunt iste itaque laborum magnam nam nemo
                      neque nostrum, pariatur perspiciatis provident quaerat quam quas qui
                      quod soluta sunt suscipit, tempora totam unde ut veniam voluptatem!</p>
                  </div>
                  <div class="obec-back-btn">
                    <a href="" class="btn obec-btn-pattern">Enviar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="item">
            <div class="">
              <div class="card">
                <div class="obec-front">
                  <div class="card-img">
                    <img src="assets/img/kleber.jpg" alt="" class="card-img">
                  </div>
                  <div class="card-content">
                    <h4 class="card-title text-center">Kleber Santos</h4>
                    <hr>
                    <h5 class="card-description text-center">Pesquisador</h5>
                  </div>
                </div>
                <div class="obec-back">
                  <div class="obec-text text-justify">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium
                      amet animi beatae corporis debitis deleniti distinctio dolore ea est eum
                      expedita facere harum hic incidunt iste itaque laborum magnam nam nemo
                      neque nostrum, pariatur perspiciatis provident quaerat quam quas qui
                      quod soluta sunt suscipit, tempora totam unde ut veniam voluptatem!</p>
                  </div>
                  <div class="obec-back-btn">
                    <a href="" class="btn obec-btn-pattern">Enviar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="item">
            <div class="">
              <div class="card">
                <div class="obec-front">
                  <div class="card-img">
                    <img src="assets/img/IMG_2586E.jpg" alt="" class="card-img">
                  </div>
                  <div class="card-content">
                    <h4 class="card-title text-center">Hélio Pajeú</h4>
                    <hr>
                    <h5 class="card-description text-center">Pesquisador</h5>
                  </div>
                </div>
                <div class="obec-back">
                  <div class="obec-text text-justify">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium
                      amet animi beatae corporis debitis deleniti distinctio dolore ea est eum
                      expedita facere harum hic incidunt iste itaque laborum magnam nam nemo
                      neque nostrum, pariatur perspiciatis provident quaerat quam quas qui
                      quod soluta sunt suscipit, tempora totam unde ut veniam voluptatem!</p>
                  </div>
                  <div class="obec-back-btn">
                    <a href="" class="btn obec-btn-pattern">Enviar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="item">
            <div class="">
              <div class="card">
                <div class="obec-front">
                  <div class="card-img">
                    <img src="assets/img/IMG_2604E.jpg" alt="" class="card-img">
                  </div>
                  <div class="card-content">
                    <h4 class="card-title text-center">Isis Cunha</h4>
                    <hr>
                    <h5 class="card-description text-center">Pesquisadora</h5>
                  </div>
                </div>
                <div class="obec-back">
                  <div class="obec-text text-justify">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium
                      amet animi beatae corporis debitis deleniti distinctio dolore ea est eum
                      expedita facere harum hic incidunt iste itaque laborum magnam nam nemo
                      neque nostrum, pariatur perspiciatis provident quaerat quam quas qui
                      quod soluta sunt suscipit, tempora totam unde ut veniam voluptatem!</p>
                  </div>
                  <div class="obec-back-btn">
                    <a href="" class="btn obec-btn-pattern">Enviar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="item">
            <div class="">
              <div class="card">
                <div class="obec-front">
                  <div class="card-img">
                    <img src="assets/img/IMG_2613E.jpg" alt="" class="card-img">
                  </div>
                  <div class="card-content">
                    <h4 class="card-title text-center">Bruno Leite</h4>
                    <hr>
                    <h5 class="card-description text-center">Designer</h5>
                  </div>
                </div>
                <div class="obec-back">
                  <div class="obec-text text-justify">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium
                      amet animi beatae corporis debitis deleniti distinctio dolore ea est eum
                      expedita facere harum hic incidunt iste itaque laborum magnam nam nemo
                      neque nostrum, pariatur perspiciatis provident quaerat quam quas qui
                      quod soluta sunt suscipit, tempora totam unde ut veniam voluptatem!</p>
                  </div>
                  <div class="obec-back-btn">
                    <a href="" class="btn obec-btn-pattern">Enviar</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </obec-carousel>
      </div>
    </div>
  </div>
</section>


</template>

<script>
export default {
  name: 'obecteam'
}
</script>


<style>
#obec-team {
  padding-top: 53px;
  padding-bottom: 50px;
  background-color: #FFFFFF;
}
#obec-team h1 {
  color: #262626;
  font-weight: 700;

}
#obec-team h3 {
  color: #262626;
}

#obec-team .owl-carousel  .item  .card .card-content hr {
  margin: 20px auto;
  width: 13%;
  border-top: 1px solid #D5D5D5;
}
#obec-team .owl-carousel .item .card {
  -moz-border-radius-bottomleft: 10px;
  -moz-border-radius-bottomright: 10px;
}

#obec-team .owl-carousel .item .card .obec-back {
  -moz-border-radius-bottomleft: 10px;
  -moz-border-radius-bottomright: 10px;
}

#obec-team .customNavigation a {
  color: #262626;
}

#obec-team .card {
  background-color: #f5f5f5;
}

#obec-team .card-title, #obec-team .card-description {
  color: #262626;
}

@media screen and (max-width: 617px) {
  #obec-team .owl-carousel  .item  .card .card-content hr {
    width: 7%;
  }
}
.card {
  max-width: 100%;
  position: relative;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  /*width: 290px;*/
  min-height: 0px;
  background: #FFFFFF;
  padding: 0em;
  border: none;
  border-radius: 0.28571429rem;
  box-shadow: 0px 1px 3px 0px #D4D4D5, 0px 0px 0px 1px #D4D4D5;
  -webkit-transition: box-shadow 0.1s ease, -webkit-transform 0.1s ease;
  transition: box-shadow 0.1s ease, -webkit-transform 0.1s ease;
  transition: box-shadow 0.1s ease, transform 0.1s ease;
  transition: box-shadow 0.1s ease, transform 0.1s ease, -webkit-transform 0.1s ease;
  margin: 10px;
}

.card:last-child {
  margin-bottom: 0em;
}

.card:after {
  display: block;
  content: ' ';
  height: 0px;
  clear: both;
  overflow: hidden;
  visibility: hidden;
}

.card a {
  cursor: pointer;
}

.card-img {
  position: relative;
  display: block;
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 auto;
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
  padding: 0em;
  background: rgba(0, 0, 0, 0.05);
}

.card-img img {
  display: block;
  width: 100%;
  height: auto;
  border-radius: inherit;
  border: none;
}

.card-content {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
  -ms-flex-positive: 1;
  flex-grow: 1;
  border: none;
  border-top: 1px solid rgba(34, 36, 38, 0.1);
  background: none;
  margin: 0em;
  padding: 1em 1em;
  box-shadow: none;
  font-size: 1em;
  border-radius: 0em;
}

.card .card-content:after {
  display: block;
  content: ' ';
  height: 0px;
  clear: both;
  overflow: hidden;
  visibility: hidden;
}

.card-title {
  display: block;
  font-family: 'Lato', 'Helvetica Neue', Arial, Helvetica, sans-serif;
  color: rgba(0, 0, 0, 0.85);
  font-weight: bold;
  font-size: 1.28571429em;
  margin-top: -0.21425em;
  line-height: 1.28571429em;
}

.card-subtitle {
  margin-top: -0.375em;
  margin-bottom: 0;
  font-size: 1em;
  color: rgba(0, 0, 0, 0.4);
  margin-right: 0em;
}

.card-description {
  clear: both;
  color: rgba(0, 0, 0, 0.68);
  margin: 0.5em 0em 0.5em;
  /*border-top: 1px solid rgba(0, 0, 0, 0.05) !important;*/
  padding-top: 0.5em;
}

.card-extra {
  max-width: 100%;
  min-height: 0em !important;
  -webkit-box-flex: 0;
  -webkit-flex-grow: 0;
  -ms-flex-positive: 0;
  flex-grow: 0;
  position: static;
  background: none;
  width: auto;
  margin: 0em 0em;
  top: 0em;
  left: 0em;
  color: rgba(0, 0, 0, 0.4);
  box-shadow: none;
  -webkit-transition: color 0.1s ease;
  transition: color 0.1s ease;
  padding-top: 1em;
  /*border-top: 1px solid rgba(0, 0, 0, 0.05);*/
}

.obec-text-muted {
  color: #636c72 !important;
}

.obec-blue-btn {
  background-color: #1DC7EA;
  color: #FFFFFF;
  padding-right: 3em;
  padding-left: 3em;
}

.obec-blue-btn:hover {
  background-color: #42d0ed;
  color: #FFFFFF;
}

.obec-flip .card .obec-back {
  display: none;
}

/* Flip Card aplicável somente para desktop */
@media screen and (min-width: 1200px) {
  .obec-flip .card .obec-back {
    display: inline-block;
  }

  .obec-flip {
    position: relative;
    -webkit-perspective: 800px;
    -moz-perspective: 800px;
    -o-perspective: 800px;
    perspective: 800px;
    display: table;
    width: 100%;
    height: 100%;
  }

  .obec-flip .card {
    -webkit-transition: -webkit-transform .75s, -webkit-box-shadow 1s;
    -moz-transition: -moz-transform .75s, -moz-box-shadow 1s;
    -o-transition: -o-transform .75s, -o-box-shadow 1s;
    transition: transform .75s, box-shadow 1s;
    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    -o-transform-style: preserve-3d;
    transform-style: preserve-3d;
  }

  .obec-left .card {
    transform-origin: right center;
    -webkit-transform-origin: right center;
    -moz-transform-origin: right center;
    -o-transform-origin: right center;
  }

  .obec-flip:hover .card {
    box-shadow: 0 4px 18px rgba(0, 0, 0, .16);
    -webkit-box-shadow: 0 4px 18px rgba(0, 0, 0, .16);
  }

  .obec-left:hover .card {
    -webkit-transform: translateX(-100%) rotateY(-180deg);
    -moz-transform: translateX(-100%) rotateY(-180deg);
    -o-transform: translateX(-100%) rotateY(-180deg);
    transform: translateX(-100%) rotateY(-180deg);
  }

  .obec-back {
    position: absolute;
    background: transparent; /*#fff */
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
    top: 0;
    padding: 4px 16px;
    background-color: #FFFFFF;
    height: 100%;
    color: #222222;
  }

  .obec-back, .obec-front {
    -o-backface-visibility: hidden;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
    width: 100%;
  }

  .obec-front img {
    max-width: 100%;
  }

  .obec-back .obec-text {
    overflow: auto;
    height: 80%;
    padding: 8px;
    margin-top: 8px;
  }

  .obec-back .obec-back-btn {
    border-top: 1px solid #cccccc;
    margin: auto;
    margin-top: 16px;
    width: 80%;
  }

  .obec-back .obec-back-btn .obec-btn-pattern {
    margin: 0;
    margin-top: 10px;
  }
}

@media screen and (min-width: 0\0
) {
  .obec-left:hover .card .obec-back {
    transform: rotateY(-180deg);
    backface-visibility: visible
  }
}

.customNavigation {
  text-align: right;
  margin-top: 10px;
  margin-bottom: 3px;
  padding-bottom: 3px;
  border-bottom: 2px solid #333;
}

.customNavigation a {
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

</style>

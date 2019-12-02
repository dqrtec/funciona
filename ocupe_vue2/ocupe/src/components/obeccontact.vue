<template>
<section>
  <div id="obec-contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center">Contato</h1>
          <span class="obec-header-underline"></span>
          <h3 class="text-center">Entre em contato conosco através de algum dos seguintes meios</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-7">
          <div class="obec-contact-info">
            <div>
              <div class="obec-circle">
                <i class="fa fa-envelope"></i>
              </div>
              <p>sec.liber@gmail.com</p>
            </div>
            <div>
              <div class="obec-circle">
                <i class="fa fa-phone"></i>
              </div>
              <p>+55 (81) 2126.7726</p>
            </div>
            <div>
              <div class="obec-circle">
                <i class="fa fa-map-marker"></i>
              </div>
              <p>Av. da Arquitetura, S/N <br>
                Centro de Artes e Comunicação, Liber, 2o Andar, <br>
                Cidade Universitária,
                Recife-PE, <br> 50740-550, Brasil.
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <div class="obec-contact-info">
            <h3>Deixe a sua mensagem</h3>
            <form class="form-horizontal">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Nome">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Assunto">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Email">
              </div>
              <div class="form-group">
                <textarea  class="form-control" placeholder="Mensagem"></textarea>
              </div>
              <div class="form-group">
                <button class="btn obec-btn-pattern">
                  Enviar
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</template>

<script>
export default {
  name: 'obeccontact'
}
</script>


<style>
#obec-contact {
  background-color: #5a98bd;
  color: #FFFFFF;
  padding-top: 40px;
  padding-bottom: 20px;
}
#obec-contact hgroup > h1 {
  font-weight: 700;
}
#obec-contact .row:nth-child(2) {
  margin-top: 20px;
}
#obec-contact .obec-contact-info > div > .obec-circle > i {
  color: #5a98bd;
  font-size: 30px;
  padding-top: 14px;
  padding-left: 15px;
}
#obec-contact .obec-contact-info > div > .obec-circle > .fa-phone {
  padding-left: 18px;
}
#obec-contact .obec-contact-info > div > .obec-circle > .fa-map-marker {
  padding-left: 20px;
}
#obec-contact .obec-contact-info {
  padding-top: 20px;
}
#obec-contact .obec-contact-info div .obec-circle {
  margin-top: 35px;
  background: #FFFFFF;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  display: inline-block;
}
#obec-contact .obec-contact-info div p{
  padding-left: 15px;
}
#obec-contact .obec-contact-info div > p{
  display: inline-block;
  vertical-align: middle;
  margin: 0;
}
#obec-contact .obec-btn-pattern {
  background-color: #FFFFFF;
  border-color: #FFFFFF;
  color: grey;
  font-weight: 700;
  box-shadow: 3px 3px 3px 0px #262626;
}
#obec-contact .obec-btn-pattern:hover, #obec-contact .obec-btn-pattern:focus {
  background-color: #FFFFFF;
  box-shadow: 0px 0px 3px 3px #262626;
}

</style>
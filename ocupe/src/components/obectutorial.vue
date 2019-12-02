<template>
<section>
  <div id="obec-step">
    <div class="jumbotron">
      <h1 class="text-center">Como Funciona?</h1>
      <p class="text-center">Para participar é simples, basta seguir os seguintes passos</p>
      <div class="container">
        <div class="row">
          <div class="col-md-4 obec-step-icon">
            <div class="obec-circle">
              <img src="../assets/icon1.png" alt="" class="img-responsive">
            </div>
            <div class="obec-step-info text-center">
              <h3>Cadastre</h3>
              <p>sua conta no Observatório <br> de Cultura Pernambuco</p>
            </div>
          </div>
          <div class="col-md-4 obec-step-icon">
            <div class="obec-circle">
              <img src="../assets/icon2.png" alt="" class="img-responsive">
            </div>
            <div class="obec-step-info text-center">
              <h3>Insira</h3>
              <p>as informações nos campos <br> de cadastro do radar</p>
            </div>
          </div>
          <div class="col-md-4 obec-step-icon">
              <div class="obec-circle">
                <img src="../assets/icon3.png" alt="" class="img-responsive">
              </div>
              <div class="obec-step-info text-center">
                <h3>Pronto!</h3>
                <p>Agora você será localizado pelo <br> radar da economia criativa</p>
              </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>

</template>

<script>
export default {
  name: 'obectutorial'
}
</script>


<style>
#obec-step .jumbotron {
  border-radius: 0px !important;
  box-shadow: 1px 1px 4px rgba(0, 0, 0, 0.4);
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
  /*background-image: url(https://static.pexels.com/photos/24324/pexels-photo.jpg);*/
  position: relative;
  height: 100%;
  margin-bottom: 0;
  color: #262626;
}

#obec-step .jumbotron .btn {
  border-radius: 0px !important;
  box-shadow: 1px 1px 4px rgba(0, 0, 0, 0.4);
  padding: 10px 40px;
}

#obec-step .obec-circle {
  margin-top: 25px;
  margin-left: auto;
  margin-right: auto;
  width: 130px;
  height: 130px;
  border-radius: 50%;
}

#obec-step > div > div > div > div.obec-step-icon > div.obec-circle {
  background-color: #e22529;
}

#obec-step > div > div > div > div:nth-child(2) > div.obec-circle {
  background-color: #fff200;
}

#obec-step > div > div > div > div:nth-child(3) > div.obec-circle {
  background-color: #6bb345;
}

#obec-step .obec-step-info {
  margin-top: 30px;
}

#obec-step .obec-step-info p {
  font-size: 15px;
}

</style>

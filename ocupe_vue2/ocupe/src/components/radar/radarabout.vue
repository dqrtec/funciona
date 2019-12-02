<template>


<div style="height: 100%;" id="main-content">
  <br><br><br><br>
  <div id="obec-about-page" class="text-center">
    <br><br><br><br>
    <h3>Radar</h3>
    <p>O Radar é um mapeamento dinâmico para a visualização, localização e observação da Economia Criativa, Colaborativa e seus protagonistas. Esse mapeamento é construído e atualizado pelos protagonistas da cultura sejam eles sujeitos, coletivos ou equipamentos culturais. Seja visto e localizado por todo mundo! Cadastre-se e se localize no Radar!</p>
  </div>

  <div style="height:100%"  class="obec-caller text-center">
    <h2>Encontre os protagonistas do
      <span class="text-black">Observatório de Cultura</span>
      <span class="text-red">Pernambuco</span>
    </h2>
    <h3>
      <a href="tudo.html">
      <button class="btn btn-warning"> Ir Ao Mapa <i class="glyphicon glyphicon-map-marker"></i></button>
      </a>
    </h3>
  </div>
</div>

</template>

<script>
export default {
  name: 'radarabout'
}
</script>


<style>

:host {
  width: 100%;
}

#main-content {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
}

#obec-about-page {
  height: 100%;
  padding: 50px 150px;
  background-color: #404142;
  color: #FFFFFF;
  flex: 1;
}

#obec-about-page h3{
  font-size: 2em;
  font-weight: 700;
}

.obec-caller {
  height: 100%;
  padding: 50px 150px;
  background-color: #651fff;
  color: #FFFFFF;
  flex: 1;
}

.obec-caller h2 {
  font-weight: 700;
  font-size: 2em;
  line-height: 1.4em;
}

.obec-caller a {
  color: #FFFFFF;
}

.obec-caller a:hover {
  color: #b3e5fc;
}

.text-black {
  color: black;
}

.text-red {
  color: #e53935;
}

</style>

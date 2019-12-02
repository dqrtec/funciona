<template>

<main id="obec-radar-about">
  <br><br><br><br>
  
  <div id="main-content">
    
    <div id="obec-about-page" class="text-center">
      <h3>Eventos</h3>
      <p>Acompanhe e colabore na construção de uma agenda de eventos importantes para a observação
        da Cultura e da Economia Criativa. Insira um evento!</p>
    </div>

    <div class="obec-caller text-center">
      <h2>Encontre os eventos de
        <span class="text-red">Pernambuco</span>
      </h2>
      <h3>
        <a>
          <i class="fa fa-angle-down"></i>
        </a>
      </h3>
    </div>
  </div>
</main>


</template>

<script>
export default {
  name: 'eventoabout'
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

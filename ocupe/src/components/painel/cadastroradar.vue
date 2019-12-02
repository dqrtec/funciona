<template>
<div class="obec-config-panel daniel">
  <div class="page-header">
    <h2>Cadastrar Radar</h2>
  </div>

  <form class="form-horizontal">
    <div class="obec-field-name">
      <span class="label label-warning">Informações Gerais</span>
    </div>

    <div class="col-sm-12">
      <label for="comment">Titulo:</label><br>
      <input class="input" >
    </div>
    <div class="col-sm-12">
      <label for="comment">Descrição:</label><br>
      <textarea class="" cols="4" ></textarea>
    </div>
    <div class="col-sm-12">
      <label for="comment">Informacao Adicional:</label><br>
      <textarea class="" cols="40" ></textarea>
    </div>
    <div class="col-sm-12">
      <label for="comment">Tags:</label><br>
      <input class="input" >
    </div><br><br>

<router-link :to="{ name: 'painel'}">
    <button class="btn btn-primary">
      Cadastrar
    </button>
</router-link>
  </form>

</div>
</template>

<script>
export default {
    name:"cadastroradar"
}
</script>

<style>

.daniel{
  padding-left: 30%;
}

textarea {
  width: 300px;
  height: 150px;
}

.obec-page-body {
  margin-top: 20px;
}

.input-group {
  width: 100%;
}

.obec-config-panel .obec-config-content .obec-field-name {
  margin-bottom: 10px;
}

.obec-config-panel .obec-config-content .obec-form-field {
  margin-bottom: 30px;
}

.obec-config-panel .obec-config-content .form-group textarea {
  resize: none;
}

.obec-config-panel .obec-config-content .obec-page-body .form-horizontal .form-group .obec-blue-btn {
  margin-top: 20px;
  margin-bottom: 20px;
}

.obec-config-panel .obec-blue-btn {
  background-color: #4db6ac;
}
.ola {
  background-color: black;
  height: 100px;
}

@media screen and (max-width: 767px) {
  .obec-config-panel .form-horizontal div:first-child .form-group {
    margin-bottom: 13px;
  }

  .obec-config-panel > div > div > div > div.obec-page-body > form > div:nth-child(2) > div:nth-child(2) > div:nth-child(4) > select {
    margin-top: 15px;
  }

  .obec-config-panel .obec-config-content .obec-field-name {
    margin-bottom: 10px;
  }

  .obec-config-panel > div > div > div > div.obec-page-body > form > div:nth-child(3) > .obec-upload-box {
    width: 170px;
    height: 200px;
  }
}

/*-------------*/
.obec-upload-box{
  width: 190px;
  height: 200px;
  border: 2px dashed #dcdee3;
  margin: 3px;
  position: relative;
  display: inline-block;
}
.obec-upload-img {
  width: calc(100% + 4px);
  height: calc(100% + 4px);
  top:-2px;
  left: -2px;
  position: absolute;
  z-index: 2;
}
.obec-upload-content{
  width: 100%;
  height: 100%;
  position: absolute;
  top:0;
  left: 0;
  text-indent: -10000;
  opacity: 0;
  z-index: 3;
}
.obec-upload-close {
  position: absolute;
  right: 5px;
  top: 1px;
  padding: 3px 5px;
  color: white;
  transition: all .2s;
  opacity: 0;
  transform: scale(0);
  cursor: pointer;
  z-index: 4;
  font-size: 10px;
}
.obec-upload-box:hover .obec-upload-close{
  opacity: 1;
  transform: scale(1);
}
.obec-upload-box:before{
  content: "+";
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 40px;
  opacity: 0.3;
  color: #000;
  font-weight: bold;
  z-index: 1;
  transform: translate(-50%, -50%);
}

agm-map {
  height: 300px;
}
</style>
<template>


<div class="container">
  <br><br><br><hr>
  <h2>Seus Radares</h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Titulo</th>
        <th>Descrição</th>
        <th>Categoria</th>
        <th>Tags</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="radar in radares" :key="radar">
        <td>{{radar["rad_titulo"]}}</td>
        <td>{{radar["rad_descricao"]}}</td>
        <td>{{radar["rad_categoria"]}}</td>
        <td>{{radar["rad_tags"]}}</td>
      </tr>
    </tbody>
  </table>

  <div class="text-center">
    <router-link :to="{ name: 'cadastroradar'}">
    <button class="btn btn-primary obec-blue-btn">Adicionar</button>
    </router-link>
  </div>
</div>



</template>



<script>
import axios from 'axios';

export default {
    name:"painelradar",
    data() {
      return {
          radares: [],
      };
    },
    mounted: function () {
        axios.get("http://localhost:3000/api/radar").then( (r)=>{
            this.radares = r.data.response
        })
    }
}
</script>






<style>
.obec-page-body {
  margin-top: 20px;
  min-height: 40vh;
}

.obec-config-panel {
  margin-left: 50px;
  margin-bottom: 50px;
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
  .obec-config-panel .form-horizontal div:first-child .form-group .form-control {
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

.table-margin {
  margin: 20px;
}

</style>
<template>


  <div class="container">
    <br><br><br><hr>
    <h2>Seu Radar</h2>

    <iframe src="localizacao.html" height="500" width="500"></iframe>

    <form class="form">
      <span>Titulo:</span><input v-model="r_titulo" class="form-control" >
      <span>Descrição:</span><input v-model="r_desc" class="form-control" >
      <span>Tags:</span><input v-model="r_tags" class="form-control" >
      
      <span>Categoria</span>
      <select class="form-control" v-model="r_cat">
        <option value="">Escolha sua categoria</option>
        <option value="Individuo">Indivíduo</option>
        <option value="Coletivo">Coletivo</option>
        <option value="EquipamentosCulturais">Equipamentos Culturais</option>
      </select>

      <select class="form-control"  style="flex: 1;">
        <option value="">Escolha segmentos</option>
        <option value="1">Arquitetura</option>
        <option>Artes Cênicas</option>
        <option>Artes Visuais</option>
        <option>Artesanato</option>
        <option>Audiovisual</option>
        <option>Cartonaria</option>
        <option>Cinema</option>
        <option>Entidades Culturais</option>
        <option>Jogos Digitais</option>
        <option>Literatura</option>
        <option>Moda</option>
        <option>Música</option>
        <option>Gastronomia</option>
      </select>

      <select>
        <option>Escolha sua cidades</option>
      </select>



    </form>


    <div class="text-center">
      <button @click.prevent.stop="atualizar()" class="btn btn-primary obec-blue-btn">Salvar</button>
    </div>

    

  </div>



</template>



<script>
import axios from 'axios';

export default {
    name:"painelradar",
    data() {
      return {
        r_role:0,
        r_info:"",
        r_cat:"Individuo",
        r_desc:"",
        r_tags:"",
        r_titulo:"",
      };
    },
    methods:{
      atualizar(){

        let headers = {headers: {'Accept': 'application/json','Content-Type': 'application/json'}}
        if(this.r_titulo!="" && this.r_desc!=""){
          axios.post('http://localhost:3000/api/radar/atualizar/', 
          {rad_titulo:this.r_titulo, rad_role:this.r_role, rad_tags:this.r_tags, rad_informacao_adicional:this.r_info, rad_descricao:this.r_desc}, headers)
            .then( (r)=>{
              console.log(r.data.status)
              if(r.data.status == "200"){
                alert("Atualizado com sucesso")
              }
            })
        }
      }
    },
    mounted: function () {
        let id_radar = this.$route.query.radar
        axios.get("http://localhost:3000/api/radar/"+id_radar).then( (r)=>{
            let radar = r.data.response[0]
            this.r_role = radar["rad_role"]
            console.log(this.r_role)
            this.r_info = radar["rad_informacao_adicional"]
            this.r_cat = radar["rad_categoria"]
            this.r_desc = radar["rad_descricao"]
            this.r_tags = radar["rad_tags"]
            this.r_titulo = radar["rad_titulo"]
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
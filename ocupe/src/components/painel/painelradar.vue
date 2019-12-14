<template>

<div class="container">
  <br><br><br><hr>
  <div class="row">
    <div class="col-sm-4">
      <h3>Seu Radar</h3>
      <form class="form">
          <span>Titulo:</span><input v-model="r_titulo" class="form-control" >
          <span>Descrição:</span><input v-model="r_desc" class="form-control" >
          <span>Tags:<span style="color:red; ">*Separar por espaços</span></span><input v-model="r_tags" class="form-control" >
          
          <span>Categoria:</span>
          <select class="form-control" v-model="r_cat">
            <option value="">Escolha sua categoria</option>
            <option value="individuo">Indivíduo</option>
            <option value="coletivo">Coletivo</option>
            <option value="equipamento">Equipamentos Culturais</option>
          </select>

          <span>Segmentos:</span>
          <select v-model="r_seg" class="form-control"  style="flex: 1;">
            <option value="">Escolha segmento</option>
            <option value="arquitetura">Arquitetura</option>
            <option value="cenicas">Artes Cênicas</option>
            <option value="visual">Artes Visuais</option>
            <option value="artesanato">Artesanato</option>
            <option value="audiovisual">Audiovisual</option>
            <option value="cartonaria">Cartonaria</option>
            <option value="cinema">Cinema</option>
            <option value="culturais">Entidades Culturais</option>
            <option value="jogos">Jogos Digitais</option>
            <option value="literatura">Literatura</option>
            <option value="moda">Moda</option>
            <option value="musica">Música</option>
            <option value="gastronomia">Gastronomia</option>
          </select>



        </form>
    </div>
    <div class="col-sm-4">
      <h3>Localização</h3>
      <p class="alert alert-info">Utilize o mapa ao lado para verificar a latitude e longitude </p>
      <span>Latitude:</span>
      <input v-model="e_lat" placeholder="Latitude" class="form-control">
      <span>Longitude:</span>
      <input v-model="e_long" placeholder="Longitude" class="form-control">
      <span>Cidade:</span>
      <select class="form-control">
        <option>Escolha sua cidade</option>
      </select>

    </div>
    <div class="col-sm-4">
      <p class="alert alert-info"> Clique no mapa para ver a sua localização</p>
      <iframe src="localizacao.html" height="500" width="500"></iframe>
    </div>
  </div>

  <div class="row">
    <div class="text-center">
      <button @click.prevent.stop="atualizar()" class="btn btn-primary obec-blue-btn">Salvar</button>
    </div>
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
        r_cat:"",
        r_desc:"",
        r_tags:"",
        r_titulo:"",
        r_seg:"",

        e_cidade:"",
        e_lat:"",
        e_long:"",
        e_id:"",
      };
    },
    methods:{
      atualizar(){

        let headers = {headers: {'Accept': 'application/json','Content-Type': 'application/json'}}

        if(this.e_id == ""){
          axios.post('http://localhost:3000/api/endereco', 
          {end_latitude: this.e_lat, end_longitude: this.e_long}, headers)
            .then( (end)=>{
              console.log(end.data.response["insertId"])
              this.e_id = end.data.response["insertId"]
              if(this.r_titulo!="" && this.r_desc!=""){
                console.log(this.e_id)
                axios.post('http://localhost:3000/api/radar/atualizar/', 
                {rad_titulo:this.r_titulo, rad_role:this.r_role, rad_tags:this.r_tags, rad_informacao_adicional:this.r_info, rad_descricao:this.r_desc, rad_end_id:this.e_id}, headers)
                  .then( (r)=>{
                    if(r.data.status == "200"){
                      axios.post('http://localhost:3000/api/endereco/atualizar/'+this.e_id, {end_latitude: this.e_lat, end_longitude: this.e_long}, headers).then( ()=>{})
                      alert("Atualizado com sucesso")
                    }
                  })
              }
            })
        }else{

        if(this.r_titulo!="" && this.r_desc!=""){
          console.log(this.e_id)
          axios.post('http://localhost:3000/api/radar/atualizar/', 
          {rad_titulo:this.r_titulo, rad_role:this.r_role, rad_tags:this.r_tags, rad_informacao_adicional:this.r_info, rad_descricao:this.r_desc, rad_end_id:this.e_id}, headers)
            .then( (r)=>{
              if(r.data.status == "200"){
                axios.post('http://localhost:3000/api/endereco/atualizar/'+this.e_id, {end_latitude: this.e_lat, end_longitude: this.e_long}, headers).then( ()=>{})
                alert("Atualizado com sucesso")
              }
            })
        }
        }
      }
    },
    mounted: function () {
        let id_radar = this.$route.query.radar
        axios.get("http://localhost:3000/api/radar/"+id_radar).then( (r)=>{
            let radar = r.data.response[0]
            this.r_role = radar["rad_role"]
            this.r_info = radar["rad_informacao_adicional"]
            this.r_cat = radar["rad_categoria"]
            this.r_desc = radar["rad_descricao"]
            this.r_tags = radar["rad_tags"]
            this.r_titulo = radar["rad_titulo"]
            this.r_seg = radar["rad_seg"]
            
            axios.get("http://localhost:3000/api/endereco/"+radar["rad_end_id"]).then( (e)=>{
              let end = e.data.response[0]
              if(end != undefined){
                this.e_lat = end["end_latitude"]
                this.e_long = end["end_longitude"]
                this.e_id = end["end_id"]
              }
            })
        })
    }
}
</script>






<style>

/* .obec-page-body {
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
} */

</style>
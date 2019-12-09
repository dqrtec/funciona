<template>
<main class="obec-page">
  <section>
    <div id="obec-login-register">
      <br><br><br><br><br>
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
            <div class="panel panel-default">
              <div class="panel-heading">
                <router-link :to="{ name: 'login'}">
                <a class="btn btn-default navbar-btn pull-left">
                  <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                </router-link>
                <h3 class="text-center">Cadastre Sua Conta {{senha2}}</h3>
              </div>
              <div class="panel-body">

                <form class="form-horizontal">

                  <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="email" v-model="nome" class="form-control" name="user" placeholder="Nome Autor">
                  </div>

                  <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">@</span>
                    <input type="email" v-model="email" class="form-control" name="email" placeholder="Email">
                  </div>

                  <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" v-model="senha" class="form-control" name="senha" placeholder="Senha">
                  </div>

                  <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" v-model="senha2" class="form-control" name="senha2" placeholder="Confirmar Senha">
                  </div>

                  <div class="form-group">
                    <div class="col-xs-offset-2">
                      <!-- <router-link :to="{ name: 'login'}"> -->
                        <button @click.prevent.stop="salvar()" class="btn btn-default obec-btn-pattern">
                         <i v-if="enviando" class='fa fa-spinner fa-spin '></i>Cadastrar
                       </button>
                      <!-- </router-link> -->
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>

</template>


<script>
import axios from 'axios';

export default {
    name: "cadastrar",
    data() {
      return {
        nome: 'a',
        email: 'dqrtec@hotmail.com',
        senha: 'a',
        senha2: 'a',
        enviando: false,
      };
    },
    methods:{
      salvar(){

        let headers = {headers: {'Accept': 'application/json','Content-Type': 'application/json'}}

        this.enviando = true
        if(this.nome!="" && this.email!="" && this.senha!="" && this.senha2 == this.senha ){
          axios.post('http://localhost:3000/api/user', {rad_email:this.email, rad_senha:this.senha, rad_autor: this.nome}, headers)
            .then(function(){
              this.enviando = false
            })
        }
      }
    }
}

</script>




<style>
:host {
  width: 100%;
}

.form-group {
  margin-left: 5px;
  margin-right: 5px;
}

#obec-login-register {
  padding-top: 12px;
  padding-bottom: 10px;
  background-color: #bbdefb;
  min-height: 100%;
  height: 100%;
}

#obec-login-register .alert-danger {
  background: #FFF;
  border: 1px solid #FF8282;
  color: #FF8282;
  font-size: 12px;
  margin: 0 8px 10px 8px;
  display: none;
  font-weight: 700;
}

#obec-login-register .panel-default {
  background-color: #82b1ff;
}

#obec-login-register .panel-heading {
  background-color: white;
  font-weight: 700;
}

#obec-login-register .panel-heading a {
  padding: 5px 15px;
  margin-top: 15px;
}

#obec-login-register p a {
  text-decoration: none;
  color: #01579b;
  font-weight: 500;
}

#obec-login-register p a:hover {
  color: #FFFFFF;
  cursor: pointer;
}

#obec-login-register .form-group .obec-btn-pattern {
  width: 80%;
  color: #f5f5f5;
  background-color: #1abc9c;
  border-color: #1abc9c;
  outline: none;
  margin: 10px auto;
}

#obec-login-register .form-group .obec-btn-pattern:hover, #obec-login-register .form-group .obec-btn-pattern:focus {
  background-color: #5CC09C;
}

.obec-loading-info {
  margin-top: 40px;
  font-family: font-pattern;
  font-size: 18px;
}

.obec-loader {
  border: 6px solid #f3f3f3; /* Light grey */
  border-top: 6px solid #3498db; /* Blue */
  border-radius: 50%;
  width: 110px;
  height: 110px;
  margin: auto;
  animation: spin 2s linear infinite;
}

@keyframes spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}

@media screen and (max-width: 1200px) {

}

</style>
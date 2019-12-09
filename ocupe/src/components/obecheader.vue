<template>
<nav class="navbar navbar-default navbar-fixed-top obec-navbar">
  <div class="container">

    <div class="navbar-header obec-navbar">
      <button type="button" class="navbar-toggle collapsed obec-iconbar" data-toggle="collapse"
              data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <router-link :to="{ name: 'obecheader'}">
        <a>
        <img alt="Brand" src="../assets/observatorio.png" class="img-responsive" height="144" width="200">
        </a>
      </router-link>
      
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-left obec-navbar-option">
        <li ><router-link :to="{ name: 'obecheader'}"><a >Home<span class="sr-only">(current)</span></a></router-link></li>
        <li ><router-link :to="{ name: 'radarabout'}"><a >Radar</a></router-link></li>
        <li ><router-link :to="{ name: 'revista'}"><a >Revista</a></router-link></li>
        <li ><router-link :to="{ name: 'pecriativo'}"><a >PE Criativo</a></router-link></li>
        <li ><router-link :to="{ name: 'seminarios'}"><a >Seminários</a></router-link></li>
        <li ><router-link :to="{ name: 'eventoabout'}"><a >Eventos</a></router-link></li>
      </ul>

      <a class="btn btn-default navbar-btn navbar-right obec-btn-login"><i
    class="fa fa-sign-in fa-fw"></i><router-link :to="{ name: 'login'}">Entrar</router-link></a>
    </div>

  

  </div>
</nav>
</template>

<script>
export default {
  name: 'obecheader'
}
</script>


<style>
.navbar-default .obec-navbar-option li a {
  height: 90px;
  padding-top: 37px;
  color: #58595b!important;
}

.navbar-default .obec-navbar-option li a:hover {
  color: #414042!important;
}

.navbar-default .obec-navbar-option > .active {
  border-bottom: 6px solid #f15c4d;
}
.navbar-default .obec-navbar-option > .active > a {
  color: #414042!important;
}

.navbar-default .obec-navbar-option > li:hover {
  background-color: #e6e7e8;
  border-bottom: 6px solid #f15c4d;
}

.obec-btn-login {
  margin-top: 30px;
}

.navbar-default .obec-navbar {
  height: 90px;
}

.navbar-nav > li > a, .navbar-brand {
  padding-bottom:0 !important;
}

@media screen and (max-width: 1200px) {
  .navbar-header {
    float: none;
  }
  .navbar-toggle {
    display: block;
  }
  .navbar-collapse {
    border-top: 1px solid transparent;
    box-shadow: inset 0 1px 0 rgba(255,255,255,0.1);
  }
  .navbar-collapse.collapse {
    display: none!important;
  }
  .navbar-nav {
    float: none!important;
    margin: 7.5px -15px;
  }
  .navbar-nav>li {
    float: none;
  }
  .navbar-default .obec-navbar .obec-iconbar {
    margin-top: 28px;
  }
  .collapse.in{
    display:block !important;
  }
  .navbar-default .obec-navbar-option li a {
    height: 45px;
    padding-top: 13px;
  }
  .navbar-collapse.collapsing {
    margin-left: -15px;
    margin-right: -15px;
    padding-left: 15px;
    padding-right: 15px;
  }
  .navbar-default .obec-navbar-option > li:hover {
    background-color: inherit;
    border-bottom: none;
  }
  .navbar-default .obec-navbar-option > .active {
    border-bottom: none;
  }
}

#menu-toggle {
  text-decoration: none;
  float: left;
  color: #000000;
  padding-right: 15px;
}

</style>

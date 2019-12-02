<template>
  <div class="container obec-header">
    <nav class="navbar navbar-fixed-top navbar-default  obec-navbar">
      <div class="container">

        <div class="navbar-header obec-navbar">
          <router-link :to="{ name: 'obecheader'}">
            <a>
            <img alt="Brand" src="../assets/observatorio.png" class="img-responsive" height="144" width="200">
            </a>
          </router-link>
        </div>

      <ul class="nav navbar-nav navbar-left obec-navbar-option">
        <li ><a ><router-link :to="{ name: 'obecheader'}">Home</router-link></a></li>
        <li ><a ><router-link :to="{ name: 'radarabout'}">Radar</router-link></a></li>
        <li ><a ><router-link :to="{ name: 'revista'}">Revista</router-link></a></li>
        <li ><a ><router-link :to="{ name: 'pecriativo'}">PE Criativo</router-link></a></li>
        <li ><a ><router-link :to="{ name: 'seminarios'}">Seminários</router-link></a></li>
        <li ><a ><router-link :to="{ name: 'eventoabout'}">Eventos</router-link></a></li>
      </ul>

      <a class="btn btn-default navbar-btn navbar-right obec-btn-login"><i
        class="fa fa-sign-in fa-fw"></i><router-link :to="{ name: 'login'}">Entrar</router-link></a>

      </div>
    </nav>
    
  </div>
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

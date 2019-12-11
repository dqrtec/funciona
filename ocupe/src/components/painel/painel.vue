<template>

<div>
    <main>
      <br><br><br><br><br><br>
      <ul class="nav navbar-nav">
        <li >
          <a>
            <button class="btn">
              <i class="glyphicon glyphicon-map-marker"></i>
              <p>Radar</p>
            </button>
          </a>
        </li>
        <li >
          <a >
            <button class="btn disabled">
            <i class="glyphicon glyphicon-calendar"></i>
            <p>Evento</p>
            </button>
          </a>
        </li>
        <li >
          <a>
            <button class="btn">
              <i class="glyphicon glyphicon-user"></i>
              <p>Perfil</p>
            </button>
          </a>
        </li>
      </ul>

      <painelradar></painelradar>

    </main>
</div>

</template>




<script>
import painelradar from './painelradar'

export default {
    name:"painel",
    components: {
      painelradar
  }
}
</script>





<style>
:host {
  width: 100%;
}

.obec-config-sidebar {
  width: 260px;
  display: block;
  color: #fff;
  font-weight: 200;
  background-size: cover;
  background-position: center center;
  background-color: #00A4E4;
}

.obec-config-sidebar .nav {
  margin-top: 30px;
}

.obec-config-sidebar .nav li > a {
  color: #FFFFFF;
  margin: 5px 15px;
  opacity: .86;
  border-radius: 4px;
}

.obec-config-sidebar .nav li:hover > a {
  background: rgba(255, 255, 255, 0.13);
  opacity: 1;
}
.obec-config-sidebar .nav li.active > a {
  background: rgba(255, 255, 255, 0.13);
  opacity: 1;
}
.nav > li > a:hover, .nav > li > a:focus {
  background-color: transparent;
}

.obec-config-sidebar .nav i {
  font-size: 28px;
  float: left;
  margin-right: 15px;
  line-height: 30px;
  width: 30px;
  text-align: center;
}
.obec-config-sidebar .nav p {
  margin: 0;
  line-height: 30px;
  font-size: 12px;
  font-weight: 600;
  text-transform: uppercase;
}

.example-sidenav-fab-container {
  width: 100%;
  height: 100%;
}

.menu-fab {
  position: fixed;
  right: 20px;
  bottom: 30px;
}

</style>
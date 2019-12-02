<template>
  <div id="app">
    <obecheader></obecheader>
    <router-view/> 
  </div>
</template>




<script>
import obecheader from './components/obecheader'

export default {
  name: 'app',
  components: {
    obecheader
  }
}
</script>
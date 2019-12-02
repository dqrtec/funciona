<template>
    <div class="container">
        <carousel>

            <img src="../assets/Logo_BR_b@3x.png"  height="175">

            <img src="../assets/Logo_Liber_b@3x.png"  height="175">

            <img src="../assets/Logo_UFPE_b@3x.png"  height="175">

            <img src="../assets/Logo_Fundarpe_b@3x.png"  height="175">

            <img src="../assets/Logo_Secult_b@3x.png"  height="175">

        </carousel>
    </div>
</template>

<script>
import carousel from 'vue-owl-carousel'

  export default {
    name: "obecapoio", 
    components: { carousel },
  };
</script>

<style>
.owl-carousel .owl-item img{
    padding-top: 12px;
    width: 175px;
    height: 60px;
}
</style>

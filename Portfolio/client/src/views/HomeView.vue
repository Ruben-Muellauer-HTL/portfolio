<script setup>
import TimeLineVue from '../components/TimeLineVue.vue';
</script>

<template>
  <div>
    
    <div class="q-px-lg q-py-md bg">
      <TimeLineVue></TimeLineVue>
    </div>
  </div>
</template>

<style>
@media screen and (min-width: 1500px) {
  .bg {
    background-image: url('../assets/BG.png');
    background-size: 100% auto;
  }
}
</style>

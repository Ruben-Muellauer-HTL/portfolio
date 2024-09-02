<script setup>
// import { ref } from 'vue';

// const leftDrawerOpen = ref(false);
// const rightDrawerOpen = ref(false);

// const toggleLeftDrawer = () => (leftDrawerOpen.value = !leftDrawerOpen.value);
// const toggleRightDrawer = () => (rightDrawerOpen.value = !rightDrawerOpen.value);
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <q-toolbar height-hint="98" class="nav bg-positive row justify-center text-white shadow-2">
      <q-tabs>
        <q-route-tab to="/" label="Über mich" />
        <q-route-tab to="/projects" label="Projekte" />
      </q-tabs>
    </q-toolbar>
    <div>
      <q-img style="margin-top: 5vh" src="./assets/Banner.png"></q-img>
    </div>
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<style>
.nav {
  overflow: hidden;
  position: fixed;
  top: 0;
  z-index: 1;
}
@font-face {
  font-family: 'Montserrat';
  src: url('/fonts/Montserrat/Montserrat-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'GreatVibes';
  src: url('/fonts/GreatVibes/GreatVibes-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'Catana';
  src: url('/fonts/Catana/CantataOne-Regular.ttf') format('truetype');
}

* {
  font-family: 'Montserrat';
}
</style>

<template>
  <nav-bar />
  <router-view />
</template>

<script>
import navBar from './components/NavigationBar.vue';

export default {
  components: {
    navBar
  }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap');

body {
  margin: 0;
}
#app {
  width: 100vw;
  min-height: 100vh;
  max-width: 100%;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
  /* background-color: black; */
}
</style>

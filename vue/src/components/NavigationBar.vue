<template>
    <div class="navigation-bar">
      <nav>
        <ul class="nav-list">
          <li @click="navigateTo('protocols-view')">Protocols</li>
          <li @click="navigateTo('formulary-view')">Drug Formulary</li>
          <li @click="navigateTo('procedures-view')">Procedures</li>
          <li @click="navigateTo('tools-view')">Tools</li>
          <!-- <li @click="navigateTo('logout')">Contact</li> -->
        </ul>
      </nav>
    </div>
</template>

<script>
export default {
    name: "nav-bar",
    methods: {
        navigateTo(view) {
            this.$router.push({ name: view });
        }
    },
}
</script>

<style scoped>
.navigation-bar {
  background-color: #2a2a2a;
  padding: 1rem 0;
}
.nav-list li {
  display: inline;
  font-size: 1.5rem;
  font-weight: bolder;
  color: white;
  cursor: pointer;
  transition: background-color 0.3s, color 0.3s;
  position: relative;
  padding: 2rem;
}
.nav-list li:hover {
  color: black;
  background-color: white;
}
</style>
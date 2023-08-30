<template>
    <div class="navigation-bar">
      <nav>
        <ul class="nav-list">
          <li @click="navigateTo('parents')">Protocols</li>
          <li @click="navigateTo('item-store')">Drug Formulary</li>
          <li @click="navigateTo('closet')">Procedures</li>
          <li @click="navigateTo('login')">Tools</li>
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
  background-color: gray;
  padding: 1rem 0;
  border-radius: 0.5rem;
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
<template>
  <div class="container">
      <button @click="navigateTo('adult-cardiac')">Adult Cardiac</button>
      <button @click="navigateTo('adult-medical')">Adult Medical</button>
      <button @click="navigateTo('adult-obstetrical')">Adult Obstetrical</button>
      <button @click="navigateTo('airway-respiratory')">Airway Respiratory</button>
      <button @click="navigateTo('triage-destination')">EMS Traige and Destination</button>
      <button @click="navigateTo('peds-cardiac')">Pediatric Cardiac</button>
      <button @click="navigateTo('peds-medical')">Pediatric Medical</button>
      <button @click="navigateTo('special-circ')">Special Circumstances</button>
      <button @click="navigateTo('special-ops')">Special Operations</button>
      <button @click="navigateTo('toxic-environ')">Toxic and Environmental</button>
      <button @click="navigateTo('trauma-burn')">Trauma and Burn</button>
      <button @click="navigateTo('universal')">Universal</button>
  </div>
</template>

<script>
export default {
    name: "protocol-categories",
    methods: {
        navigateTo(view) {
            this.$router.push({ name: view });
        }
    },
}
</script>

<style scoped>
.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.categories {
    list-style-type: none;
}
button {
    padding: 1.8rem;
    font-size: 1.3rem;
    background-color: black;
    color: white;
    border: 2px solid white;
    transition-duration: 0.1s all;
    cursor: pointer;
}
button:hover {
  background-color: #2a2a2a;
}
button:active {
    transform: scale(0.98);
}
</style>
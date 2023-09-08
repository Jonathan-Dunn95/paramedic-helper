<template>
  <div class="container">
      <button>Adult Cardiac</button>
      <button>Adult Medical</button>
      <button>Adult Obstetrical</button>
      <button>Adult Respiratory</button>
      <button>EMS Traige and Destination</button>
      <button>Pediatric Cardiac</button>
      <button>Pediatric Medical</button>
      <button>Special Circumstances</button>
      <button>Special Operations</button>
      <button>Toxic and Environmental</button>
      <button>Trauma and Burn</button>
      <button>Universal</button>
  </div>
</template>

<script>
export default {
    name: "protocol-categories",
}
</script>

<style scoped>
.container {
    display: flex;
    justify-content: center;
}
.categories {
    list-style-type: none;
}
button {
    background-color: white;
    border: 2px solid white;
    padding: 2rem;
    font-size: 1.2rem;
    font-weight: bold;
}
</style>
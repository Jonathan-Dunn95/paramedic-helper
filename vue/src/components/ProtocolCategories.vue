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
    flex-direction: column;
    justify-content: center;
}
.categories {
    list-style-type: none;
}
button {
    padding: 1.8rem;
    font-size: 1.3rem;
    font-weight: bold;
    background-color: black;
    color: white;
    border: 2px solid white;
    transition-duration: 0.1s;
}
button:hover {
    background-color: white;
    color:black;
}
</style>
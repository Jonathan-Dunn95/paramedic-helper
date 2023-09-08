<template>
  <div class="container">
    <button>Childbirth Labor</button>
    <button>Newly Born</button>
    <button>Obstetrical Emergency</button>
  </div>
</template>

<script>
export default {
  name: "adult-obstetrical-view"
}
</script>

<style scoped>
.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
}
button {
    padding: 1.5rem;
    font-size: 1.2rem;
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
    background-color: #575757;
}

</style>
<template>
    <div class="container">
        <button>Blast Injury</button>
        <button>Chemical and Electrical Burn</button>
        <button>Crush Syndrome</button>
        <button>Extremity Trauma</button>
        <button>Head Trauma</button>
        <button>Multiple Trauma</button>
        <button>Radiation Incident</button>
        <button>Selective Spinal Immobilization</button>
        <button>Thermal Burn</button>
        <button>Traumatic Arrest</button>
    </div>
</template>

<script>
export default {

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
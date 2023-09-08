<template>
    <div class="container">
        <button>Novant WFBMC EMS ED Triage KMC FCEMS</button>
        <button>LifeBrite of Stokes ED Triage</button>
        <button>Stroke EMS and Triage Destination</button>
        <button>Novant WFBMC EMS ED Triage CMC DMC</button>
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
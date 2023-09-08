<template>
    <div class="container">
        <button>Bites and Envenomations</button>
        <button>Carbon Monoxide Cyanide</button>
        <button>Drowning Submersion Injury</button>
        <button>Hyperthermia</button>
        <button>Hypothermia</button>
        <button>Marine Envenomations</button>
        <button>Overdose Toxic Ingestion</button>
        <button>WMD Nerve Agent</button>
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
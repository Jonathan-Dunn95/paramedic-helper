<template>
    <div class="container">
        <button>Allergic Reaction</button>
        <button>Diabetic Adult</button>
        <button>Dialysis Renal Failure</button>
        <button>Hypertension</button>
        <button>Hypotension Shock</button>
        <button>Suspected Stroke Activase t-PA Transfer</button>
    </div>
</template>

<script>
export default {
    name: "adult-medical-view",
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
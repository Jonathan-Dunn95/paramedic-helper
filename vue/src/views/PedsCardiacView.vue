<template>
    <div class="container">
        <button>Pediatric Asystole PEA</button>
        <button>Pediatric Bradycardia Poor Perfusion</button>
        <button>Pediatric CHF Pulmonary Edema</button>
        <button>Pediatric Pulseless Arrest</button>
        <button>Pediatric Tachycardia Narrow Complex</button>
        <button>Pediatric Tachycardia Wide Complex</button>
        <button>Pediatric VF Pulseless VT</button>
        <button>Pediatric Post Resuscitation</button>
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
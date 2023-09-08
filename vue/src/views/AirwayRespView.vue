<template>
  <div class="container">
    <button>Adult Airway</button>
    <button>Adult Failed Airway</button>
    <button>Airway Drug Assisted Intubation</button>
    <button>COPD Asthma</button>
    <button>Pediatric Airway</button>
    <button>Pediatric Failed Airway</button>
    <button>Pediatric Respiratory Distress</button>
    <button>Post Intubation BIAD Management</button>
    <button>Ventilator Emergencies</button>
    <button>Tracheostomy Tube Emergencies</button>
    <button>Mechanical Ventilation Adult</button>
  </div>
</template>
  
<script>
export default {
  name: "airway-resp"
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
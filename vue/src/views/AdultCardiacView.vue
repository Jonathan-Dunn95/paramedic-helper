<template>
  <div class="container">
    <button><a href="https://mykidswellnessapp-media.s3.amazonaws.com/Protocol+PDFs/Adult+Cardiac+2022/Asystole+Pulseless+Electrical+Activity.pdf" target="_blank">Asystole Pulseless Electrical Activity</a></button>
    <button>Bradycardiac Pulse Present</button>
    <button>Cardaic Arrest</button>
    <button>Chest Pain and STEMI</button>
    <button>CHF Pulmonary Edema</button>
    <button>Adult Tachycardia Narrow</button>
    <button>Adult Tachycardia Monomorphic Wide</button>
    <button>Adult Tachycardia Polymorphic Wide</button>
    <button>VF Pulseless VT</button>
    <button>Post Resuscitation</button>
    <button>TEAM Focused CPR</button>
    <button>Termination of CPR</button>
    <button>Targeted Temperature Management</button>
    <button>LVAD Emergency</button>
    <button>Total Mechanic Circulation</button>
    <button>Wearable Cardioverter Defibrillator Vest</button>
  </div>
</template>

<script>
export default {
    name: "adult-cardiac-view",
};
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
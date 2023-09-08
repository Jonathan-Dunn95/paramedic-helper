<template>
    <div class="container">
        <button>Universal Patient Care</button>
        <button>Triage</button>
        <button>ABD Pain Vomiting and Diarrhea</button>
        <button>Altered Mental Status</button>
        <button>Back Pain</button>
        <button>IV or IO Access</button>
        <button>Dental Problems</button>
        <button>Emergencies Involving Indwelling Central Lines</button>
        <button>Epistaxis</button>
        <button>Fever</button>
        <button>Pain Control</button>
        <button>Police Custody</button>
        <button>Seizure</button>
        <button>Suspected Stroke</button>
        <button>Suspected Sepsis</button>
        <button>Syncope</button>
        <button>Behavioral Health Crisis</button>
        <button>Behavioral Agitation Sedation Guide</button>
        <button>Hyperactive Delirium with Severe Agitation</button>
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
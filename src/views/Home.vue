<template>
  <div class="container-fluid p-0 bg-light">
    <section
      id="hero"
      class="p-4 p-md-5 border-bottom border-5 d-flex justify-content-center"
    >
      <hero class="section-content" />
    </section>
    <section
      id="about"
      class="bg-danger p-4 p-md-5 border-bottom border-5 d-flex justify-content-center"
    >
      <about class="section-content" />
    </section>
    <section
      id="work"
      class="p-4 p-md-5 border-bottom border-5 d-flex justify-content-center"
    >
      <work class="section-content" />
    </section>
    <section
      id="skills"
      class="bg-dark p-4 p-md-5 border-bottom border-5 d-flex justify-content-center"
    >
      <skills class="section-content" />
    </section>
  </div>
</template>

<script>
  import Hero from '../components/Hero'
  import About from '../components/About'
  import Work from '../components/Work'
  import Skills from '../components/Skills'

  export default {
    name: 'Home',

    components: {
      Hero,
      About,
      Work,
      Skills,
    },
  }
</script>

<style scoped>
  .section-content {
    max-width: 80rem;
  }
</style>

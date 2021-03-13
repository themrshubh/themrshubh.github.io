<template>
  <div class="container-fluid p-0 bg-light">
    <section id="hero" class="p-4 p-md-5 border-bottom border-5">
      <hero />
    </section>
    <section id="about" class="bg-danger p-4 p-md-5 border-bottom border-5">
      <about />
    </section>
    <section id="work" class="p-4 p-md-5 border-bottom border-5">
      <work />
    </section>
  </div>
</template>

<script>
  import Hero from '../components/Hero'
  import About from '../components/About'
  import Work from '../components/Work'

  export default {
    name: 'Home',

    components: {
      Hero,
      About,
      Work,
    },
  }
</script>

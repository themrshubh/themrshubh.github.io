<template>
  <div class="text-center text-dark">
    <h1 class="my-5">
      Software Developer & Graduate Student
    </h1>
    <h4 class="fw-light">
      I am a graduate student @ NC State University and I love to code.
    </h4>
    <img
      ref="lazy"
      src="../assets/images/ph/common.png"
      :data-src="require('../assets/images/display.jpg')"
      alt="A picture of Shubham Mankar"
      class="border border-5 d-block mx-auto my-5 rounded-circle rsp-dp"
    />
  </div>
</template>

<script>
  export default {
    name: 'Hero',

    mounted() {
      let img = this.$refs['lazy']
      img.src = img.getAttribute('data-src')
    },
  }
</script>

<style scoped>
  .rsp-dp {
    width: 40%;
    max-width: 250px;
    min-width: 200px;
  }
</style>

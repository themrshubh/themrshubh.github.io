<template>
  <a
    :href="url"
    class="border border-3 rounded-3 py-3 px-4 w-100 d-block text-reset text-decoration-none bg-white"
    target="_blank"
    @mouseenter="hover = true"
    @mouseleave="hover = false"
  >
    <h4 class="text-truncate">{{ title }}</h4>
    <div class="d-flex justify-content-between">
      <h5 class="fw-light">{{ lang }}</h5>
      <h5 class="fw-light">{{ year }}</h5>
    </div>
  </a>
</template>

<script>
  export default {
    props: {
      title: { type: String, default: 'Project' },
      url: { type: String, default: '#' },
      lang: { type: String, default: 'Language' },
      year: { type: String, default: 'YYYY' },
    },

    data() {
      return {
        hover: false,
      }
    },
  }
</script>

<style scoped></style>

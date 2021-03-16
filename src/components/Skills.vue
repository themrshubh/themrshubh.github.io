<template>
  <div class="text-light text-center">
    <h2 class="py-2">
      Skills
    </h2>
    <ul class="p-0 my-5">
      <li
        v-for="(icon, i) in icons"
        :key="i"
        class="tech-icon-list d-inline-block px-2 py-3"
      >
        <div class="d-inline">
          <img
            :ref="setIconRef"
            src="../assets/ph.png"
            :data-src="require(`../assets/icons/${icon}.svg`)"
            :alt="icon.toUpperCase()"
            :title="icon.toUpperCase()"
            class="tech-icon"
          />
        </div>
      </li>
    </ul>
    <div class="p-3 p-md-5 fw-light fs-4">
      These are a few technologies that I have worked with. I look forward to
      learning and adding more to this list very soon.
    </div>
  </div>
</template>

<script>
  // TODO: Add tooltips to icons
  export default {
    data() {
      return {
        iconRefs: [],
        icons: [
          'js',
          'angular',
          'firebase',
          'git',
          'go',
          'html',
          'css',
          'python',
          'vue',
          'aws',
        ],
      }
    },

    mounted() {
      let options = {
        rootMargin: '200px',
      }
      let observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return
          const img = entry.target
          const url = img.getAttribute('data-src')
          img.src = url
          observer.unobserve(img)
        })
      }, options)
      this.iconRefs.forEach((icon) => {
        observer.observe(icon)
      })
    },

    methods: {
      setIconRef(el) {
        if (el) {
          this.iconRefs.push(el)
        }
      },
    },
  }
</script>

<style scoped>
  .tech-icon-list {
    display: inline;
    list-style-type: none;
  }

  .tech-icon {
    height: 64px;
    width: 64px;
  }
</style>
